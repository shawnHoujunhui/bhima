DELIMITER $$

DROP PROCEDURE IF EXISTS `UpdateStaffingIndices`$$
CREATE PROCEDURE `UpdateStaffingIndices`(IN _dateFrom DATE, IN _dateTo DATE, IN _payroll_conf_id INT)
BEGIN
	DECLARE _id mediumint(8) unsigned;
	DECLARE _date_embauche DATE;
	DECLARE _employee_uuid, _grade_uuid, _current_staffing_indice_uuid, _last_staffing_indice_uuid BINARY(16);
	DECLARE _hiring_year, _fonction_id INT;
	DECLARE _grade_indice, _last_grade_indice, _function_indice, _grade_indice_rate DECIMAL(19,4);

	DECLARE done BOOLEAN;

	DECLARE curs1 CURSOR FOR
	-- The request should only return the employees affected by the pay period,
	-- just because two pay periods can have the same time range.
	SELECT emp.uuid, emp.grade_uuid, emp.fonction_id, emp.date_embauche
		FROM employee AS emp
		JOIN config_employee_item AS conf ON conf.employee_uuid = emp.uuid
		JOIN config_employee AS cemp ON cemp.id = conf.config_employee_id
		JOIN payroll_configuration cpay ON cpay.config_employee_id = cemp.id
		WHERE cpay.id = _payroll_conf_id;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

	SELECT (ent.base_index_growth_rate / 100) AS base_index_growth_rate INTO _grade_indice_rate FROM enterprise_setting AS ent LIMIT 1;

    OPEN curs1;
        read_loop: LOOP
        FETCH curs1 INTO _employee_uuid, _grade_uuid, _fonction_id, _date_embauche;
            IF done THEN
                LEAVE read_loop;
            END IF;
            -- anciennette
            SET _hiring_year = FLOOR(DATEDIFF(_dateTo, _date_embauche)/365);
            -- is there any staffing indice specified for the employee in this payroll config period interval ?
            -- _current_staffing_indice_uuid is the indice for this payroll config period interval
            SET _current_staffing_indice_uuid  = IFNULL((
                SELECT st.uuid
                FROM staffing_indice st
                WHERE st.employee_uuid = _employee_uuid AND (st.date BETWEEN _dateFrom AND _dateTo)
                LIMIT 1
            ), HUID('0'));

            SET _last_staffing_indice_uuid  = IFNULL((
                SELECT st.uuid
                FROM staffing_indice st
                WHERE st.employee_uuid = _employee_uuid
                ORDER BY st.created_at DESC
                LIMIT 1
            ), HUID('0'));

            SET @shouldInsert = FALSE;

            -- check if the date_embauche is in the current payroll config period interval
            SET @hiring_date = DATE(CONCAT(YEAR(_dateTo), '-', MONTH(_date_embauche), '-', DAY(_date_embauche)));
            SET @date_embauche_interval = (@hiring_date BETWEEN _dateFrom AND _dateTo);

            -- should update staffing_indice and there's no previous staffing_indice for in this payroll config period interval
            IF  ((@date_embauche_interval=1)  AND (_current_staffing_indice_uuid = HUID('0'))) THEN
                -- increase the _last_grade_indice if it exist
                IF (_last_staffing_indice_uuid <> HUID('0')) THEN
                    SET _last_grade_indice = (SELECT grade_indice FROM staffing_indice WHERE uuid = _last_staffing_indice_uuid);
                    SET _grade_indice =  _last_grade_indice + (_last_grade_indice*_grade_indice_rate);
                ELSE
                    SET _grade_indice = (SELECT IFNULL(value, 0)  FROM staffing_grade_indice WHERE grade_uuid = _grade_uuid LIMIT 1);
                    SET _grade_indice = _grade_indice + (_grade_indice*_hiring_year*_grade_indice_rate);
                END IF;
                SET @shouldInsert = TRUE;

            -- no indice has been created for the employee previously(no record in the table for him)
            -- this is used when configuring for the first time
            ELSE
                IF ((@date_embauche_interval = 0) && (_last_staffing_indice_uuid = HUID('0'))) THEN
                    SET _grade_indice = (SELECT IFNULL(value, 0)  FROM staffing_grade_indice WHERE grade_uuid = _grade_uuid LIMIT 1);
                    SET _grade_indice = _grade_indice + (_grade_indice * _hiring_year * _grade_indice_rate);
                    SET @shouldInsert = TRUE;
                END IF;
            END IF;

            IF @shouldInsert THEN
                SET _function_indice = (SELECT IFNULL(value, 0) FROM staffing_function_indice WHERE fonction_id = _fonction_id LIMIT 1);
                INSERT INTO staffing_indice(uuid, employee_uuid, grade_uuid, fonction_id, grade_indice, function_indice, date)
                VALUES(HUID(uuid()), _employee_uuid,  _grade_uuid , _fonction_id, IFNULL(ROUND(_grade_indice, 0), 0), IFNULL(_function_indice, 0), _dateTo);
            END IF;
        END LOOP;
    CLOSE curs1;
END$$


-- sum of a column of indexes (index for each employee)
DROP FUNCTION IF EXISTS `sumTotalIndex`$$
CREATE FUNCTION `sumTotalIndex`(_payroll_configuration_id INT, _indice_type VARCHAR(50)) RETURNS DECIMAL(19, 4) DETERMINISTIC
BEGIN

    DECLARE _employee_uuid BINARY(16);
    DECLARE _employee_grade_indice, totals DECIMAL(19, 4);

  SET totals  = (
    SELECT SUM(rubric_value) as 'rubric_value'
        FROM stage_payment_indice sp
        JOIN rubric_payroll r ON r.id = sp.rubric_id
        WHERE  r.indice_type = _indice_type AND  payroll_configuration_id = _payroll_configuration_id
  );

    RETURN IFNULL(totals, 1);
END$$

DROP FUNCTION IF EXISTS `getStagePaymentIndice`$$
CREATE  FUNCTION `getStagePaymentIndice`(_employee_uuid BINARY(16),
_payroll_configuration_id INT, _indice_type VARCHAR(50) ) RETURNS DECIMAL(19, 4) DETERMINISTIC
BEGIN
    return IFNULL((SELECT SUM(rubric_value) as 'rubric_value'
        FROM stage_payment_indice sp
        JOIN rubric_payroll r ON r.id = sp.rubric_id
        WHERE sp.employee_uuid = _employee_uuid AND r.indice_type = _indice_type AND
            payroll_configuration_id = _payroll_configuration_id
        LIMIT 1), 0);
END;


DROP PROCEDURE IF EXISTS `addStagePaymentIndice`$$
CREATE   PROCEDURE `addStagePaymentIndice`(
    IN _employee_uuid BINARY(16),IN _payroll_configuration_id INT(10),

    IN _indice_type VARCHAR(50), IN _value DECIMAL(19, 10)
)
BEGIN
   DECLARE _rubric_id INT;
   DECLARE _stage_payment_uuid BINARY(16);

   SELECT id INTO _rubric_id FROM rubric_payroll WHERE indice_type = _indice_type LIMIT 1;

   IF _rubric_id > 0 THEN
    SET _stage_payment_uuid = IFNULL((
        SELECT sp.uuid
        FROM stage_payment_indice sp
        JOIN rubric_payroll r ON r.id = sp.rubric_id
        WHERE sp.employee_uuid = _employee_uuid AND r.indice_type = _indice_type AND
            payroll_configuration_id = _payroll_configuration_id
        LIMIT 1), HUID('0')
    );
   IF _stage_payment_uuid <> HUID('0') THEN
    DELETE FROM stage_payment_indice  WHERE uuid = _stage_payment_uuid;
   END IF;

   INSERT INTO stage_payment_indice
    (uuid,employee_uuid, payroll_configuration_id, rubric_id, rubric_value ) VALUES
    (HUID(uuid()), _employee_uuid, _payroll_configuration_id, _rubric_id, _value);
  END IF;
END $$


DROP PROCEDURE IF EXISTS `updateIndices`$$


DELIMITER ;
