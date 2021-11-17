-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: bhima_pcima
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type_id` mediumint unsigned NOT NULL,
  `enterprise_id` smallint unsigned NOT NULL,
  `number` int unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int unsigned NOT NULL,
  `locked` tinyint unsigned DEFAULT '0',
  `hidden` tinyint unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reference_id` tinyint unsigned DEFAULT NULL,
  `cost_center_id` mediumint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_1` (`number`),
  KEY `type_id` (`type_id`),
  KEY `enterprise_id` (`enterprise_id`),
  KEY `reference_id` (`reference_id`),
  KEY `cost_center_id` (`cost_center_id`),
  CONSTRAINT `account__account_type` FOREIGN KEY (`type_id`) REFERENCES `account_type` (`id`),
  CONSTRAINT `account__cost_center` FOREIGN KEY (`cost_center_id`) REFERENCES `cost_center` (`id`),
  CONSTRAINT `account__enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`),
  CONSTRAINT `account__reference` FOREIGN KEY (`reference_id`) REFERENCES `reference` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1274 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,6,1,10,'CAPITAL',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(2,6,1,102,'CAPITAL PAR DOTATION',1,0,0,'2021-11-05 15:42:26',NULL,NULL),(3,6,1,1021,'Dotation initiale',2,0,0,'2021-11-05 15:42:26',NULL,NULL),(4,3,1,10210000,'Compte Dotation initiale',3,0,0,'2021-11-05 15:42:26',NULL,NULL),(5,6,1,1022,'Dotations complémentaires',2,0,0,'2021-11-05 15:42:26',NULL,NULL),(6,3,1,10220000,'Compte Dotations complémentaires',5,0,0,'2021-11-05 15:42:26',NULL,NULL),(7,6,1,1028,'Autres dotations',2,0,0,'2021-11-05 15:42:26',NULL,NULL),(8,3,1,10280000,'Compte Autres dotations',7,0,0,'2021-11-05 15:42:26',NULL,NULL),(9,6,1,106,'ÉCARTS DE RÉÉVALUATION',1,0,0,'2021-11-05 15:42:26',NULL,NULL),(10,6,1,1061,'Écarts de réévaluation légale',9,0,0,'2021-11-05 15:42:26',NULL,NULL),(11,3,1,10610000,'Compte Écarts de réévaluation légale',10,0,0,'2021-11-05 15:42:26',NULL,NULL),(12,6,1,1062,'Écarts de réévaluation libre',9,0,0,'2021-11-05 15:42:26',NULL,NULL),(13,3,1,10620000,'Compte Écarts de réévaluation libre',12,0,0,'2021-11-05 15:42:26',NULL,NULL),(14,6,1,12,'REPORT A NOUVEAU',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(15,6,1,121,'REPORT À NOUVEAU CRÉDITEUR',14,0,0,'2021-11-05 15:42:26',NULL,NULL),(16,6,1,1211,'REPORT À NOUVEAU CRÉDITEUR',15,0,0,'2021-11-05 15:42:26',NULL,NULL),(17,3,1,12110000,'Compte REPORT À NOUVEAU CRÉDITEUR',16,0,0,'2021-11-05 15:42:26',NULL,NULL),(18,6,1,129,'REPORT À NOUVEAU DÉBITEUR',14,0,0,'2021-11-05 15:42:26',NULL,NULL),(19,6,1,1291,'Perte nette à reporter',18,0,0,'2021-11-05 15:42:26',NULL,NULL),(20,3,1,12910000,'Compte Perte nette à reporter',19,0,0,'2021-11-05 15:42:26',NULL,NULL),(21,6,1,13,'RÉSULTAT NET DE L\'EXERCICE',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(22,6,1,131,'RÉSULTAT NET : BÉNÉFICE',21,0,0,'2021-11-05 15:42:26',NULL,NULL),(23,6,1,1311,'RÉSULTAT NET : BÉNÉFICE',22,0,0,'2021-11-05 15:42:26',NULL,NULL),(24,3,1,13110000,'Compte RÉSULTAT NET : BÉNÉFICE',23,0,0,'2021-11-05 15:42:26',NULL,NULL),(25,6,1,132,'MARGE COMMERCIALE (M.C.)',21,0,0,'2021-11-05 15:42:26',NULL,NULL),(26,6,1,133,'VALEUR AJOUTÉE (V.A.)',21,0,0,'2021-11-05 15:42:26',NULL,NULL),(27,6,1,134,'EXCÉDENT BRUT D\'EXPLOITATION (E.B.E.)',21,0,0,'2021-11-05 15:42:26',NULL,NULL),(28,6,1,135,'RÉSULTAT D\'EXPLOITATION (R.E.)',21,0,0,'2021-11-05 15:42:26',NULL,NULL),(29,6,1,136,'RÉSULTAT FINANCIER (R.F.)',21,0,0,'2021-11-05 15:42:26',NULL,NULL),(30,6,1,137,'RÉSULTAT DES ACTIVITÉS ORDINAIRES (R.A.O.)',21,0,0,'2021-11-05 15:42:26',NULL,NULL),(31,6,1,138,'RÉSULTAT HORS ACTIVITÉS ORDINAIRES (R.H.A.O.)',21,0,0,'2021-11-05 15:42:26',NULL,NULL),(32,6,1,1381,'RESULTAT DE FUSION',31,0,0,'2021-11-05 15:42:26',NULL,NULL),(33,3,1,13810000,'Compte RESULTAT DE FUSION',32,0,0,'2021-11-05 15:42:26',NULL,NULL),(34,6,1,1382,'RESULTAT D\'APPORT PARTIEL D\'ACTIF',31,0,0,'2021-11-05 15:42:26',NULL,NULL),(35,3,1,13820000,'Compte RESULTAT D\'APPORT PARTIEL D\'ACTIF',34,0,0,'2021-11-05 15:42:26',NULL,NULL),(36,6,1,1383,'RESULTAT DE SCISSION',31,0,0,'2021-11-05 15:42:26',NULL,NULL),(37,3,1,13830000,'Compte RESULTAT DE SCISSION',36,0,0,'2021-11-05 15:42:26',NULL,NULL),(38,6,1,1384,'RESULTAT DE LIQUIDATION',31,0,0,'2021-11-05 15:42:26',NULL,NULL),(39,3,1,13840000,'Compte RESULTAT DE LIQUIDATION',38,0,0,'2021-11-05 15:42:26',NULL,NULL),(40,6,1,139,'RÉSULTAT NET : PERTE',21,0,0,'2021-11-05 15:42:26',NULL,NULL),(41,6,1,14,'SUBVENTIONS D\'INVESTISSEMENT',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(42,6,1,141,'SUBVENTIONS D\'ÉQUIPEMENT A',41,0,0,'2021-11-05 15:42:26',NULL,NULL),(43,6,1,148,'AUTRES SUBVENTIONS D\'INVESTISSEMENT',41,0,0,'2021-11-05 15:42:26',NULL,NULL),(44,6,1,16,'EMPRUNTS ET DETTES ASSIMILÉES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(45,6,1,162,'EMPRUNTS ET DETTES AUPRÈS DES ÉTABLISSEMENTS DE CRÉDIT',44,0,0,'2021-11-05 15:42:26',NULL,NULL),(46,6,1,163,'AVANCES REÇUES DE L\'ÉTAT',44,0,0,'2021-11-05 15:42:26',NULL,NULL),(47,6,1,164,'AVANCES REÇUES ET COMPTES COURANTS BLOQUÉS',44,0,0,'2021-11-05 15:42:26',NULL,NULL),(48,6,1,165,'DÉPÔTS ET CAUTIONNEMENTS RECUS',44,0,0,'2021-11-05 15:42:26',NULL,NULL),(49,6,1,166,'INTÉRÊTS COURUS',44,0,0,'2021-11-05 15:42:26',NULL,NULL),(50,6,1,17,'DETTE DE LOCATION ACQUISITION',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(51,6,1,18,'DETTES LIÉES À DES PARTICIPATIONS ET COMPTES DE LIAISON DES ÉTABLISSEMENTS ET SOCIÉTÉS EN PARTICIPATION',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(52,6,1,19,'PROVISIONS FINANCIERES POUR RISQUES ET CHARGES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(53,6,1,21,'IMMOBILISATIONS INCORPORELLES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(54,6,1,22,'TERRAINS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(55,6,1,221,'TERRAINS AGRICOLES ET FORESTIERS',54,0,0,'2021-11-05 15:42:26',NULL,NULL),(56,6,1,222,'TERRAINS NUS',54,0,0,'2021-11-05 15:42:26',NULL,NULL),(57,6,1,2221,'Terrains à bâtir',56,0,0,'2021-11-05 15:42:26',NULL,NULL),(58,1,1,22210000,'Compte Terrains à bâtir',57,0,0,'2021-11-05 15:42:26',NULL,NULL),(59,6,1,2228,'Autres terrains nus',56,0,0,'2021-11-05 15:42:26',NULL,NULL),(60,1,1,22280000,'Compte Autres terrains nus',59,0,0,'2021-11-05 15:42:26',NULL,NULL),(61,6,1,223,'TERRAINS BÂTIS',54,0,0,'2021-11-05 15:42:26',NULL,NULL),(62,6,1,224,'TRAVAUX DE MISE EN VALEUR DES TERRAINS',54,0,0,'2021-11-05 15:42:26',NULL,NULL),(63,6,1,2241,'Plantation d\'arbres et d\'arbustes',62,0,0,'2021-11-05 15:42:26',NULL,NULL),(64,1,1,22410000,'Compte Plantation d\'arbres et d\'arbustes',63,0,0,'2021-11-05 15:42:26',NULL,NULL),(65,6,1,2248,'Autres travaux',62,0,0,'2021-11-05 15:42:26',NULL,NULL),(66,1,1,22480000,'Compte Autres travaux',65,0,0,'2021-11-05 15:42:26',NULL,NULL),(67,6,1,226,'TERRAINS AMÉNAGÉS',54,0,0,'2021-11-05 15:42:26',NULL,NULL),(68,6,1,2261,'Parkings',67,0,0,'2021-11-05 15:42:26',NULL,NULL),(69,1,1,22610000,'Compte Parkings',68,0,0,'2021-11-05 15:42:26',NULL,NULL),(70,6,1,227,'TERRAINS MIS EN CONCESSION',54,0,0,'2021-11-05 15:42:26',NULL,NULL),(71,6,1,228,'AUTRES TERRAINS',54,0,0,'2021-11-05 15:42:26',NULL,NULL),(72,6,1,2281,'Terrains des immeubles de placement',71,0,0,'2021-11-05 15:42:26',NULL,NULL),(73,1,1,22810000,'Compte Terrains des immeubles de placement',72,0,0,'2021-11-05 15:42:26',NULL,NULL),(74,6,1,2285,'Terrains des logements affectés au personnel',71,0,0,'2021-11-05 15:42:26',NULL,NULL),(75,1,1,22850000,'Compte Terrains des logements affectés au personnel',74,0,0,'2021-11-05 15:42:26',NULL,NULL),(76,6,1,2286,'Terrains de location acquisition',71,0,0,'2021-11-05 15:42:26',NULL,NULL),(77,1,1,22860000,'Compte Terrains de location acquisition',76,0,0,'2021-11-05 15:42:26',NULL,NULL),(78,6,1,2288,'Divers terrains',71,0,0,'2021-11-05 15:42:26',NULL,NULL),(79,1,1,22880000,'Compte Divers terrains',78,0,0,'2021-11-05 15:42:26',NULL,NULL),(80,6,1,229,'AMÉNAGEMENTS DE TERRAINS EN COURS',54,0,0,'2021-11-05 15:42:26',NULL,NULL),(81,6,1,2291,'Terrains agricoles et forestiers',80,0,0,'2021-11-05 15:42:26',NULL,NULL),(82,1,1,22910000,'Compte Terrains agricoles et forestiers',81,0,0,'2021-11-05 15:42:26',NULL,NULL),(83,6,1,2292,'Terrains nus',80,0,0,'2021-11-05 15:42:26',NULL,NULL),(84,1,1,22920000,'Compte Terrains nus',83,0,0,'2021-11-05 15:42:26',NULL,NULL),(85,6,1,2298,'Autres terrains',80,0,0,'2021-11-05 15:42:26',NULL,NULL),(86,1,1,22980000,'Compte Autres terrains',85,0,0,'2021-11-05 15:42:26',NULL,NULL),(87,6,1,23,'BÂTIMENTS, INSTALLATIONS TECHNIQUES ET AGENCEMENTS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(88,6,1,231,'BÂTIMENTS INDUSTRIELS, AGRICOLES, ADMINISTRATIFS ET COMMERCIAUX SUR SOL PROPRE',87,0,0,'2021-11-05 15:42:26',NULL,NULL),(89,6,1,2311,'Bâtiments industriels',88,0,0,'2021-11-05 15:42:26',NULL,NULL),(90,1,1,23110000,'Compte Bâtiments industriels',89,0,0,'2021-11-05 15:42:26',NULL,NULL),(91,6,1,2312,'Bâtiments agricoles',88,0,0,'2021-11-05 15:42:26',NULL,NULL),(92,1,1,23120000,'Compte Bâtiments agricoles',91,0,0,'2021-11-05 15:42:26',NULL,NULL),(93,6,1,2313,'Bâtiments administratifs et commerciaux',88,0,0,'2021-11-05 15:42:26',NULL,NULL),(94,1,1,23130000,'Compte Bâtiments administratifs et commerciaux',93,0,0,'2021-11-05 15:42:26',NULL,NULL),(95,6,1,2314,'Bâtiments affectés au logement du personnel',88,0,0,'2021-11-05 15:42:26',NULL,NULL),(96,1,1,23140000,'Compte Bâtiments affectés au logement du personnel',95,0,0,'2021-11-05 15:42:26',NULL,NULL),(97,6,1,2315,'Immeubles de placement',88,0,0,'2021-11-05 15:42:26',NULL,NULL),(98,1,1,23150000,'Compte Immeubles de placement',97,0,0,'2021-11-05 15:42:26',NULL,NULL),(99,6,1,2316,'Bâtiments de location acquisition',88,0,0,'2021-11-05 15:42:26',NULL,NULL),(100,1,1,23160000,'Compte Bâtiments de location acquisition',99,0,0,'2021-11-05 15:42:26',NULL,NULL),(101,6,1,232,'BÂTIMENTS INDUSTRIELS, AGRICOLES, ADMINISTRATIFS ET COMMERCIAUX SUR SOL D’AUTRUI',87,0,0,'2021-11-05 15:42:26',NULL,NULL),(102,6,1,2321,'Bâtiments industriels',101,0,0,'2021-11-05 15:42:26',NULL,NULL),(103,1,1,23210000,'Compte Bâtiments industriels',102,0,0,'2021-11-05 15:42:26',NULL,NULL),(104,6,1,2322,'Bâtiments agricoles',101,0,0,'2021-11-05 15:42:26',NULL,NULL),(105,1,1,23220000,'Compte Bâtiments agricoles',104,0,0,'2021-11-05 15:42:26',NULL,NULL),(106,6,1,2323,'Bâtiments administratifs et commerciaux',101,0,0,'2021-11-05 15:42:26',NULL,NULL),(107,1,1,23230000,'Compte Bâtiments administratifs et commerciaux',106,0,0,'2021-11-05 15:42:26',NULL,NULL),(108,6,1,2324,'Bâtiments affectés au logement du personnel',101,0,0,'2021-11-05 15:42:26',NULL,NULL),(109,1,1,23240000,'Compte Bâtiments affectés au logement du personnel',108,0,0,'2021-11-05 15:42:26',NULL,NULL),(110,6,1,2325,'Immeubles de placement',101,0,0,'2021-11-05 15:42:26',NULL,NULL),(111,1,1,23250000,'Compte Immeubles de placement',110,0,0,'2021-11-05 15:42:26',NULL,NULL),(112,6,1,2326,'Bâtiments de location acquisition',101,0,0,'2021-11-05 15:42:26',NULL,NULL),(113,1,1,23260000,'Compte Bâtiments de location acquisition',112,0,0,'2021-11-05 15:42:26',NULL,NULL),(114,6,1,233,'OUVRAGES D’INFRASTRUCTURE',87,0,0,'2021-11-05 15:42:26',NULL,NULL),(115,6,1,234,'AMENAGEMENT, AGENCEMENTS ET INSTALLATIONS TECHNIQUES',87,0,0,'2021-11-05 15:42:26',NULL,NULL),(116,6,1,2341,'Installations complexes spécialisées sur sol propre',115,0,0,'2021-11-05 15:42:26',NULL,NULL),(117,1,1,23410000,'Compte Installations complexes spécialisées sur sol propre',116,0,0,'2021-11-05 15:42:26',NULL,NULL),(118,1,1,23411,'Installation technique pour matériels et équipement biomédicaux',116,0,0,'2021-11-05 15:42:26',NULL,NULL),(119,1,1,23412,'Installation technique pour fabrication et analyse des médicaments',116,0,0,'2021-11-05 15:42:26',NULL,NULL),(120,1,1,23413,'Chambre froide',116,0,0,'2021-11-05 15:42:26',NULL,NULL),(121,1,1,23418,'Autres installations techniques',116,0,0,'2021-11-05 15:42:26',NULL,NULL),(122,6,1,2342,'Installations complexes spécialisées sur sol autrui',115,0,0,'2021-11-05 15:42:26',NULL,NULL),(123,1,1,23420000,'Compte Installations complexes spécialisées sur sol autrui',122,0,0,'2021-11-05 15:42:26',NULL,NULL),(124,1,1,23421,'Installation technique pour matériels et équipement biomédicaux',122,0,0,'2021-11-05 15:42:26',NULL,NULL),(125,1,1,23422,'Installation technique pour fabrication et analyse des médicaments',122,0,0,'2021-11-05 15:42:26',NULL,NULL),(126,1,1,23423,'Chambre froide',122,0,0,'2021-11-05 15:42:26',NULL,NULL),(127,1,1,23428,'Autres installations techniques',122,0,0,'2021-11-05 15:42:26',NULL,NULL),(128,6,1,2343,'Installations à caractère spécifique sur sol propre',115,0,0,'2021-11-05 15:42:26',NULL,NULL),(129,1,1,23430000,'Compte Installations à caractère spécifique sur sol propre',128,0,0,'2021-11-05 15:42:26',NULL,NULL),(130,6,1,235,'AMENAGEMENTS DE BUREAUX',87,0,0,'2021-11-05 15:42:26',NULL,NULL),(131,6,1,2351,'Installations générales',130,0,0,'2021-11-05 15:42:26',NULL,NULL),(132,1,1,23510000,'Compte Installations générales',131,0,0,'2021-11-05 15:42:26',NULL,NULL),(133,6,1,2358,'Autres Aménagements de Bureaux',130,0,0,'2021-11-05 15:42:26',NULL,NULL),(134,1,1,23580000,'Compte Autres Aménagements de Bureaux',133,0,0,'2021-11-05 15:42:26',NULL,NULL),(135,6,1,237,'BÂTIMENTS INDUSTRIELS, AGRICOLES ET COMMERCIAUX MIS EN CONCESSION',87,0,0,'2021-11-05 15:42:26',NULL,NULL),(136,6,1,238,'AUTRES INSTALLATIONS ET AGENCEMENTS',87,0,0,'2021-11-05 15:42:26',NULL,NULL),(137,6,1,239,'BÂTIMENTS, AMENAGEMENTS ET INSTALLATIONS EN COURS',87,0,0,'2021-11-05 15:42:26',NULL,NULL),(138,6,1,24,'MATÉRIEL ET OUTILLAGE INDUSTRIEL ET COMMERCIAL',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(139,6,1,241,'MATÉRIEL ET OUTILLAGE INDUSTRIEL ET COMMERCIAL',138,0,0,'2021-11-05 15:42:26',NULL,NULL),(140,6,1,2411,'Matériel industriel',139,0,0,'2021-11-05 15:42:26',NULL,NULL),(141,1,1,24110000,'Compte Matériel industriel',140,0,0,'2021-11-05 15:42:26',NULL,NULL),(142,6,1,2412,'Outillage industriel',139,0,0,'2021-11-05 15:42:26',NULL,NULL),(143,1,1,24120000,'Compte Outillage industriel',142,0,0,'2021-11-05 15:42:26',NULL,NULL),(144,6,1,2415,'Matériels et Equipement Médico-sanitaire',139,0,0,'2021-11-05 15:42:26',NULL,NULL),(145,1,1,24150000,'Compte Matériels et Equipement Médico-sanitaire',144,0,0,'2021-11-05 15:42:26',NULL,NULL),(146,6,1,2416,'Matériel et Outillage insdustriel et Commercial de location-acquisition',139,0,0,'2021-11-05 15:42:26',NULL,NULL),(147,1,1,24160000,'Compte Matériel et Outillage insdustriel et Commercial de location-acquisition',146,0,0,'2021-11-05 15:42:26',NULL,NULL),(148,6,1,2418,'Autres outillages',139,0,0,'2021-11-05 15:42:26',NULL,NULL),(149,1,1,24180000,'Compte Autres outillages',148,0,0,'2021-11-05 15:42:26',NULL,NULL),(150,1,1,24151,'Matériels médicaux sanitaires',144,0,0,'2021-11-05 15:42:26',NULL,NULL),(151,1,1,24152,'Equipements médicaux sanitaires',144,0,0,'2021-11-05 15:42:26',NULL,NULL),(152,6,1,242,'MATÉRIEL ET OUTILLAGE AGRICOLE',138,0,0,'2021-11-05 15:42:26',NULL,NULL),(153,6,1,2421,'Matériel agricole',152,0,0,'2021-11-05 15:42:26',NULL,NULL),(154,1,1,24210000,'Compte Matériel agricole',153,0,0,'2021-11-05 15:42:26',NULL,NULL),(155,6,1,2422,'Outillage agricole',152,0,0,'2021-11-05 15:42:26',NULL,NULL),(156,1,1,24220000,'Compte Outillage agricole',155,0,0,'2021-11-05 15:42:26',NULL,NULL),(157,6,1,2426,'Matériel et Outillage agricole de location-acquisition',152,0,0,'2021-11-05 15:42:26',NULL,NULL),(158,1,1,24260000,'Compte Matériel et Outillage agricole de location-acquisition',157,0,0,'2021-11-05 15:42:26',NULL,NULL),(159,6,1,243,'MATÉRIEL D’EMBALLAGE RÉCUPÉRABLE ET IDENTIFIABLE',138,0,0,'2021-11-05 15:42:26',NULL,NULL),(160,6,1,244,'MATÉRIEL ET MOBILIER',138,0,0,'2021-11-05 15:42:26',NULL,NULL),(161,6,1,2441,'Matériel de bureau',160,0,0,'2021-11-05 15:42:26',NULL,NULL),(162,1,1,24410000,'Compte Matériel de bureau',161,0,0,'2021-11-05 15:42:26',NULL,NULL),(163,6,1,2442,'Matériel informatique',160,0,0,'2021-11-05 15:42:26',NULL,NULL),(164,1,1,24420000,'Compte Matériel informatique',163,0,0,'2021-11-05 15:42:26',NULL,NULL),(165,6,1,2443,'Matériel bureautique',160,0,0,'2021-11-05 15:42:26',NULL,NULL),(166,1,1,24430000,'Compte Matériel bureautique',165,0,0,'2021-11-05 15:42:26',NULL,NULL),(167,6,1,2444,'Mobilier de bureau',160,0,0,'2021-11-05 15:42:26',NULL,NULL),(168,1,1,24440000,'Compte Mobilier de bureau',167,0,0,'2021-11-05 15:42:26',NULL,NULL),(169,6,1,2445,'Matériel et Mobilier-immeubles de placement',160,0,0,'2021-11-05 15:42:26',NULL,NULL),(170,1,1,24450000,'Compte Matériel et Mobilier-immeubles de placement',169,0,0,'2021-11-05 15:42:26',NULL,NULL),(171,6,1,2446,'Matériel et Mobilier de location acquisition',160,0,0,'2021-11-05 15:42:26',NULL,NULL),(172,1,1,24460000,'Compte Matériel et Mobilier de location acquisition',171,0,0,'2021-11-05 15:42:26',NULL,NULL),(173,6,1,2447,'Matériel et mobilier des logements du personnel',160,0,0,'2021-11-05 15:42:26',NULL,NULL),(174,1,1,24470000,'Compte Matériel et mobilier des logements du personnel',173,0,0,'2021-11-05 15:42:26',NULL,NULL),(175,6,1,245,'MATÉRIEL DE TRANSPORT',138,0,0,'2021-11-05 15:42:26',NULL,NULL),(176,6,1,2451,'Matériel automobile',175,0,0,'2021-11-05 15:42:26',NULL,NULL),(177,1,1,24510000,'Compte Matériel automobile',176,0,0,'2021-11-05 15:42:26',NULL,NULL),(178,6,1,2452,'Matériel ferroviaire',175,0,0,'2021-11-05 15:42:26',NULL,NULL),(179,1,1,24520000,'Compte Matériel ferroviaire',178,0,0,'2021-11-05 15:42:26',NULL,NULL),(180,6,1,2453,'Matériel fluvial, lagunaire',175,0,0,'2021-11-05 15:42:26',NULL,NULL),(181,1,1,24530000,'Compte Matériel fluvial, lagunaire',180,0,0,'2021-11-05 15:42:26',NULL,NULL),(182,6,1,2454,'Matériel naval',175,0,0,'2021-11-05 15:42:26',NULL,NULL),(183,1,1,24540000,'Compte Matériel naval',182,0,0,'2021-11-05 15:42:26',NULL,NULL),(184,6,1,2455,'Matériel aérien',175,0,0,'2021-11-05 15:42:26',NULL,NULL),(185,1,1,24550000,'Compte Matériel aérien',184,0,0,'2021-11-05 15:42:26',NULL,NULL),(186,6,1,2456,'Matériel de transport de location-acquisition',175,0,0,'2021-11-05 15:42:26',NULL,NULL),(187,1,1,24560000,'Compte Matériel de transport de location-acquisition',186,0,0,'2021-11-05 15:42:26',NULL,NULL),(188,6,1,2457,'Matériel hippomobile',175,0,0,'2021-11-05 15:42:26',NULL,NULL),(189,1,1,24570000,'Compte Matériel hippomobile',188,0,0,'2021-11-05 15:42:26',NULL,NULL),(190,6,1,2458,'Autres matériels de transport',175,0,0,'2021-11-05 15:42:26',NULL,NULL),(191,1,1,24580000,'Compte Autres matériels de transport',190,0,0,'2021-11-05 15:42:26',NULL,NULL),(192,6,1,246,'ACTIFS BIOLOGIQUES',138,0,0,'2021-11-05 15:42:26',NULL,NULL),(193,6,1,2461,'Cheptel, animaux de trait',192,0,0,'2021-11-05 15:42:26',NULL,NULL),(194,1,1,24610000,'Compte Cheptel, animaux de trait',193,0,0,'2021-11-05 15:42:26',NULL,NULL),(195,6,1,2462,'Cheptel, animaux reproducteurs',192,0,0,'2021-11-05 15:42:26',NULL,NULL),(196,1,1,24620000,'Compte Cheptel, animaux reproducteurs',195,0,0,'2021-11-05 15:42:26',NULL,NULL),(197,6,1,2463,'Animaux de garde',192,0,0,'2021-11-05 15:42:26',NULL,NULL),(198,1,1,24630000,'Compte Animaux de garde',197,0,0,'2021-11-05 15:42:26',NULL,NULL),(199,6,1,2465,'Plantations agricoles',192,0,0,'2021-11-05 15:42:26',NULL,NULL),(200,1,1,24650000,'Compte Plantations agricoles',199,0,0,'2021-11-05 15:42:26',NULL,NULL),(201,6,1,2468,'Autres Actifs biologiques',192,0,0,'2021-11-05 15:42:26',NULL,NULL),(202,1,1,24680000,'Compte Autres Actifs biologiques',201,0,0,'2021-11-05 15:42:26',NULL,NULL),(203,6,1,247,'AGENCEMENTS ET AMÉNAGEMENTS DU MATÉRIEL ET ACTIFS BIOLOGIQUES',138,0,0,'2021-11-05 15:42:26',NULL,NULL),(204,6,1,2471,'Agencements et aménagements du matériel',203,0,0,'2021-11-05 15:42:26',NULL,NULL),(205,1,1,24710000,'Compte Agencements et aménagements du matériel',204,0,0,'2021-11-05 15:42:26',NULL,NULL),(206,6,1,2472,'Agencements et aménagements des actifs biologiques',203,0,0,'2021-11-05 15:42:26',NULL,NULL),(207,1,1,24720000,'Compte Agencements et aménagements des actifs biologiques',206,0,0,'2021-11-05 15:42:26',NULL,NULL),(208,6,1,2478,'Autres agencements, aménagements du matériel et actifs biologiques',203,0,0,'2021-11-05 15:42:26',NULL,NULL),(209,1,1,24780000,'Compte Autres agencements, aménagements du matériel et actifs biologiques',208,0,0,'2021-11-05 15:42:26',NULL,NULL),(210,6,1,248,'AUTRES MATÉRIELS',138,0,0,'2021-11-05 15:42:26',NULL,NULL),(211,6,1,2481,'Collection et œuvres d\'arts',210,0,0,'2021-11-05 15:42:26',NULL,NULL),(212,1,1,24810000,'Compte Collection et œuvres d\'arts',211,0,0,'2021-11-05 15:42:26',NULL,NULL),(213,6,1,2488,'Divers matériels et mobiliers',210,0,0,'2021-11-05 15:42:26',NULL,NULL),(214,1,1,24880000,'Compte Divers matériels et mobiliers',213,0,0,'2021-11-05 15:42:26',NULL,NULL),(215,6,1,249,'MATÉRIELS ET ACTIFS BIOLOGIQUES EN COURS',138,0,0,'2021-11-05 15:42:26',NULL,NULL),(216,6,1,2491,'Matériel et outillage industriel et commercial',215,0,0,'2021-11-05 15:42:26',NULL,NULL),(217,1,1,24910000,'Compte Matériel et outillage industriel et commercial',216,0,0,'2021-11-05 15:42:26',NULL,NULL),(218,6,1,2492,'Matériel et outillage agricole',215,0,0,'2021-11-05 15:42:26',NULL,NULL),(219,1,1,24920000,'Compte Matériel et outillage agricole',218,0,0,'2021-11-05 15:42:26',NULL,NULL),(220,6,1,2493,'Matériel d’emballage récupérable et identifiable',215,0,0,'2021-11-05 15:42:26',NULL,NULL),(221,1,1,24930000,'Compte Matériel d’emballage récupérable et identifiable',220,0,0,'2021-11-05 15:42:26',NULL,NULL),(222,6,1,2494,'Matériel et mobilier de bureau',215,0,0,'2021-11-05 15:42:26',NULL,NULL),(223,1,1,24940000,'Compte Matériel et mobilier de bureau',222,0,0,'2021-11-05 15:42:26',NULL,NULL),(224,6,1,2495,'Matériel de transport',215,0,0,'2021-11-05 15:42:26',NULL,NULL),(225,1,1,24950000,'Compte Matériel de transport',224,0,0,'2021-11-05 15:42:26',NULL,NULL),(226,6,1,2496,'Actifs biologiques',215,0,0,'2021-11-05 15:42:26',NULL,NULL),(227,1,1,24960000,'Compte Actifs biologiques',226,0,0,'2021-11-05 15:42:26',NULL,NULL),(228,6,1,2497,'Agencements et aménagements du matériel et des Actifs biologiques',215,0,0,'2021-11-05 15:42:26',NULL,NULL),(229,1,1,24970000,'Compte Agencements et aménagements du matériel et des Actifs biologiques',228,0,0,'2021-11-05 15:42:26',NULL,NULL),(230,6,1,2498,'Autres matériels et Actifs biologiques en cours',215,0,0,'2021-11-05 15:42:26',NULL,NULL),(231,1,1,24980000,'Compte Autres matériels et Actifs biologiques en cours',230,0,0,'2021-11-05 15:42:26',NULL,NULL),(232,6,1,25,'AVANCES ET ACOMPTES VERSÉS SUR IMMOBILISATIONS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(233,6,1,251,'AVANCES ET ACOMPTES VERSÉS SUR IMMOBILISATIONS INCORPORELLES',232,0,0,'2021-11-05 15:42:26',NULL,NULL),(234,6,1,252,'AVANCES ET ACOMPTES VERSÉS SUR IMMOBILISATIONS CORPORELLES',232,0,0,'2021-11-05 15:42:26',NULL,NULL),(235,6,1,26,'TITRES DE PARTICIPATION',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(236,6,1,265,'PARTICIPATIONS DANS DES ORGANISMES PROFESSIONNELS',235,0,0,'2021-11-05 15:42:26',NULL,NULL),(237,6,1,266,'PARTS DANS DES GROUPEMENTS D’INTÉRÊT ÉCONOMIQUE (G.I.E.)',235,0,0,'2021-11-05 15:42:26',NULL,NULL),(238,6,1,268,'AUTRES TITRES DE PARTICIPATION',235,0,0,'2021-11-05 15:42:26',NULL,NULL),(239,6,1,27,'AUTRES IMMOBLISATIONS FINANCIÈRES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(240,6,1,272,'PRÊTS AU PERSONNEL',239,0,0,'2021-11-05 15:42:26',NULL,NULL),(241,6,1,2721,'Prêts immobiliers',240,0,0,'2021-11-05 15:42:26',NULL,NULL),(242,1,1,27210000,'Compte Prêts immobiliers',241,0,0,'2021-11-05 15:42:26',NULL,NULL),(243,6,1,2722,'Prêts mobiliers et d’installation',240,0,0,'2021-11-05 15:42:26',NULL,NULL),(244,1,1,27220000,'Compte Prêts mobiliers et d’installation',243,0,0,'2021-11-05 15:42:26',NULL,NULL),(245,6,1,2728,'Autres prêts au personnel',240,0,0,'2021-11-05 15:42:26',NULL,NULL),(246,1,1,27280000,'Compte Autres prêts au personnel',245,0,0,'2021-11-05 15:42:26',NULL,NULL),(247,6,1,275,'DÉPÔTS ET CAUTIONNEMENTS VERSÉS',239,0,0,'2021-11-05 15:42:26',NULL,NULL),(248,6,1,2751,'Dépôts pour loyers d’avance',247,0,0,'2021-11-05 15:42:26',NULL,NULL),(249,1,1,27510000,'Compte Dépôts pour loyers d’avance',248,0,0,'2021-11-05 15:42:26',NULL,NULL),(250,6,1,2752,'Dépôts pour l’électricité',247,0,0,'2021-11-05 15:42:26',NULL,NULL),(251,1,1,27520000,'Compte Dépôts pour l’électricité',250,0,0,'2021-11-05 15:42:26',NULL,NULL),(252,6,1,2753,'Dépôts pour l’eau',247,0,0,'2021-11-05 15:42:26',NULL,NULL),(253,1,1,27530000,'Compte Dépôts pour l’eau',252,0,0,'2021-11-05 15:42:26',NULL,NULL),(254,6,1,2754,'Dépôts pour le gaz',247,0,0,'2021-11-05 15:42:26',NULL,NULL),(255,1,1,27540000,'Compte Dépôts pour le gaz',254,0,0,'2021-11-05 15:42:26',NULL,NULL),(256,6,1,2755,'Dépôts pour le téléphone, le télex, la télécopie',247,0,0,'2021-11-05 15:42:26',NULL,NULL),(257,1,1,27550000,'Compte Dépôts pour le téléphone, le télex, la télécopie',256,0,0,'2021-11-05 15:42:26',NULL,NULL),(258,6,1,2756,'Cautionnements sur marchés publics',247,0,0,'2021-11-05 15:42:26',NULL,NULL),(259,1,1,27560000,'Compte Cautionnements sur marchés publics',258,0,0,'2021-11-05 15:42:26',NULL,NULL),(260,6,1,2757,'Cautionnements sur autres opérations',247,0,0,'2021-11-05 15:42:26',NULL,NULL),(261,1,1,27570000,'Compte Cautionnements sur autres opérations',260,0,0,'2021-11-05 15:42:26',NULL,NULL),(262,6,1,2758,'Autres dépôts et cautionnements',247,0,0,'2021-11-05 15:42:26',NULL,NULL),(263,1,1,27580000,'Compte Autres dépôts et cautionnements',262,0,0,'2021-11-05 15:42:26',NULL,NULL),(264,6,1,276,'INTÉRÊTS COURUS',239,0,0,'2021-11-05 15:42:26',NULL,NULL),(265,6,1,2762,'Prêts au personnel',264,0,0,'2021-11-05 15:42:26',NULL,NULL),(266,1,1,27620000,'Compte Prêts au personnel',265,0,0,'2021-11-05 15:42:26',NULL,NULL),(267,6,1,2765,'Dépôts et cautionnements versés',264,0,0,'2021-11-05 15:42:26',NULL,NULL),(268,1,1,27650000,'Compte Dépôts et cautionnements versés',267,0,0,'2021-11-05 15:42:26',NULL,NULL),(269,6,1,28,'AMORTISSEMENTS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(270,6,1,281,'AMORTISSEMENTS DES IMMOBILISATIONS INCORPORELLES',269,0,0,'2021-11-05 15:42:26',NULL,NULL),(271,6,1,282,'AMORTISSEMENTS DES TERRAINS',269,0,0,'2021-11-05 15:42:26',NULL,NULL),(272,6,1,283,'AMORTISSEMENTS DES BÂTIMENTS, INSTALLATIONS TECHNIQUES ET AGENCEMENTS',269,0,0,'2021-11-05 15:42:26',NULL,NULL),(273,6,1,284,'AMORTISSEMENTS DU MATÉRIEL',269,0,0,'2021-11-05 15:42:26',NULL,NULL),(274,6,1,29,'DEPRECIATION DES IMMOBILISATIONS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(275,6,1,291,'DÉPRÉCIATION DES IMMOBILISATIONS INCORPORELLES',274,0,0,'2021-11-05 15:42:26',NULL,NULL),(276,6,1,292,'DEPRECIATION DES TERRAINS',274,0,0,'2021-11-05 15:42:26',NULL,NULL),(277,6,1,293,'DÉPRÉCIATION DES BÂTIMENTS, INSTALLATIONS TECHNIQUES ET AGENCEMENTS',274,0,0,'2021-11-05 15:42:26',NULL,NULL),(278,6,1,294,'DÉPRÉCIATION DE MATÉRIEL, DU MOBILIER ET DE L\'ACTIF BIOLOGIQUE',274,0,0,'2021-11-05 15:42:26',NULL,NULL),(279,6,1,295,'DÉPRÉCIATION DES AVANCES ET ACOMPTES VERSÉS SUR IMMOBILISATIONS',274,0,0,'2021-11-05 15:42:26',NULL,NULL),(280,6,1,2951,'Dépréciation des avances et acomptes versés sur immobilisations incorporelles',279,0,0,'2021-11-05 15:42:26',NULL,NULL),(281,1,1,29510000,'Compte Dépréciation des avances et acomptes versés sur immobilisations incorporelles',280,0,0,'2021-11-05 15:42:26',NULL,NULL),(282,6,1,2952,'Dépréciation des avances et acomptes versés sur immobilisations corporelles',279,0,0,'2021-11-05 15:42:26',NULL,NULL),(283,1,1,29520000,'Compte Dépréciation des avances et acomptes versés sur immobilisations corporelles',282,0,0,'2021-11-05 15:42:26',NULL,NULL),(284,6,1,296,'Dépréciation des titres de particiapation',274,0,0,'2021-11-05 15:42:26',NULL,NULL),(285,6,1,2965,'Dépréciation des participations dans des organismes professionnels',284,0,0,'2021-11-05 15:42:26',NULL,NULL),(286,1,1,29650000,'Compte Dépréciation des participations dans des organismes professionnels',285,0,0,'2021-11-05 15:42:26',NULL,NULL),(287,6,1,2966,'Dépréciation des parts dans des GIE',284,0,0,'2021-11-05 15:42:26',NULL,NULL),(288,1,1,29660000,'Compte Dépréciation des parts dans des GIE',287,0,0,'2021-11-05 15:42:26',NULL,NULL),(289,6,1,2968,'Dépréciation des autres titres de participation',284,0,0,'2021-11-05 15:42:26',NULL,NULL),(290,1,1,29680000,'Compte Dépréciation des autres titres de participation',289,0,0,'2021-11-05 15:42:26',NULL,NULL),(291,6,1,297,'DÉPRÉCIATION DES AUTRES IMMOBILISATIONS FINANCIÈRES',274,0,0,'2021-11-05 15:42:26',NULL,NULL),(292,6,1,31,'MARCHANDISES (Stocks produits pharmaceutiques et intrants)',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(293,6,1,311,'MARCHANDISES A (Produits pharmaceutiques)',292,0,0,'2021-11-05 15:42:26',NULL,NULL),(294,6,1,3111,'Médicaments',293,0,0,'2021-11-05 15:42:26',NULL,NULL),(295,1,1,31110000,'Compte Médicaments',294,0,0,'2021-11-05 15:42:26',NULL,NULL),(296,6,1,3112,'Petits matériels médicaux',293,0,0,'2021-11-05 15:42:26',NULL,NULL),(297,1,1,31120000,'Compte Petits matériels médicaux',296,0,0,'2021-11-05 15:42:26',NULL,NULL),(298,6,1,3113,'Kits opératoires',293,0,0,'2021-11-05 15:42:26',NULL,NULL),(299,1,1,31130000,'Compte Kits opératoires',298,0,0,'2021-11-05 15:42:26',NULL,NULL),(300,6,1,3114,'Produits anesthésiques',293,0,0,'2021-11-05 15:42:26',NULL,NULL),(301,1,1,31140000,'Compte Produits anesthésiques',300,0,0,'2021-11-05 15:42:26',NULL,NULL),(302,6,1,312,'MARCHANDISES B (Intrants spécifiques)',292,0,0,'2021-11-05 15:42:26',NULL,NULL),(303,6,1,3121,'Formol',302,0,0,'2021-11-05 15:42:26',NULL,NULL),(304,1,1,31210000,'Compte Formol',303,0,0,'2021-11-05 15:42:26',NULL,NULL),(305,6,1,3122,'Contraceptifs',302,0,0,'2021-11-05 15:42:26',NULL,NULL),(306,1,1,31220000,'Compte Contraceptifs',305,0,0,'2021-11-05 15:42:26',NULL,NULL),(307,6,1,3123,'Produits de l\'imagerie',302,0,0,'2021-11-05 15:42:26',NULL,NULL),(308,1,1,31230000,'Compte Produits de l\'imagerie',307,0,0,'2021-11-05 15:42:26',NULL,NULL),(309,6,1,3124,'Oxygène',302,0,0,'2021-11-05 15:42:26',NULL,NULL),(310,1,1,31240000,'Compte Oxygène',309,0,0,'2021-11-05 15:42:26',NULL,NULL),(311,6,1,3125,'Intrants sécurité transfusionnelle',302,0,0,'2021-11-05 15:42:26',NULL,NULL),(312,1,1,31250000,'Compte Intrants sécurité transfusionnelle',311,0,0,'2021-11-05 15:42:26',NULL,NULL),(313,6,1,3126,'Vaccin antirabique',302,0,0,'2021-11-05 15:42:26',NULL,NULL),(314,1,1,31260000,'Compte Vaccin antirabique',313,0,0,'2021-11-05 15:42:26',NULL,NULL),(315,6,1,3128,'Autres intrants spécifiques',302,0,0,'2021-11-05 15:42:26',NULL,NULL),(316,1,1,31280000,'Compte Autres intrants spécifiques',315,0,0,'2021-11-05 15:42:26',NULL,NULL),(317,6,1,313,'ACTIFS BIOLOGIQUES',292,0,0,'2021-11-05 15:42:26',NULL,NULL),(318,6,1,3131,'Animaux',317,0,0,'2021-11-05 15:42:26',NULL,NULL),(319,1,1,31310000,'Compte Animaux',318,0,0,'2021-11-05 15:42:26',NULL,NULL),(320,6,1,3132,'Végétaux',317,0,0,'2021-11-05 15:42:26',NULL,NULL),(321,1,1,31320000,'Compte Végétaux',320,0,0,'2021-11-05 15:42:26',NULL,NULL),(322,6,1,314,'MARCHANDISES C (Imprimés, emballages et autres)',292,0,0,'2021-11-05 15:42:26',NULL,NULL),(323,6,1,3141,'Imprimés',322,0,0,'2021-11-05 15:42:26',NULL,NULL),(324,1,1,31410000,'Compte Imprimés',323,0,0,'2021-11-05 15:42:26',NULL,NULL),(325,6,1,3142,'Emballages',322,0,0,'2021-11-05 15:42:26',NULL,NULL),(326,1,1,31420000,'Compte Emballages',325,0,0,'2021-11-05 15:42:26',NULL,NULL),(327,6,1,3148,'Autres',322,0,0,'2021-11-05 15:42:26',NULL,NULL),(328,1,1,31480000,'Compte Autres',327,0,0,'2021-11-05 15:42:26',NULL,NULL),(329,6,1,318,'MARCHANDISES HORS ACTIVITÉS ORDINAIRES (H.A.O.)',292,0,0,'2021-11-05 15:42:26',NULL,NULL),(330,6,1,32,'MATIÈRES PREMIÈRES ET FOURNITURES LIÉES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(331,6,1,321,'MATIÈRES Pour fabrication médicaments',330,0,0,'2021-11-05 15:42:26',NULL,NULL),(332,6,1,322,'MATIÈRES Pour fabrication réactifs et autres',330,0,0,'2021-11-05 15:42:26',NULL,NULL),(333,6,1,323,'FOURNITURES (A,B)',330,0,0,'2021-11-05 15:42:26',NULL,NULL),(334,6,1,33,'AUTRES APPROVISIONNEMENTS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(335,6,1,331,'MATIÈRES CONSOMMABLES',334,0,0,'2021-11-05 15:42:26',NULL,NULL),(336,6,1,3311,'Carburant et lubrifiants',335,0,0,'2021-11-05 15:42:26',NULL,NULL),(337,1,1,33110000,'Compte Carburant et lubrifiants',336,0,0,'2021-11-05 15:42:26',NULL,NULL),(338,6,1,3312,'Pétrole',335,0,0,'2021-11-05 15:42:26',NULL,NULL),(339,1,1,33120000,'Compte Pétrole',338,0,0,'2021-11-05 15:42:26',NULL,NULL),(340,6,1,3314,'Produits d\'entretien',335,0,0,'2021-11-05 15:42:26',NULL,NULL),(341,1,1,33140000,'Compte Produits d\'entretien',340,0,0,'2021-11-05 15:42:26',NULL,NULL),(342,6,1,3318,'Autres combustibles',335,0,0,'2021-11-05 15:42:26',NULL,NULL),(343,1,1,33180000,'Compte Autres combustibles',342,0,0,'2021-11-05 15:42:26',NULL,NULL),(344,6,1,332,'FOURNITURES D\'ATELIER ET D\'USINE',334,0,0,'2021-11-05 15:42:26',NULL,NULL),(345,6,1,3321,'Matériels de plomberie',344,0,0,'2021-11-05 15:42:26',NULL,NULL),(346,1,1,33210000,'Compte Matériels de plomberie',345,0,0,'2021-11-05 15:42:26',NULL,NULL),(347,6,1,3322,'Matériaux de construction',344,0,0,'2021-11-05 15:42:26',NULL,NULL),(348,1,1,33220000,'Compte Matériaux de construction',347,0,0,'2021-11-05 15:42:26',NULL,NULL),(349,6,1,3328,'Autres fournitures d\'atelier et d\'usine',344,0,0,'2021-11-05 15:42:26',NULL,NULL),(350,1,1,33280000,'Compte Autres fournitures d\'atelier et d\'usine',349,0,0,'2021-11-05 15:42:26',NULL,NULL),(351,6,1,333,'FOURNITURES DE MAGASIN',334,0,0,'2021-11-05 15:42:26',NULL,NULL),(352,6,1,3331,'Pièces de rechange et accessoires auto',351,0,0,'2021-11-05 15:42:26',NULL,NULL),(353,1,1,33310000,'Compte Pièces de rechange et accessoires auto',352,0,0,'2021-11-05 15:42:26',NULL,NULL),(354,6,1,3332,'Denrées alimentaires',351,0,0,'2021-11-05 15:42:26',NULL,NULL),(355,1,1,33320000,'Compte Denrées alimentaires',354,0,0,'2021-11-05 15:42:26',NULL,NULL),(356,6,1,3338,'Autres fournitures de magasin',351,0,0,'2021-11-05 15:42:26',NULL,NULL),(357,1,1,33380000,'Compte Autres fournitures de magasin',356,0,0,'2021-11-05 15:42:26',NULL,NULL),(358,6,1,334,'FOURNITURES DE BUREAU',334,0,0,'2021-11-05 15:42:26',NULL,NULL),(359,6,1,335,'EMBALLAGES',334,0,0,'2021-11-05 15:42:26',NULL,NULL),(360,6,1,3351,'Emballages perdus',359,0,0,'2021-11-05 15:42:26',NULL,NULL),(361,1,1,33510000,'Compte Emballages perdus',360,0,0,'2021-11-05 15:42:26',NULL,NULL),(362,6,1,3352,'Emballages récupérables non identifiables',359,0,0,'2021-11-05 15:42:26',NULL,NULL),(363,1,1,33520000,'Compte Emballages récupérables non identifiables',362,0,0,'2021-11-05 15:42:26',NULL,NULL),(364,6,1,3353,'Emballages à usage mixte',359,0,0,'2021-11-05 15:42:26',NULL,NULL),(365,1,1,33530000,'Compte Emballages à usage mixte',364,0,0,'2021-11-05 15:42:26',NULL,NULL),(366,6,1,3358,'Autres emballages',359,0,0,'2021-11-05 15:42:26',NULL,NULL),(367,1,1,33580000,'Compte Autres emballages',366,0,0,'2021-11-05 15:42:26',NULL,NULL),(368,6,1,338,'AUTRES MATIÈRES',334,0,0,'2021-11-05 15:42:26',NULL,NULL),(369,6,1,3381,'Autres Vaccins',368,0,0,'2021-11-05 15:42:26',NULL,NULL),(370,1,1,33810000,'Compte Autres Vaccins',369,0,0,'2021-11-05 15:42:26',NULL,NULL),(371,6,1,3382,'Réactifs de labo',368,0,0,'2021-11-05 15:42:26',NULL,NULL),(372,1,1,33820000,'Compte Réactifs de labo',371,0,0,'2021-11-05 15:42:26',NULL,NULL),(373,6,1,34,'PRODUITS EN COURS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(374,6,1,341,'PRODUITS EN COURS',373,0,0,'2021-11-05 15:42:26',NULL,NULL),(375,6,1,342,'TRAVAUX EN COURS',373,0,0,'2021-11-05 15:42:26',NULL,NULL),(376,6,1,343,'PRODUITS INTERMÉDIAIRES EN COURS',373,0,0,'2021-11-05 15:42:26',NULL,NULL),(377,6,1,344,'PRODUITS RÉSIDUELS EN COURS',373,0,0,'2021-11-05 15:42:26',NULL,NULL),(378,6,1,35,'SERVICES EN COURS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(379,6,1,351,'ÉTUDES EN COURS',378,0,0,'2021-11-05 15:42:26',NULL,NULL),(380,6,1,352,'PRESTATIONS DE SERVICES EN COURS',378,0,0,'2021-11-05 15:42:26',NULL,NULL),(381,6,1,36,'PRODUITS FINIS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(382,6,1,37,'PRODUITS INTERMÉDIAIRES ET RÉSIDUELS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(383,6,1,371,'PRODUITS INTERMÉDIAIRES',382,0,0,'2021-11-05 15:42:26',NULL,NULL),(384,6,1,372,'PRODUITS RÉSIDUELS',382,0,0,'2021-11-05 15:42:26',NULL,NULL),(385,6,1,3721,'Déchets',384,0,0,'2021-11-05 15:42:26',NULL,NULL),(386,1,1,37210000,'Compte Déchets',385,0,0,'2021-11-05 15:42:26',NULL,NULL),(387,6,1,3722,'Rebuts',384,0,0,'2021-11-05 15:42:26',NULL,NULL),(388,1,1,37220000,'Compte Rebuts',387,0,0,'2021-11-05 15:42:26',NULL,NULL),(389,6,1,3723,'Matières de Récupération',384,0,0,'2021-11-05 15:42:26',NULL,NULL),(390,1,1,37230000,'Compte Matières de Récupération',389,0,0,'2021-11-05 15:42:26',NULL,NULL),(391,6,1,373,'ACTIFS BIOLOGIQUES',382,0,0,'2021-11-05 15:42:26',NULL,NULL),(392,6,1,38,'STOCKS EN COURS DE ROUTE, EN CONSIGNATION OU EN DÉPÔT',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(393,6,1,381,'MARCHANDISES EN COURS DE ROUTE',392,0,0,'2021-11-05 15:42:26',NULL,NULL),(394,6,1,382,'MATIÈRES PREMIÈRES ET FOURNITURES LIÉES EN COURS DE ROUTE',392,0,0,'2021-11-05 15:42:26',NULL,NULL),(395,6,1,383,'AUTRES APPROVISIONNEMENTS EN COURS DE ROUTE',392,0,0,'2021-11-05 15:42:26',NULL,NULL),(396,6,1,386,'PRODUITS FINIS EN COURS DE ROUTE',392,0,0,'2021-11-05 15:42:26',NULL,NULL),(397,6,1,387,'STOCK EN CONSIGNATION OU EN DÉPÔT',392,0,0,'2021-11-05 15:42:26',NULL,NULL),(398,6,1,3871,'Stock en consignation',397,0,0,'2021-11-05 15:42:26',NULL,NULL),(399,1,1,38710000,'Compte Stock en consignation',398,0,0,'2021-11-05 15:42:26',NULL,NULL),(400,6,1,3872,'Stock en dépôt',397,0,0,'2021-11-05 15:42:26',NULL,NULL),(401,1,1,38720000,'Compte Stock en dépôt',400,0,0,'2021-11-05 15:42:26',NULL,NULL),(402,6,1,388,'STOCK PROVENANT D\'IMMOBILISATIONS MISES HORS SERVICE OU AU REBUT',392,0,0,'2021-11-05 15:42:26',NULL,NULL),(403,6,1,39,'DÉPRÉCIATIONS DES STOCKS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(404,6,1,391,'DÉPRÉCIATIONS DES STOCKS DE MARCHANDISES (Produits pharmaceutiques)',403,0,0,'2021-11-05 15:42:26',NULL,NULL),(405,6,1,3911,'Dépréciation des stocks des produits pharmaceutiques',404,0,0,'2021-11-05 15:42:26',NULL,NULL),(406,1,1,39110000,'Compte Dépréciation des stocks des produits pharmaceutiques',405,0,0,'2021-11-05 15:42:26',NULL,NULL),(407,6,1,3912,'Dépréciation des stocks des intrants spécifiques',404,0,0,'2021-11-05 15:42:26',NULL,NULL),(408,1,1,39120000,'Compte Dépréciation des stocks des intrants spécifiques',407,0,0,'2021-11-05 15:42:26',NULL,NULL),(409,6,1,3913,'Dépréciation des stocks des imprimés, emballages et autres',404,0,0,'2021-11-05 15:42:26',NULL,NULL),(410,1,1,39130000,'Compte Dépréciation des stocks des imprimés, emballages et autres',409,0,0,'2021-11-05 15:42:26',NULL,NULL),(411,6,1,392,'DÉPRÉCIATIONS DES STOCKS DE MATIÈRES PREMIÈRES ET FOURNITURES LIÉES',403,0,0,'2021-11-05 15:42:26',NULL,NULL),(412,6,1,3921,'Dépréciation des stocks de matières premières liées à la fabrication des médicaments',411,0,0,'2021-11-05 15:42:26',NULL,NULL),(413,1,1,39210000,'Compte Dépréciation des stocks de matières premières liées à la fabrication des médicaments',412,0,0,'2021-11-05 15:42:26',NULL,NULL),(414,6,1,3922,'Dépréciation des stocks de matières premières liées à la fabrication des réactifs et intrants',411,0,0,'2021-11-05 15:42:26',NULL,NULL),(415,1,1,39220000,'Compte Dépréciation des stocks de matières premières liées à la fabrication des réactifs et intrants',414,0,0,'2021-11-05 15:42:26',NULL,NULL),(416,6,1,3923,'Dépréciation des stocks de fournitures liées',411,0,0,'2021-11-05 15:42:26',NULL,NULL),(417,1,1,39230000,'Compte Dépréciation des stocks de fournitures liées',416,0,0,'2021-11-05 15:42:26',NULL,NULL),(418,6,1,393,'DÉPRÉCIATIONS DES STOCKS D\'AUTRES APPOVISIONNEMENTS',403,0,0,'2021-11-05 15:42:26',NULL,NULL),(419,6,1,3931,'Dépréciation des stocks de matières premières consommables',418,0,0,'2021-11-05 15:42:26',NULL,NULL),(420,1,1,39310000,'Compte Dépréciation des stocks de matières premières consommables',419,0,0,'2021-11-05 15:42:26',NULL,NULL),(421,6,1,3932,'Dépréciation des stocks de fournitures d\'atelier et d\'usine',418,0,0,'2021-11-05 15:42:26',NULL,NULL),(422,1,1,39320000,'Compte Dépréciation des stocks de fournitures d\'atelier et d\'usine',421,0,0,'2021-11-05 15:42:26',NULL,NULL),(423,6,1,3933,'Dépréciation des stocks de fournitures des magasins',418,0,0,'2021-11-05 15:42:26',NULL,NULL),(424,1,1,39330000,'Compte Dépréciation des stocks de fournitures des magasins',423,0,0,'2021-11-05 15:42:26',NULL,NULL),(425,6,1,3934,'Dépréciation des stocks de fournitures de bureau',418,0,0,'2021-11-05 15:42:26',NULL,NULL),(426,1,1,39340000,'Compte Dépréciation des stocks de fournitures de bureau',425,0,0,'2021-11-05 15:42:26',NULL,NULL),(427,6,1,3935,'Dépréciation des stocks des emballages',418,0,0,'2021-11-05 15:42:26',NULL,NULL),(428,1,1,39350000,'Compte Dépréciation des stocks des emballages',427,0,0,'2021-11-05 15:42:26',NULL,NULL),(429,6,1,394,'DÉPRÉCIATIONS DES PRODUCTIONS EN COURS',403,0,0,'2021-11-05 15:42:26',NULL,NULL),(430,6,1,395,'DÉPRÉCIATIONS DES SERVICES EN COURS',403,0,0,'2021-11-05 15:42:26',NULL,NULL),(431,6,1,396,'DÉPRÉCIATIONS DES STOCKS DE PRODUITS FINIS',403,0,0,'2021-11-05 15:42:26',NULL,NULL),(432,6,1,397,'DÉPRÉCIATIONS DES STOCKS DE PRODUITS INTERMÉDIAIRES ET RÉSIDUELS',403,0,0,'2021-11-05 15:42:26',NULL,NULL),(433,6,1,398,'DÉPRÉCIATIONS DES STOCKS EN COURS DE ROUTE, EN CONSIGNATION OU EN DÉPÔT',403,0,0,'2021-11-05 15:42:26',NULL,NULL),(434,6,1,40,'FOURNISSEURS ET COMPTES RATTACHÉS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(435,6,1,401,'FOURNISSEURS, DETTES EN COMPTE',434,0,0,'2021-11-05 15:42:26',NULL,NULL),(436,6,1,4011,'Fournisseurs',435,0,0,'2021-11-05 15:42:26',NULL,NULL),(437,2,1,40110000,'Compte Fournisseurs',436,0,0,'2021-11-05 15:42:26',NULL,NULL),(438,1,1,40111,'Fournisseurs institutions sanitaires',436,0,0,'2021-11-05 15:42:26',NULL,NULL),(439,1,1,40111010,'Bureau Central de la ZS (BCZ)',436,0,0,'2021-11-05 15:42:26',NULL,NULL),(440,1,1,40111011,'Central de Distribution Régional (CDR)',436,0,0,'2021-11-05 15:42:26',NULL,NULL),(441,1,1,40118,'Autres fournisseurs',436,0,0,'2021-11-05 15:42:26',NULL,NULL),(442,6,1,4013,'Fournisseurs sous-traitants',435,0,0,'2021-11-05 15:42:26',NULL,NULL),(443,2,1,40130000,'Compte Fournisseurs sous-traitants',442,0,0,'2021-11-05 15:42:26',NULL,NULL),(444,6,1,4017,'Fournisseur, retenues de garantie',435,0,0,'2021-11-05 15:42:26',NULL,NULL),(445,2,1,40170000,'Compte Fournisseur, retenues de garantie',444,0,0,'2021-11-05 15:42:26',NULL,NULL),(446,6,1,402,'FOURNISSEURS, EFFETS À PAYER',434,0,0,'2021-11-05 15:42:26',NULL,NULL),(447,6,1,4021,'Fournisseurs, Effets à payer',446,0,0,'2021-11-05 15:42:26',NULL,NULL),(448,2,1,40210000,'Compte Fournisseurs, Effets à payer',447,0,0,'2021-11-05 15:42:26',NULL,NULL),(449,6,1,4023,'Fournisseurs sous-traitants, Effets à payer',446,0,0,'2021-11-05 15:42:26',NULL,NULL),(450,2,1,40230000,'Compte Fournisseurs sous-traitants, Effets à payer',449,0,0,'2021-11-05 15:42:26',NULL,NULL),(451,6,1,404,'FOURNISSEURS DETTES EN COMPTE, IMMOBILISATIONS INCORPORELLES',434,0,0,'2021-11-05 15:42:26',NULL,NULL),(452,6,1,4041,'Fournisseurs dettes en compte, immobilisations incorporelles',451,0,0,'2021-11-05 15:42:26',NULL,NULL),(453,2,1,40410000,'Compte Fournisseurs dettes en compte, immobilisations incorporelles',452,0,0,'2021-11-05 15:42:26',NULL,NULL),(454,6,1,4042,'Fournisseurs dettes en compte, immobilisations corporelles',451,0,0,'2021-11-05 15:42:26',NULL,NULL),(455,2,1,40420000,'Compte Fournisseurs dettes en compte, immobilisations corporelles',454,0,0,'2021-11-05 15:42:26',NULL,NULL),(456,6,1,4046,'Fournisseurs effet à payer, immobilisations incorporelles',451,0,0,'2021-11-05 15:42:26',NULL,NULL),(457,2,1,40460000,'Compte Fournisseurs effet à payer, immobilisations incorporelles',456,0,0,'2021-11-05 15:42:26',NULL,NULL),(458,6,1,4047,'Fournisseurs effet à payer, immobilisations corporelles',451,0,0,'2021-11-05 15:42:26',NULL,NULL),(459,2,1,40470000,'Compte Fournisseurs effet à payer, immobilisations corporelles',458,0,0,'2021-11-05 15:42:26',NULL,NULL),(460,6,1,408,'FOURNISSEURS, FACTURES NON PARVENUES',434,0,0,'2021-11-05 15:42:26',NULL,NULL),(461,6,1,4081,'Fournisseurs (Institutions sanitaires et autres)',460,0,0,'2021-11-05 15:42:26',NULL,NULL),(462,2,1,40810000,'Compte Fournisseurs (Institutions sanitaires et autres)',461,0,0,'2021-11-05 15:42:26',NULL,NULL),(463,6,1,4083,'Fournisseurs sous-traitants',460,0,0,'2021-11-05 15:42:26',NULL,NULL),(464,2,1,40830000,'Compte Fournisseurs sous-traitants',463,0,0,'2021-11-05 15:42:26',NULL,NULL),(465,6,1,4086,'Fournisseurs, intérêts courus',460,0,0,'2021-11-05 15:42:26',NULL,NULL),(466,2,1,40860000,'Compte Fournisseurs, intérêts courus',465,0,0,'2021-11-05 15:42:26',NULL,NULL),(467,6,1,409,'FOURNISSEURS DÉBITEURS',434,0,0,'2021-11-05 15:42:26',NULL,NULL),(468,6,1,4091,'Fournisseurs avances et acomptes versés',467,0,0,'2021-11-05 15:42:26',NULL,NULL),(469,2,1,40910000,'Compte Fournisseurs avances et acomptes versés',468,0,0,'2021-11-05 15:42:26',NULL,NULL),(470,6,1,4093,'Fournisseurs sous-traitants avances et acomptes versés',467,0,0,'2021-11-05 15:42:26',NULL,NULL),(471,2,1,40930000,'Compte Fournisseurs sous-traitants avances et acomptes versés',470,0,0,'2021-11-05 15:42:26',NULL,NULL),(472,6,1,4094,'Fournisseurs créances pour emballages et matériels à rendre',467,0,0,'2021-11-05 15:42:26',NULL,NULL),(473,2,1,40940000,'Compte Fournisseurs créances pour emballages et matériels à rendre',472,0,0,'2021-11-05 15:42:26',NULL,NULL),(474,6,1,4098,'Fournisseurs Rabais, Remises, Ristournes et autres avoirs à obtenir',467,0,0,'2021-11-05 15:42:26',NULL,NULL),(475,2,1,40980000,'Compte Fournisseurs Rabais, Remises, Ristournes et autres avoirs à obtenir',474,0,0,'2021-11-05 15:42:26',NULL,NULL),(476,6,1,41,'CLIENTS ET COMPTES RATTACHÉS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(477,6,1,411,'CLIENTS',476,0,0,'2021-11-05 15:42:26',NULL,NULL),(478,6,1,4111,'Clients',477,0,0,'2021-11-05 15:42:26',NULL,NULL),(479,1,1,41110000,'Compte Clients',478,0,0,'2021-11-05 15:42:26',NULL,NULL),(480,1,1,41111,'Clients payants Cash',478,0,0,'2021-11-05 15:42:26',NULL,NULL),(481,1,1,41112,'Clients conventionnés',478,0,0,'2021-11-05 15:42:26',NULL,NULL),(482,1,1,41113,'Clients mutuelles de santé',478,0,0,'2021-11-05 15:42:26',NULL,NULL),(483,1,1,41114,'Client-Personnel',478,0,0,'2021-11-05 15:42:26',NULL,NULL),(484,1,1,41118,'Autres clients',478,0,0,'2021-11-05 15:42:26',NULL,NULL),(485,1,1,41118101,'Client Indigents',478,0,0,'2021-11-05 15:42:26',NULL,NULL),(486,1,1,41118102,'Client Gage à réaliser',478,0,0,'2021-11-05 15:42:26',NULL,NULL),(487,1,1,41118103,'Client hypothèque à réaliser',478,0,0,'2021-11-05 15:42:26',NULL,NULL),(488,1,1,41118104,'Client paiement en nature',478,0,0,'2021-11-05 15:42:26',NULL,NULL),(489,6,1,4114,'Clients, État et Collectivités publiques',477,0,0,'2021-11-05 15:42:26',NULL,NULL),(490,1,1,41140000,'Compte Clients, État et Collectivités publiques',489,0,0,'2021-11-05 15:42:26',NULL,NULL),(491,6,1,4115,'Clients, organismes internationaux',477,0,0,'2021-11-05 15:42:26',NULL,NULL),(492,1,1,41150000,'Compte Clients, organismes internationaux',491,0,0,'2021-11-05 15:42:26',NULL,NULL),(493,6,1,4117,'Client, retenues de garantie',477,0,0,'2021-11-05 15:42:26',NULL,NULL),(494,1,1,41170000,'Compte Client, retenues de garantie',493,0,0,'2021-11-05 15:42:26',NULL,NULL),(495,6,1,412,'CLIENTS, ÉFFETS À RECEVOIR EN PORTEFEUILLE',476,0,0,'2021-11-05 15:42:26',NULL,NULL),(496,6,1,4121,'Clients, Effets à recevoir',495,0,0,'2021-11-05 15:42:26',NULL,NULL),(497,1,1,41210000,'Compte Clients, Effets à recevoir',496,0,0,'2021-11-05 15:42:26',NULL,NULL),(498,6,1,4124,'État et Collectivités publiques, Effets à recevoir',495,0,0,'2021-11-05 15:42:26',NULL,NULL),(499,1,1,41240000,'Compte État et Collectivités publiques, Effets à recevoir',498,0,0,'2021-11-05 15:42:26',NULL,NULL),(500,6,1,4125,'Organismes Internationaux, Effets à recevoir',495,0,0,'2021-11-05 15:42:26',NULL,NULL),(501,1,1,41250000,'Compte Organismes Internationaux, Effets à recevoir',500,0,0,'2021-11-05 15:42:26',NULL,NULL),(502,6,1,414,'CRÉANCES SUR CESSIONS COURANTES D\'IMMOBILISATIONS',476,0,0,'2021-11-05 15:42:26',NULL,NULL),(503,6,1,415,'CLIENTS, ÉFFETS ESCOMPTÉS NON ÉCHUS',476,0,0,'2021-11-05 15:42:26',NULL,NULL),(504,6,1,416,'CRÉANCES CLIENTS LITIGIEUSES OU DOUTEUSES',476,0,0,'2021-11-05 15:42:26',NULL,NULL),(505,6,1,418,'CLIENTS, PRODUITS À RECEVOIR',476,0,0,'2021-11-05 15:42:26',NULL,NULL),(506,6,1,419,'CLIENTS CRÉDITEURS',476,0,0,'2021-11-05 15:42:26',NULL,NULL),(507,6,1,42,'PERSONNEL',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(508,6,1,421,'PERSONNEL, AVANCES ET ACOMPTES',507,0,0,'2021-11-05 15:42:26',NULL,NULL),(509,6,1,4211,'Personnel, avances',508,0,0,'2021-11-05 15:42:26',NULL,NULL),(510,1,1,42110000,'Compte Personnel, avances',509,0,0,'2021-11-05 15:42:26',NULL,NULL),(511,6,1,4212,'Personnel, acomptes',508,0,0,'2021-11-05 15:42:26',NULL,NULL),(512,1,1,42120000,'Compte Personnel, acomptes',511,0,0,'2021-11-05 15:42:26',NULL,NULL),(513,6,1,4213,'Frais avances et fournitures au personnel',508,0,0,'2021-11-05 15:42:26',NULL,NULL),(514,1,1,42130000,'Compte Frais avances et fournitures au personnel',513,0,0,'2021-11-05 15:42:26',NULL,NULL),(515,6,1,422,'PERSONNEL, RÉMUNÉRATIONS DUES',507,0,0,'2021-11-05 15:42:26',NULL,NULL),(516,6,1,423,'PERSONNEL, OPPOSITIONS, SAISIES-ARRÊTS',507,0,0,'2021-11-05 15:42:26',NULL,NULL),(517,6,1,424,'PERSONNEL, OEUVRES SOCIALES INTERNES',507,0,0,'2021-11-05 15:42:26',NULL,NULL),(518,6,1,4241,'Assistance médicale',517,0,0,'2021-11-05 15:42:26',NULL,NULL),(519,1,1,42410000,'Compte Assistance médicale',518,0,0,'2021-11-05 15:42:26',NULL,NULL),(520,6,1,4242,'Allocations familiales',517,0,0,'2021-11-05 15:42:26',NULL,NULL),(521,1,1,42420000,'Compte Allocations familiales',520,0,0,'2021-11-05 15:42:26',NULL,NULL),(522,6,1,4245,'Organismes sociaux rattachés à l\'entité',517,0,0,'2021-11-05 15:42:26',NULL,NULL),(523,1,1,42450000,'Compte Organismes sociaux rattachés à l\'entité',522,0,0,'2021-11-05 15:42:26',NULL,NULL),(524,6,1,4248,'Autres œuvres sociales internes',517,0,0,'2021-11-05 15:42:26',NULL,NULL),(525,1,1,42480000,'Compte Autres œuvres sociales internes',524,0,0,'2021-11-05 15:42:26',NULL,NULL),(526,6,1,425,'REPRÉSENTANTS DU PERSONNEL',507,0,0,'2021-11-05 15:42:26',NULL,NULL),(527,6,1,4251,'Délégués du personnel',526,0,0,'2021-11-05 15:42:26',NULL,NULL),(528,1,1,42510000,'Compte Délégués du personnel',527,0,0,'2021-11-05 15:42:26',NULL,NULL),(529,6,1,4252,'Syndicats et Comités d\'entreprises, d\'Établissement',526,0,0,'2021-11-05 15:42:26',NULL,NULL),(530,1,1,42520000,'Compte Syndicats et Comités d\'entreprises, d\'Établissement',529,0,0,'2021-11-05 15:42:26',NULL,NULL),(531,6,1,4258,'Autres représentants du personnel',526,0,0,'2021-11-05 15:42:26',NULL,NULL),(532,1,1,42580000,'Compte Autres représentants du personnel',531,0,0,'2021-11-05 15:42:26',NULL,NULL),(533,6,1,427,'PERSONNEL – DÉPÔTS',507,0,0,'2021-11-05 15:42:26',NULL,NULL),(534,6,1,428,'PERSONNEL, CHARGES À PAYER ET PRODUITS À RECEVOIR',507,0,0,'2021-11-05 15:42:26',NULL,NULL),(535,6,1,4281,'Dettes provisionnées pour congés à payer',534,0,0,'2021-11-05 15:42:26',NULL,NULL),(536,1,1,42810000,'Compte Dettes provisionnées pour congés à payer',535,0,0,'2021-11-05 15:42:26',NULL,NULL),(537,6,1,4286,'Autres Charges à payer',534,0,0,'2021-11-05 15:42:26',NULL,NULL),(538,1,1,42860000,'Compte Autres Charges à payer',537,0,0,'2021-11-05 15:42:26',NULL,NULL),(539,6,1,4287,'Produits à recevoir',534,0,0,'2021-11-05 15:42:26',NULL,NULL),(540,1,1,42870000,'Compte Produits à recevoir',539,0,0,'2021-11-05 15:42:26',NULL,NULL),(541,6,1,43,'ORGANISMES SOCIAUX',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(542,6,1,431,'SÉCURITÉ SOCIALE',541,0,0,'2021-11-05 15:42:26',NULL,NULL),(543,6,1,4311,'Prestations familiales',542,0,0,'2021-11-05 15:42:26',NULL,NULL),(544,1,1,43110000,'Compte Prestations familiales',543,0,0,'2021-11-05 15:42:26',NULL,NULL),(545,6,1,4312,'Accidents de travail',542,0,0,'2021-11-05 15:42:26',NULL,NULL),(546,1,1,43120000,'Compte Accidents de travail',545,0,0,'2021-11-05 15:42:26',NULL,NULL),(547,6,1,4313,'Caisse de retraite obligatoire (INSS)',542,0,0,'2021-11-05 15:42:26',NULL,NULL),(548,1,1,43130000,'Compte Caisse de retraite obligatoire (INSS)',547,0,0,'2021-11-05 15:42:26',NULL,NULL),(549,6,1,4314,'Caisse de retraite facultative',542,0,0,'2021-11-05 15:42:26',NULL,NULL),(550,1,1,43140000,'Compte Caisse de retraite facultative',549,0,0,'2021-11-05 15:42:26',NULL,NULL),(551,6,1,4318,'Autres cotisations sociales',542,0,0,'2021-11-05 15:42:26',NULL,NULL),(552,1,1,43180000,'Compte Autres cotisations sociales',551,0,0,'2021-11-05 15:42:26',NULL,NULL),(553,6,1,432,'CAISSES DE RETRAITE COMPLÉMENTAIRE',541,0,0,'2021-11-05 15:42:26',NULL,NULL),(554,6,1,433,'AUTRES ORGANISMES SOCIAUX',541,0,0,'2021-11-05 15:42:26',NULL,NULL),(555,6,1,4331,'Mutuelle',554,0,0,'2021-11-05 15:42:26',NULL,NULL),(556,1,1,43310000,'Compte Mutuelle',555,0,0,'2021-11-05 15:42:26',NULL,NULL),(557,1,1,43311010,'Mutuelle de Santé',555,0,0,'2021-11-05 15:42:26',NULL,NULL),(558,2,1,43311011,'ONEM',555,0,0,'2021-11-05 15:42:26',NULL,NULL),(559,2,1,43311012,'INPP',555,0,0,'2021-11-05 15:42:26',NULL,NULL),(560,6,1,4332,'Assurance Retraite',554,0,0,'2021-11-05 15:42:26',NULL,NULL),(561,1,1,43320000,'Compte Assurance Retraite',560,0,0,'2021-11-05 15:42:26',NULL,NULL),(562,6,1,4333,'Assurance et organisme de santé',554,0,0,'2021-11-05 15:42:26',NULL,NULL),(563,1,1,43330000,'Compte Assurance et organisme de santé',562,0,0,'2021-11-05 15:42:26',NULL,NULL),(564,6,1,438,'ORGANISMES SOCIAUX, CHARGES À PAYER ET PRODUITS À RECEVOIR',541,0,0,'2021-11-05 15:42:26',NULL,NULL),(565,6,1,4381,'Charges sociales sur gratifications à payer',564,0,0,'2021-11-05 15:42:26',NULL,NULL),(566,1,1,43810000,'Compte Charges sociales sur gratifications à payer',565,0,0,'2021-11-05 15:42:26',NULL,NULL),(567,6,1,4382,'Charges sociales sur congés à payer',564,0,0,'2021-11-05 15:42:26',NULL,NULL),(568,1,1,43820000,'Compte Charges sociales sur congés à payer',567,0,0,'2021-11-05 15:42:26',NULL,NULL),(569,6,1,4386,'Autres charges à payer',564,0,0,'2021-11-05 15:42:26',NULL,NULL),(570,1,1,43860000,'Compte Autres charges à payer',569,0,0,'2021-11-05 15:42:26',NULL,NULL),(571,6,1,4387,'Produits à recevoir',564,0,0,'2021-11-05 15:42:26',NULL,NULL),(572,1,1,43870000,'Compte Produits à recevoir',571,0,0,'2021-11-05 15:42:26',NULL,NULL),(573,6,1,44,'ÉTAT ET COLLECTIVITÉS PUBLIQUES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(574,6,1,443,'ÉTAT, T.V.A FACTUREE',573,0,0,'2021-11-05 15:42:26',NULL,NULL),(575,6,1,4431,'T.V.A. facturée sur ventes',574,0,0,'2021-11-05 15:42:26',NULL,NULL),(576,1,1,44310000,'Compte T.V.A. facturée sur ventes',575,0,0,'2021-11-05 15:42:26',NULL,NULL),(577,6,1,4432,'T.V.A. facturée sur prestations de services',574,0,0,'2021-11-05 15:42:26',NULL,NULL),(578,1,1,44320000,'Compte T.V.A. facturée sur prestations de services',577,0,0,'2021-11-05 15:42:26',NULL,NULL),(579,6,1,4433,'T.V.A. facturée sur travaux',574,0,0,'2021-11-05 15:42:26',NULL,NULL),(580,1,1,44330000,'Compte T.V.A. facturée sur travaux',579,0,0,'2021-11-05 15:42:26',NULL,NULL),(581,6,1,4434,'T.V.A. facturée sur production livrée à soi-même',574,0,0,'2021-11-05 15:42:26',NULL,NULL),(582,1,1,44340000,'Compte T.V.A. facturée sur production livrée à soi-même',581,0,0,'2021-11-05 15:42:26',NULL,NULL),(583,6,1,4435,'T.V.A. sur factures à établir',574,0,0,'2021-11-05 15:42:26',NULL,NULL),(584,1,1,44350000,'Compte T.V.A. sur factures à établir',583,0,0,'2021-11-05 15:42:26',NULL,NULL),(585,6,1,444,'ÉTAT, T.V.A DUE OU CREDIT DE T.V.A',573,0,0,'2021-11-05 15:42:26',NULL,NULL),(586,6,1,4441,'État, T.V.A. due',585,0,0,'2021-11-05 15:42:26',NULL,NULL),(587,1,1,44410000,'Compte État, T.V.A. due',586,0,0,'2021-11-05 15:42:26',NULL,NULL),(588,6,1,4449,'État, Crédit de T.V.A. à reporter',585,0,0,'2021-11-05 15:42:26',NULL,NULL),(589,1,1,44490000,'Compte État, Crédit de T.V.A. à reporter',588,0,0,'2021-11-05 15:42:26',NULL,NULL),(590,6,1,447,'ÉTAT, IMPOTS RETENUS A LA SOURCE',573,0,0,'2021-11-05 15:42:26',NULL,NULL),(591,6,1,4471,'Impôt Général sur le revenu',590,0,0,'2021-11-05 15:42:26',NULL,NULL),(592,1,1,44710000,'Compte Impôt Général sur le revenu',591,0,0,'2021-11-05 15:42:26',NULL,NULL),(593,6,1,4472,'Impôts sur salaires',590,0,0,'2021-11-05 15:42:26',NULL,NULL),(594,1,1,44720000,'Compte Impôts sur salaires',593,0,0,'2021-11-05 15:42:26',NULL,NULL),(595,6,1,4473,'Contribution nationale',590,0,0,'2021-11-05 15:42:26',NULL,NULL),(596,1,1,44730000,'Compte Contribution nationale',595,0,0,'2021-11-05 15:42:26',NULL,NULL),(597,6,1,4474,'Contribution nationale de solidarité',590,0,0,'2021-11-05 15:42:26',NULL,NULL),(598,1,1,44740000,'Compte Contribution nationale de solidarité',597,0,0,'2021-11-05 15:42:26',NULL,NULL),(599,6,1,4478,'Autres impôts et contributions',590,0,0,'2021-11-05 15:42:26',NULL,NULL),(600,1,1,44780000,'Compte Autres impôts et contributions',599,0,0,'2021-11-05 15:42:26',NULL,NULL),(601,6,1,45,'ORGANISMES INTERNATIONAUX',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(602,6,1,451,'OPÉRATIONS AVEC LES ORGANISMES AFRICAINS',601,0,0,'2021-11-05 15:42:26',NULL,NULL),(603,6,1,452,'OPÉRATIONS AVEC LES AUTRES ORGANISMES INTERNATIONAUX',601,0,0,'2021-11-05 15:42:26',NULL,NULL),(604,6,1,458,'ORGANISMES INTERNATIONAUX, FONDS DE DOTATION ET SUBVENTIONS À RECEVOIR',601,0,0,'2021-11-05 15:42:26',NULL,NULL),(605,6,1,4581,'Organismes internationaux, fonds de dotation à recevoir',604,0,0,'2021-11-05 15:42:26',NULL,NULL),(606,1,1,45810000,'Compte Organismes internationaux, fonds de dotation à recevoir',605,0,0,'2021-11-05 15:42:26',NULL,NULL),(607,6,1,4582,'Organismes internationaux, subventions à recevoir',604,0,0,'2021-11-05 15:42:26',NULL,NULL),(608,1,1,45820000,'Compte Organismes internationaux, subventions à recevoir',607,0,0,'2021-11-05 15:42:26',NULL,NULL),(609,6,1,46,'APPOTEURS, ASSOCIES ET GROUPES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(610,6,1,47,'DÉBITEURS ET CRÉDITEURS DIVERS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(611,6,1,471,'DEBITEURS ET CREDITEURS DIVERS',610,0,0,'2021-11-05 15:42:26',NULL,NULL),(612,6,1,4711,'Débiteurs divers',611,0,0,'2021-11-05 15:42:26',NULL,NULL),(613,1,1,47110000,'Compte Débiteurs divers',612,0,0,'2021-11-05 15:42:26',NULL,NULL),(614,6,1,4712,'Créditeurs divers',611,0,0,'2021-11-05 15:42:26',NULL,NULL),(615,1,1,47120000,'Compte Créditeurs divers',614,0,0,'2021-11-05 15:42:26',NULL,NULL),(616,6,1,4715,'Rémunérations d\'administrateurs',611,0,0,'2021-11-05 15:42:26',NULL,NULL),(617,1,1,47150000,'Compte Rémunérations d\'administrateurs',616,0,0,'2021-11-05 15:42:26',NULL,NULL),(618,6,1,472,'CREANCES ET DETTES SUR TITRES DE PLACEMENT',610,0,0,'2021-11-05 15:42:26',NULL,NULL),(619,6,1,4731,'Mandants',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(620,1,1,47310000,'Compte Mandants',619,0,0,'2021-11-05 15:42:26',NULL,NULL),(621,6,1,4732,'Mandataires',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(622,1,1,47320000,'Compte Mandataires',621,0,0,'2021-11-05 15:42:26',NULL,NULL),(623,6,1,4733,'Commettants',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(624,1,1,47330000,'Compte Commettants',623,0,0,'2021-11-05 15:42:26',NULL,NULL),(625,6,1,4734,'Commissionnaires',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(626,1,1,47340000,'Compte Commissionnaires',625,0,0,'2021-11-05 15:42:26',NULL,NULL),(627,6,1,4739,'Etat, Collectivités publiques, fonds global d\'allocation',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(628,1,1,47390000,'Compte Etat, Collectivités publiques, fonds global d\'allocation',627,0,0,'2021-11-05 15:42:26',NULL,NULL),(629,6,1,473,'INTERMEDIAIRE-OPERATIONS FAITES POUR LE COMPTE DE TIERS',610,0,0,'2021-11-05 15:42:26',NULL,NULL),(630,6,1,474,'COMPTE DE RÉPARTITION PÉRIODIQUE DES CHARGES ET DES PRODUITS',610,0,0,'2021-11-05 15:42:26',NULL,NULL),(631,6,1,475,'COMPTE DE TRANSITOIRE, AJUSTEMENT SPECIAL LIE A LA REVISION DU SYSCOHADA',610,0,0,'2021-11-05 15:42:26',NULL,NULL),(632,6,1,4751,'Compte Actif',631,0,0,'2021-11-05 15:42:26',NULL,NULL),(633,1,1,47510000,'Compte Compte Actif',632,0,0,'2021-11-05 15:42:26',NULL,NULL),(634,6,1,4752,'Compte Passif',631,0,0,'2021-11-05 15:42:26',NULL,NULL),(635,1,1,47520000,'Compte Compte Passif',634,0,0,'2021-11-05 15:42:26',NULL,NULL),(636,6,1,476,'CHARGES CONSTATÉES D\'AVANCE',610,0,0,'2021-11-05 15:42:26',NULL,NULL),(637,6,1,477,'PRODUITS CONSTATÉS D\'AVANCE',610,0,0,'2021-11-05 15:42:26',NULL,NULL),(638,6,1,478,'ÉCARTS DE CONVERSION - ACTIF',610,0,0,'2021-11-05 15:42:26',NULL,NULL),(639,6,1,479,'ÉCARTS DE CONVERSION - PASSIF',610,0,0,'2021-11-05 15:42:26',NULL,NULL),(640,6,1,48,'CRÉANCES ET DETTES HORS ACTIVITÉS ORDINAIRES (HAO)',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(641,6,1,481,'FOURNISSEURS D\'INVESTISSEMENTS',640,0,0,'2021-11-05 15:42:26',NULL,NULL),(642,6,1,482,'FOURNISSEURS D\'INVESTISSEMENTS, EFFETS À PAYER',640,0,0,'2021-11-05 15:42:26',NULL,NULL),(643,6,1,483,'DETTES SUR ACQUISITION DE TITRES DE PLACEMENT',640,0,0,'2021-11-05 15:42:26',NULL,NULL),(644,6,1,484,'AUTRES DETTES HORS ACTIVITES ORDINAIRES (H.A.O.)',640,0,0,'2021-11-05 15:42:26',NULL,NULL),(645,6,1,485,'CRÉANCES SUR CESSIONS D\'IMMOBILISATIONS',640,0,0,'2021-11-05 15:42:26',NULL,NULL),(646,6,1,486,'CRÉANCES SUR CESSIONS DE TITRES DE PLACEMENT',640,0,0,'2021-11-05 15:42:26',NULL,NULL),(647,6,1,488,'AUTRES CRÉANCES HORS ACTIVITÉS ORDINAIRES (H.A.O.)',640,0,0,'2021-11-05 15:42:26',NULL,NULL),(648,6,1,49,'DÉPRÉCIATIONS ET RISQUES PROVISIONNÉS (TIERS)',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(649,6,1,490,'DÉPRÉCIATIONS DES COMPTES FOURNISSEURS',648,0,0,'2021-11-05 15:42:26',NULL,NULL),(650,6,1,491,'DÉPRÉCIATIONS DES COMPTES CLIENTS',648,0,0,'2021-11-05 15:42:26',NULL,NULL),(651,6,1,4911,'Créances litigieuses',650,0,0,'2021-11-05 15:42:26',NULL,NULL),(652,1,1,49110000,'Compte Créances litigieuses',651,0,0,'2021-11-05 15:42:26',NULL,NULL),(653,6,1,4912,'Créances douteuses',650,0,0,'2021-11-05 15:42:26',NULL,NULL),(654,1,1,49120000,'Compte Créances douteuses',653,0,0,'2021-11-05 15:42:26',NULL,NULL),(655,6,1,492,'DÉPRÉCIATIONS DES COMPTES PERSONNEL',648,0,0,'2021-11-05 15:42:26',NULL,NULL),(656,6,1,493,'DÉPRÉCIATIONS DES COMPTES ORGANISMES SOCIAUX',648,0,0,'2021-11-05 15:42:26',NULL,NULL),(657,6,1,494,'DÉPRÉCIATIONS DES COMPTES ÉTAT ET COLLECTIVITÉS PUBLIQUES',648,0,0,'2021-11-05 15:42:26',NULL,NULL),(658,6,1,495,'DÉPRÉCIATIONS DES COMPTES ORGANISMES INTERNATIONAUX',648,0,0,'2021-11-05 15:42:26',NULL,NULL),(659,6,1,496,'DEPRECIATION DES COMPTES APPORTEURS ASSOCIES ET GROUPE',648,0,0,'2021-11-05 15:42:26',NULL,NULL),(660,6,1,497,'DÉPRÉCIATIONS DES COMPTES DÉBITEURS DIVERS',648,0,0,'2021-11-05 15:42:26',NULL,NULL),(661,6,1,498,'DÉPRÉCIATIONS DES COMPTES DE CRÉANCES H.A.O.',648,0,0,'2021-11-05 15:42:26',NULL,NULL),(662,6,1,4985,'Créances sur cessions d\'immobilisations',661,0,0,'2021-11-05 15:42:26',NULL,NULL),(663,1,1,49850000,'Compte Créances sur cessions d\'immobilisations',662,0,0,'2021-11-05 15:42:26',NULL,NULL),(664,6,1,4988,'Autres créances H.A.O.',661,0,0,'2021-11-05 15:42:26',NULL,NULL),(665,1,1,49880000,'Compte Autres créances H.A.O.',664,0,0,'2021-11-05 15:42:26',NULL,NULL),(666,6,1,499,'PROVISIONS POUR RISQUES A COURT TERME',648,0,0,'2021-11-05 15:42:26',NULL,NULL),(667,6,1,4991,'Sur opérations d\'exploitation',666,0,0,'2021-11-05 15:42:26',NULL,NULL),(668,1,1,49910000,'Compte Sur opérations d\'exploitation',667,0,0,'2021-11-05 15:42:26',NULL,NULL),(669,6,1,4997,'Sur opérations fianacières',666,0,0,'2021-11-05 15:42:26',NULL,NULL),(670,1,1,49970000,'Compte Sur opérations fianacières',669,0,0,'2021-11-05 15:42:26',NULL,NULL),(671,6,1,4998,'Sur opérations H.A.O.',666,0,0,'2021-11-05 15:42:26',NULL,NULL),(672,1,1,49980000,'Compte Sur opérations H.A.O.',671,0,0,'2021-11-05 15:42:26',NULL,NULL),(673,6,1,50,'TITRES DU TRESOR ET BONS DE CAISSE A COURT TERME',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(674,6,1,51,'VALEURS A ENCAISSER',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(675,6,1,511,'EFFETS À ENCAISSER',674,0,0,'2021-11-05 15:42:26',NULL,NULL),(676,6,1,512,'EFFETS À L\'ENCAISSEMENT',674,0,0,'2021-11-05 15:42:26',NULL,NULL),(677,6,1,513,'CHÈQUES À ENCAISSER',674,0,0,'2021-11-05 15:42:26',NULL,NULL),(678,6,1,514,'CHÈQUES À L\'ENCAISSEMENT',674,0,0,'2021-11-05 15:42:26',NULL,NULL),(679,6,1,515,'CARTES DE CRÉDIT À ENCAISSER',674,0,0,'2021-11-05 15:42:26',NULL,NULL),(680,6,1,518,'AUTRES VALEURS À L\'ENCAISSEMENT',674,0,0,'2021-11-05 15:42:26',NULL,NULL),(681,6,1,5181,'Warrants',680,0,0,'2021-11-05 15:42:26',NULL,NULL),(682,1,1,51810000,'Compte Warrants',681,0,0,'2021-11-05 15:42:26',NULL,NULL),(683,6,1,5182,'Billets de fonds',680,0,0,'2021-11-05 15:42:26',NULL,NULL),(684,1,1,51820000,'Compte Billets de fonds',683,0,0,'2021-11-05 15:42:26',NULL,NULL),(685,6,1,5185,'Chèques de voyage',680,0,0,'2021-11-05 15:42:26',NULL,NULL),(686,1,1,51850000,'Compte Chèques de voyage',685,0,0,'2021-11-05 15:42:26',NULL,NULL),(687,6,1,5186,'Coupons échus',680,0,0,'2021-11-05 15:42:26',NULL,NULL),(688,1,1,51860000,'Compte Coupons échus',687,0,0,'2021-11-05 15:42:26',NULL,NULL),(689,6,1,52,'BANQUES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(690,6,1,521,'BANQUES LOCALES',689,0,0,'2021-11-05 15:42:26',NULL,NULL),(691,6,1,5211,'Banque en unités monétaires nationale',690,0,0,'2021-11-05 15:42:26',NULL,NULL),(692,1,1,52110000,'Compte Banque en unités monétaires nationale',691,0,0,'2021-11-05 15:42:26',NULL,NULL),(693,6,1,5212,'Banque en devise',690,0,0,'2021-11-05 15:42:26',NULL,NULL),(694,1,1,52120000,'Compte Banque en devise',693,0,0,'2021-11-05 15:42:26',NULL,NULL),(695,6,1,526,'BANQUES, INTERETS COURUS',689,0,0,'2021-11-05 15:42:26',NULL,NULL),(696,6,1,53,'ÉTABLISSEMENTS FINANCIERS ET ASSIMILÉS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(697,6,1,56,'BANQUES, CRÉDITS DE TRÉSORERIE ET D\'ESCOMPTE',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(698,6,1,561,'CRÉDITS DE TRÉSORERIE',697,0,0,'2021-11-05 15:42:26',NULL,NULL),(699,6,1,564,'ESCOMPTE DE CRÉDITS DE CAMPAGNE',697,0,0,'2021-11-05 15:42:26',NULL,NULL),(700,6,1,565,'ESCOMPTE DE CRÉDITS ORDINAIRES',697,0,0,'2021-11-05 15:42:26',NULL,NULL),(701,6,1,566,'BANQUES, CREDITS DE TRESORERIE, INTERETS COURUS',697,0,0,'2021-11-05 15:42:26',NULL,NULL),(702,6,1,57,'CAISSE',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(703,6,1,571,'CAISSE SIÈGE SOCIAL',702,0,0,'2021-11-05 15:42:26',NULL,NULL),(704,6,1,5711,'Caisse en unités monétaires légales',703,0,0,'2021-11-05 15:42:26',NULL,NULL),(705,1,1,57110000,'Compte Caisse en unités monétaires légales',704,0,0,'2021-11-05 15:42:26',NULL,NULL),(706,6,1,5712,'Caisse en devise',703,0,0,'2021-11-05 15:42:26',NULL,NULL),(707,1,1,57120000,'Compte Caisse en devise',706,0,0,'2021-11-05 15:42:26',NULL,NULL),(708,6,1,58,'RÉGIES D\'AVANCES, ACCRÉDITIFS ET VIREMENTS INTERNES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(709,6,1,581,'RÉGIES D\'AVANCE',708,0,0,'2021-11-05 15:42:26',NULL,NULL),(710,6,1,582,'ACCRÉDITIFS',708,0,0,'2021-11-05 15:42:26',NULL,NULL),(711,6,1,585,'VIREMENTS DE FONDS',708,0,0,'2021-11-05 15:42:26',NULL,NULL),(712,6,1,5851,'Caisse auxiliaire - caisse centrale',711,0,0,'2021-11-05 15:42:26',NULL,NULL),(713,1,1,58510000,'Compte Caisse auxiliaire - caisse centrale',712,0,0,'2021-11-05 15:42:26',NULL,NULL),(714,6,1,5852,'Caisse centrale - banque',711,0,0,'2021-11-05 15:42:26',NULL,NULL),(715,1,1,58520000,'Compte Caisse centrale - banque',714,0,0,'2021-11-05 15:42:26',NULL,NULL),(716,6,1,5853,'Banque - banque',711,0,0,'2021-11-05 15:42:26',NULL,NULL),(717,1,1,58530000,'Compte Banque - banque',716,0,0,'2021-11-05 15:42:26',NULL,NULL),(718,6,1,59,'DÉPRÉCIATIONS ET PROVISIONS POUR RISQUES A COURT TERME',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(719,6,1,60,'ACHATS ET VARIATIONS DE STOCKS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(720,6,1,601,'ACHATS DE MARCHANDISES (Médicaments, intrants, vaccins, réactifs, contraceptifs)',719,0,0,'2021-11-05 15:42:26',NULL,NULL),(721,6,1,6011,'dans la Région',720,0,0,'2021-11-05 15:42:26',NULL,NULL),(722,5,1,60110000,'Compte dans la Région',721,0,0,'2021-11-05 15:42:26',NULL,NULL),(723,5,1,60111,'Médicaments',721,0,0,'2021-11-05 15:42:26',NULL,NULL),(724,5,1,60112,'Petits matériels médicaux',721,0,0,'2021-11-05 15:42:26',NULL,NULL),(725,5,1,60113,'Kits opératoires',721,0,0,'2021-11-05 15:42:26',NULL,NULL),(726,5,1,60114,'Produits anesthésiques',721,0,0,'2021-11-05 15:42:26',NULL,NULL),(727,5,1,60115,'Formol',721,0,0,'2021-11-05 15:42:26',NULL,NULL),(728,5,1,60116,'Contraceptifs',721,0,0,'2021-11-05 15:42:26',NULL,NULL),(729,5,1,60118,'Produits de l\'imagerie',721,0,0,'2021-11-05 15:42:26',NULL,NULL),(730,5,1,60119,'Vaccin antirabique',721,0,0,'2021-11-05 15:42:26',NULL,NULL),(731,5,1,601110,'Oxygène',721,0,0,'2021-11-05 15:42:26',NULL,NULL),(732,5,1,601111,'Intrants sécurité transfusionnelle',721,0,0,'2021-11-05 15:42:26',NULL,NULL),(733,5,1,601112,'Autres intrants spécifiques',721,0,0,'2021-11-05 15:42:26',NULL,NULL),(734,5,1,601113,'Imprimés',721,0,0,'2021-11-05 15:42:26',NULL,NULL),(735,5,1,601114,'Emballages',721,0,0,'2021-11-05 15:42:26',NULL,NULL),(736,5,1,601118,'Autres',721,0,0,'2021-11-05 15:42:26',NULL,NULL),(737,6,1,6019,'Rabais, Remises et Ristournes obtenus (non ventilés)',720,0,0,'2021-11-05 15:42:26',NULL,NULL),(738,5,1,60190000,'Compte Rabais, Remises et Ristournes obtenus (non ventilés)',737,0,0,'2021-11-05 15:42:26',NULL,NULL),(739,6,1,602,'ACHATS DE MATIÈRES PREMIÈRES ET FOURNITURES LIÉES',719,0,0,'2021-11-05 15:42:26',NULL,NULL),(740,6,1,6021,'dans la Région',739,0,0,'2021-11-05 15:42:26',NULL,NULL),(741,5,1,60210000,'Compte dans la Région',740,0,0,'2021-11-05 15:42:26',NULL,NULL),(742,5,1,60211,'MATIÈRES A (Pour fabrication médicaments)',740,0,0,'2021-11-05 15:42:26',NULL,NULL),(743,5,1,60212,'MATIÈRES B (Pour fabrication réactifs et autres)',740,0,0,'2021-11-05 15:42:26',NULL,NULL),(744,5,1,60213,'FOURNITURES (A, B) liées',740,0,0,'2021-11-05 15:42:26',NULL,NULL),(745,6,1,6025,'Frais sur achats',739,0,0,'2021-11-05 15:42:26',NULL,NULL),(746,5,1,60250000,'Compte Frais sur achats',745,0,0,'2021-11-05 15:42:26',NULL,NULL),(747,6,1,6029,'Rabais, Remises et Ristournes obtenus (non ventilés)',739,0,0,'2021-11-05 15:42:26',NULL,NULL),(748,5,1,60290000,'Compte Rabais, Remises et Ristournes obtenus (non ventilés)',747,0,0,'2021-11-05 15:42:26',NULL,NULL),(749,6,1,603,'VARIATIONS DES STOCKS DE BIENS ACHETÉS',719,0,0,'2021-11-05 15:42:26',NULL,NULL),(750,6,1,6031,'Variations des stocks de marchandises',749,0,0,'2021-11-05 15:42:26',NULL,NULL),(751,5,1,60310000,'Compte Variations des stocks de marchandises',750,0,0,'2021-11-05 15:42:26',NULL,NULL),(752,6,1,6032,'Variations des stocks de matières premières et fournitures liées',749,0,0,'2021-11-05 15:42:26',NULL,NULL),(753,5,1,60320000,'Compte Variations des stocks de matières premières et fournitures liées',752,0,0,'2021-11-05 15:42:26',NULL,NULL),(754,6,1,6033,'Variations des stocks d\'autres approvisionnements',749,0,0,'2021-11-05 15:42:26',NULL,NULL),(755,5,1,60330000,'Compte Variations des stocks d\'autres approvisionnements',754,0,0,'2021-11-05 15:42:26',NULL,NULL),(756,6,1,604,'ACHATS STOCKÉS DE MATIÈRES ET FOURNITURES CONSOMMABLES',719,0,0,'2021-11-05 15:42:26',NULL,NULL),(757,6,1,6041,'Matières consommables',756,0,0,'2021-11-05 15:42:26',NULL,NULL),(758,5,1,60410000,'Compte Matières consommables',757,0,0,'2021-11-05 15:42:26',NULL,NULL),(759,5,1,60411010,'Divers vaccins',757,0,0,'2021-11-05 15:42:26',NULL,NULL),(760,5,1,60411011,'Réactifs de labo',757,0,0,'2021-11-05 15:42:26',NULL,NULL),(761,5,1,60411018,'Diverses matières consommables',757,0,0,'2021-11-05 15:42:26',NULL,NULL),(762,6,1,6042,'Matières combustibles',756,0,0,'2021-11-05 15:42:26',NULL,NULL),(763,5,1,60420000,'Compte Matières combustibles',762,0,0,'2021-11-05 15:42:26',NULL,NULL),(764,6,1,6043,'Produits d\'entretien',756,0,0,'2021-11-05 15:42:26',NULL,NULL),(765,5,1,60430000,'Compte Produits d\'entretien',764,0,0,'2021-11-05 15:42:26',NULL,NULL),(766,6,1,6044,'Fournitures d\'atelier et d\'usine',756,0,0,'2021-11-05 15:42:26',NULL,NULL),(767,5,1,60440000,'Compte Fournitures d\'atelier et d\'usine',766,0,0,'2021-11-05 15:42:26',NULL,NULL),(768,6,1,6045,'Frais sur achats',756,0,0,'2021-11-05 15:42:26',NULL,NULL),(769,5,1,60450000,'Compte Frais sur achats',768,0,0,'2021-11-05 15:42:26',NULL,NULL),(770,5,1,60441010,'Matériels de plomberie',766,0,0,'2021-11-05 15:42:26',NULL,NULL),(771,5,1,60441011,'Matériaux de construction',766,0,0,'2021-11-05 15:42:26',NULL,NULL),(772,5,1,60441012,'Autres fournitures d\'atelier et d\'usine',766,0,0,'2021-11-05 15:42:26',NULL,NULL),(773,6,1,6046,'Fournitures de magasin',756,0,0,'2021-11-05 15:42:26',NULL,NULL),(774,5,1,60460000,'Compte Fournitures de magasin',773,0,0,'2021-11-05 15:42:26',NULL,NULL),(775,5,1,60461010,'Pièces de rechange et accessoires auto',773,0,0,'2021-11-05 15:42:26',NULL,NULL),(776,5,1,60461011,'Denrées alimentaires',773,0,0,'2021-11-05 15:42:26',NULL,NULL),(777,5,1,60461013,'Autres fournitures de magasin',773,0,0,'2021-11-05 15:42:26',NULL,NULL),(778,6,1,6047,'Fournitures de bureau',756,0,0,'2021-11-05 15:42:26',NULL,NULL),(779,5,1,60470000,'Compte Fournitures de bureau',778,0,0,'2021-11-05 15:42:26',NULL,NULL),(780,6,1,6049,'Rabais, Remises et Ristournes obtenus (non ventilés)',756,0,0,'2021-11-05 15:42:26',NULL,NULL),(781,5,1,60490000,'Compte Rabais, Remises et Ristournes obtenus (non ventilés)',780,0,0,'2021-11-05 15:42:26',NULL,NULL),(782,6,1,605,'AUTRES ACHATS',719,0,0,'2021-11-05 15:42:26',NULL,NULL),(783,6,1,6051,'Fournitures non stockables -Eau',782,0,0,'2021-11-05 15:42:26',NULL,NULL),(784,5,1,60510000,'Compte Fournitures non stockables -Eau',783,0,0,'2021-11-05 15:42:26',NULL,NULL),(785,6,1,6052,'Fournitures non stockables-Electricité',782,0,0,'2021-11-05 15:42:26',NULL,NULL),(786,5,1,60520000,'Compte Fournitures non stockables-Electricité',785,0,0,'2021-11-05 15:42:26',NULL,NULL),(787,6,1,6053,'Fournitures non stockables-Autres énergies (Carburant, Lubrifiant, pétrole...)',782,0,0,'2021-11-05 15:42:26',NULL,NULL),(788,5,1,60530000,'Compte Fournitures non stockables-Autres énergies (Carburant, Lubrifiant, pétrole...)',787,0,0,'2021-11-05 15:42:26',NULL,NULL),(789,6,1,6054,'Fournitures d\'entretien non stockables',782,0,0,'2021-11-05 15:42:26',NULL,NULL),(790,5,1,60540000,'Compte Fournitures d\'entretien non stockables',789,0,0,'2021-11-05 15:42:26',NULL,NULL),(791,6,1,6055,'Fournitures de bureau non stockables',782,0,0,'2021-11-05 15:42:26',NULL,NULL),(792,5,1,60550000,'Compte Fournitures de bureau non stockables',791,0,0,'2021-11-05 15:42:26',NULL,NULL),(793,6,1,6056,'Achats de petit matériel et outillage',782,0,0,'2021-11-05 15:42:26',NULL,NULL),(794,5,1,60560000,'Compte Achats de petit matériel et outillage',793,0,0,'2021-11-05 15:42:26',NULL,NULL),(795,6,1,6057,'Achats d\'études et prestations de services',782,0,0,'2021-11-05 15:42:26',NULL,NULL),(796,5,1,60570000,'Compte Achats d\'études et prestations de services',795,0,0,'2021-11-05 15:42:26',NULL,NULL),(797,6,1,6058,'Achats de travaux, matériels et équipements',782,0,0,'2021-11-05 15:42:26',NULL,NULL),(798,5,1,60580000,'Compte Achats de travaux, matériels et équipements',797,0,0,'2021-11-05 15:42:26',NULL,NULL),(799,6,1,6059,'Rabais, Remises et Ristournes obtenus (non ventilés)',782,0,0,'2021-11-05 15:42:26',NULL,NULL),(800,5,1,60590000,'Compte Rabais, Remises et Ristournes obtenus (non ventilés)',799,0,0,'2021-11-05 15:42:26',NULL,NULL),(801,6,1,608,'ACHATS D\'EMBALLAGES',719,0,0,'2021-11-05 15:42:26',NULL,NULL),(802,6,1,6081,'Emballages perdus',801,0,0,'2021-11-05 15:42:26',NULL,NULL),(803,5,1,60810000,'Compte Emballages perdus',802,0,0,'2021-11-05 15:42:26',NULL,NULL),(804,6,1,6082,'Emballages récupérables non identifiables',801,0,0,'2021-11-05 15:42:26',NULL,NULL),(805,5,1,60820000,'Compte Emballages récupérables non identifiables',804,0,0,'2021-11-05 15:42:26',NULL,NULL),(806,6,1,6083,'Emballages à usage mixte',801,0,0,'2021-11-05 15:42:26',NULL,NULL),(807,5,1,60830000,'Compte Emballages à usage mixte',806,0,0,'2021-11-05 15:42:26',NULL,NULL),(808,6,1,6085,'Frais sur achats',801,0,0,'2021-11-05 15:42:26',NULL,NULL),(809,5,1,60850000,'Compte Frais sur achats',808,0,0,'2021-11-05 15:42:26',NULL,NULL),(810,6,1,6089,'Rabais, Remises et Ristournes obtenus (non ventilés)',801,0,0,'2021-11-05 15:42:26',NULL,NULL),(811,5,1,60890000,'Compte Rabais, Remises et Ristournes obtenus (non ventilés)',810,0,0,'2021-11-05 15:42:26',NULL,NULL),(812,6,1,61,'TRANSPORTS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(813,6,1,612,'TRANSPORTS SUR VENTES',812,0,0,'2021-11-05 15:42:26',NULL,NULL),(814,6,1,613,'TRANSPORTS POUR LE COMPTE DE TIERS',812,0,0,'2021-11-05 15:42:26',NULL,NULL),(815,6,1,614,'TRANSPORTS DU PERSONNEL',812,0,0,'2021-11-05 15:42:26',NULL,NULL),(816,6,1,616,'TRANSPORTS DE PLIS',812,0,0,'2021-11-05 15:42:26',NULL,NULL),(817,6,1,618,'AUTRES FRAIS DE TRANSPORT',812,0,0,'2021-11-05 15:42:26',NULL,NULL),(818,6,1,6181,'Voyages et déplacements (Titres de voyage)',817,0,0,'2021-11-05 15:42:26',NULL,NULL),(819,5,1,61810000,'Compte Voyages et déplacements (Titres de voyage)',818,0,0,'2021-11-05 15:42:26',NULL,NULL),(820,5,1,61811010,'Voyages et déplacements à l\'intérieur',818,0,0,'2021-11-05 15:42:26',NULL,NULL),(821,5,1,61811011,'Voyages et déplacements à l\'extérieur',818,0,0,'2021-11-05 15:42:26',NULL,NULL),(822,6,1,6182,'Transports entre établissements ou chantiers',817,0,0,'2021-11-05 15:42:26',NULL,NULL),(823,5,1,61820000,'Compte Transports entre établissements ou chantiers',822,0,0,'2021-11-05 15:42:26',NULL,NULL),(824,6,1,6183,'Transports administratifs (Courses de service)',817,0,0,'2021-11-05 15:42:26',NULL,NULL),(825,5,1,61830000,'Compte Transports administratifs (Courses de service)',824,0,0,'2021-11-05 15:42:26',NULL,NULL),(826,6,1,62,'SERVICES EXTERIEURS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(827,6,1,621,'SOUS-TRAITANCE GÉNÉRALE',826,0,0,'2021-11-05 15:42:26',NULL,NULL),(828,6,1,6211,'Service de gardiennage',827,0,0,'2021-11-05 15:42:26',NULL,NULL),(829,5,1,62110000,'Compte Service de gardiennage',828,0,0,'2021-11-05 15:42:26',NULL,NULL),(830,6,1,6212,'Service de nettoyage',827,0,0,'2021-11-05 15:42:26',NULL,NULL),(831,5,1,62120000,'Compte Service de nettoyage',830,0,0,'2021-11-05 15:42:26',NULL,NULL),(832,6,1,6213,'Service de buanderie et confection',827,0,0,'2021-11-05 15:42:26',NULL,NULL),(833,5,1,62130000,'Compte Service de buanderie et confection',832,0,0,'2021-11-05 15:42:26',NULL,NULL),(834,6,1,6214,'Service de restauration',827,0,0,'2021-11-05 15:42:26',NULL,NULL),(835,5,1,62140000,'Compte Service de restauration',834,0,0,'2021-11-05 15:42:26',NULL,NULL),(836,6,1,6215,'Service d\'entretien et maintenance',827,0,0,'2021-11-05 15:42:26',NULL,NULL),(837,5,1,62150000,'Compte Service d\'entretien et maintenance',836,0,0,'2021-11-05 15:42:26',NULL,NULL),(838,6,1,6218,'Autres services',827,0,0,'2021-11-05 15:42:26',NULL,NULL),(839,5,1,62180000,'Compte Autres services',838,0,0,'2021-11-05 15:42:26',NULL,NULL),(840,6,1,622,'LOCATIONS,CHARGES LOCATIVES',826,0,0,'2021-11-05 15:42:26',NULL,NULL),(841,6,1,6221,'Locations de terrains',840,0,0,'2021-11-05 15:42:26',NULL,NULL),(842,5,1,62210000,'Compte Locations de terrains',841,0,0,'2021-11-05 15:42:26',NULL,NULL),(843,6,1,6222,'Locations de bâtiments',840,0,0,'2021-11-05 15:42:26',NULL,NULL),(844,5,1,62220000,'Compte Locations de bâtiments',843,0,0,'2021-11-05 15:42:26',NULL,NULL),(845,6,1,6223,'Locations de matériels et outillages',840,0,0,'2021-11-05 15:42:26',NULL,NULL),(846,5,1,62230000,'Compte Locations de matériels et outillages',845,0,0,'2021-11-05 15:42:26',NULL,NULL),(847,6,1,6224,'Malis sur emballages',840,0,0,'2021-11-05 15:42:26',NULL,NULL),(848,5,1,62240000,'Compte Malis sur emballages',847,0,0,'2021-11-05 15:42:26',NULL,NULL),(849,6,1,6225,'Locations d\'emballages',840,0,0,'2021-11-05 15:42:26',NULL,NULL),(850,5,1,62250000,'Compte Locations d\'emballages',849,0,0,'2021-11-05 15:42:26',NULL,NULL),(851,6,1,6226,'Fermage et Loyers du foncier',840,0,0,'2021-11-05 15:42:26',NULL,NULL),(852,5,1,62260000,'Compte Fermage et Loyers du foncier',851,0,0,'2021-11-05 15:42:26',NULL,NULL),(853,6,1,6228,'Locations et charges locatives diverses',840,0,0,'2021-11-05 15:42:26',NULL,NULL),(854,5,1,62280000,'Compte Locations et charges locatives diverses',853,0,0,'2021-11-05 15:42:26',NULL,NULL),(855,6,1,623,'REDEVANCES DE CRÉDIT-BAIL ET CONTRATS ASSIMILÉS',826,0,0,'2021-11-05 15:42:26',NULL,NULL),(856,6,1,6232,'Crédit-bail immobilier',855,0,0,'2021-11-05 15:42:26',NULL,NULL),(857,5,1,62320000,'Compte Crédit-bail immobilier',856,0,0,'2021-11-05 15:42:26',NULL,NULL),(858,6,1,6233,'Crédit-bail mobilier',855,0,0,'2021-11-05 15:42:26',NULL,NULL),(859,5,1,62330000,'Compte Crédit-bail mobilier',858,0,0,'2021-11-05 15:42:26',NULL,NULL),(860,6,1,6235,'Contrats assimilés',855,0,0,'2021-11-05 15:42:26',NULL,NULL),(861,5,1,62350000,'Compte Contrats assimilés',860,0,0,'2021-11-05 15:42:26',NULL,NULL),(862,6,1,624,'ENTRETIEN, RÉPARATIONS, REMISE EN ETAT ET MAINTENANCE',826,0,0,'2021-11-05 15:42:26',NULL,NULL),(863,6,1,6241,'Entretien et réparations des biens immobiliers',862,0,0,'2021-11-05 15:42:26',NULL,NULL),(864,5,1,62410000,'Compte Entretien et réparations des biens immobiliers',863,0,0,'2021-11-05 15:42:26',NULL,NULL),(865,6,1,6242,'Entretien et réparations des biens mobiliers',862,0,0,'2021-11-05 15:42:26',NULL,NULL),(866,5,1,62420000,'Compte Entretien et réparations des biens mobiliers',865,0,0,'2021-11-05 15:42:26',NULL,NULL),(867,6,1,6243,'Maintenance',862,0,0,'2021-11-05 15:42:26',NULL,NULL),(868,5,1,62430000,'Compte Maintenance',867,0,0,'2021-11-05 15:42:26',NULL,NULL),(869,6,1,6244,'Charges de démentèlement et Remise en état',862,0,0,'2021-11-05 15:42:26',NULL,NULL),(870,5,1,62440000,'Compte Charges de démentèlement et Remise en état',869,0,0,'2021-11-05 15:42:26',NULL,NULL),(871,6,1,6248,'Autres entretiens et réparations',862,0,0,'2021-11-05 15:42:26',NULL,NULL),(872,5,1,62480000,'Compte Autres entretiens et réparations',871,0,0,'2021-11-05 15:42:26',NULL,NULL),(873,6,1,625,'PRIMES D\'ASSURANCE',826,0,0,'2021-11-05 15:42:26',NULL,NULL),(874,6,1,6251,'Assurances multirisques',873,0,0,'2021-11-05 15:42:26',NULL,NULL),(875,5,1,62510000,'Compte Assurances multirisques',874,0,0,'2021-11-05 15:42:26',NULL,NULL),(876,6,1,6252,'Assurances matériel de transport',873,0,0,'2021-11-05 15:42:26',NULL,NULL),(877,5,1,62520000,'Compte Assurances matériel de transport',876,0,0,'2021-11-05 15:42:26',NULL,NULL),(878,6,1,6253,'Assurances risques d\'exploitation',873,0,0,'2021-11-05 15:42:26',NULL,NULL),(879,5,1,62530000,'Compte Assurances risques d\'exploitation',878,0,0,'2021-11-05 15:42:26',NULL,NULL),(880,6,1,6254,'Assurances responsabilité du producteur',873,0,0,'2021-11-05 15:42:26',NULL,NULL),(881,5,1,62540000,'Compte Assurances responsabilité du producteur',880,0,0,'2021-11-05 15:42:26',NULL,NULL),(882,6,1,6255,'Assurances insolvabilité clients',873,0,0,'2021-11-05 15:42:26',NULL,NULL),(883,5,1,62550000,'Compte Assurances insolvabilité clients',882,0,0,'2021-11-05 15:42:26',NULL,NULL),(884,6,1,6257,'Assurances transport sur ventes',873,0,0,'2021-11-05 15:42:26',NULL,NULL),(885,5,1,62570000,'Compte Assurances transport sur ventes',884,0,0,'2021-11-05 15:42:26',NULL,NULL),(886,6,1,6258,'Autres primes d\'assurances',873,0,0,'2021-11-05 15:42:26',NULL,NULL),(887,5,1,62580000,'Compte Autres primes d\'assurances',886,0,0,'2021-11-05 15:42:26',NULL,NULL),(888,6,1,626,'ÉTUDES, RECHERCHES ET DOCUMENTATION',826,0,0,'2021-11-05 15:42:26',NULL,NULL),(889,6,1,6261,'Études et recherches',888,0,0,'2021-11-05 15:42:26',NULL,NULL),(890,5,1,62610000,'Compte Études et recherches',889,0,0,'2021-11-05 15:42:26',NULL,NULL),(891,6,1,6265,'Documentation générale',888,0,0,'2021-11-05 15:42:26',NULL,NULL),(892,5,1,62650000,'Compte Documentation générale',891,0,0,'2021-11-05 15:42:26',NULL,NULL),(893,6,1,6266,'Documentation technique',888,0,0,'2021-11-05 15:42:26',NULL,NULL),(894,5,1,62660000,'Compte Documentation technique',893,0,0,'2021-11-05 15:42:26',NULL,NULL),(895,6,1,627,'PUBLICITÉ, PUBLICATIONS, RELATIONS PUBLIQUES',826,0,0,'2021-11-05 15:42:26',NULL,NULL),(896,6,1,6271,'Annonces, insertions',895,0,0,'2021-11-05 15:42:26',NULL,NULL),(897,5,1,62710000,'Compte Annonces, insertions',896,0,0,'2021-11-05 15:42:26',NULL,NULL),(898,6,1,6272,'Catalogues, Imprimés publicitaires',895,0,0,'2021-11-05 15:42:26',NULL,NULL),(899,5,1,62720000,'Compte Catalogues, Imprimés publicitaires',898,0,0,'2021-11-05 15:42:26',NULL,NULL),(900,5,1,62721010,'Imprimés de sensibilisation',898,0,0,'2021-11-05 15:42:26',NULL,NULL),(901,5,1,62721011,'Imprimés d\'information',898,0,0,'2021-11-05 15:42:26',NULL,NULL),(902,5,1,62721012,'Affiches et banderoles',898,0,0,'2021-11-05 15:42:26',NULL,NULL),(903,6,1,6273,'Échantillons',895,0,0,'2021-11-05 15:42:26',NULL,NULL),(904,5,1,62730000,'Compte Échantillons',903,0,0,'2021-11-05 15:42:26',NULL,NULL),(905,6,1,6275,'Publications',895,0,0,'2021-11-05 15:42:26',NULL,NULL),(906,5,1,62750000,'Compte Publications',905,0,0,'2021-11-05 15:42:26',NULL,NULL),(907,6,1,6277,'Frais de colloques, séminaires, conférences',895,0,0,'2021-11-05 15:42:26',NULL,NULL),(908,5,1,62770000,'Compte Frais de colloques, séminaires, conférences',907,0,0,'2021-11-05 15:42:26',NULL,NULL),(909,6,1,628,'FRAIS DE TELECOMMUNICATION',826,0,0,'2021-11-05 15:42:26',NULL,NULL),(910,6,1,6281,'Frais de téléphone',909,0,0,'2021-11-05 15:42:26',NULL,NULL),(911,5,1,62810000,'Compte Frais de téléphone',910,0,0,'2021-11-05 15:42:26',NULL,NULL),(912,6,1,6282,'Frais de télex',909,0,0,'2021-11-05 15:42:26',NULL,NULL),(913,5,1,62820000,'Compte Frais de télex',912,0,0,'2021-11-05 15:42:26',NULL,NULL),(914,6,1,6283,'Frais de télécopie',909,0,0,'2021-11-05 15:42:26',NULL,NULL),(915,5,1,62830000,'Compte Frais de télécopie',914,0,0,'2021-11-05 15:42:26',NULL,NULL),(916,6,1,6288,'Autres frais de télécommunications',909,0,0,'2021-11-05 15:42:26',NULL,NULL),(917,5,1,62880000,'Compte Autres frais de télécommunications',916,0,0,'2021-11-05 15:42:26',NULL,NULL),(918,5,1,62881010,'Frais internet',916,0,0,'2021-11-05 15:42:26',NULL,NULL),(919,5,1,62881011,'Frais site web',916,0,0,'2021-11-05 15:42:26',NULL,NULL),(920,5,1,62881012,'Frais d\'abonnement télévision',916,0,0,'2021-11-05 15:42:26',NULL,NULL),(921,6,1,63,'SERVICES EXTERIEURS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(922,6,1,631,'FRAIS BANCAIRES',921,0,0,'2021-11-05 15:42:26',NULL,NULL),(923,6,1,632,'RÉMUNÉRATIONS D\'INTERMÉDIAIRES ET DE CONSEILS',921,0,0,'2021-11-05 15:42:26',NULL,NULL),(924,6,1,6322,'Commissions et courtages sur ventes',923,0,0,'2021-11-05 15:42:26',NULL,NULL),(925,5,1,63220000,'Compte Commissions et courtages sur ventes',924,0,0,'2021-11-05 15:42:26',NULL,NULL),(926,6,1,6324,'Honoraires des professions reglémntées',923,0,0,'2021-11-05 15:42:26',NULL,NULL),(927,5,1,63240000,'Compte Honoraires des professions reglémntées',926,0,0,'2021-11-05 15:42:26',NULL,NULL),(928,6,1,6325,'Frais d\'actes et de contentieux',923,0,0,'2021-11-05 15:42:26',NULL,NULL),(929,5,1,63250000,'Compte Frais d\'actes et de contentieux',928,0,0,'2021-11-05 15:42:26',NULL,NULL),(930,6,1,6326,'Rémunération d\'affacturage',923,0,0,'2021-11-05 15:42:26',NULL,NULL),(931,5,1,63260000,'Compte Rémunération d\'affacturage',930,0,0,'2021-11-05 15:42:26',NULL,NULL),(932,6,1,6327,'Rémunération des autres prestataires de service',923,0,0,'2021-11-05 15:42:26',NULL,NULL),(933,5,1,63270000,'Compte Rémunération des autres prestataires de service',932,0,0,'2021-11-05 15:42:26',NULL,NULL),(934,6,1,6328,'Divers frais',923,0,0,'2021-11-05 15:42:26',NULL,NULL),(935,5,1,63280000,'Compte Divers frais',934,0,0,'2021-11-05 15:42:26',NULL,NULL),(936,5,1,63281,'Frais de contrôle de qualité',934,0,0,'2021-11-05 15:42:26',NULL,NULL),(937,6,1,633,'FRAIS DE FORMATION DU PERSONNEL',921,0,0,'2021-11-05 15:42:26',NULL,NULL),(938,6,1,6331,'Frais de formation à l\'intérieur',937,0,0,'2021-11-05 15:42:26',NULL,NULL),(939,5,1,63310000,'Compte Frais de formation à l\'intérieur',938,0,0,'2021-11-05 15:42:26',NULL,NULL),(940,6,1,6332,'Frais de formation à l\'extérieur',937,0,0,'2021-11-05 15:42:26',NULL,NULL),(941,5,1,63320000,'Compte Frais de formation à l\'extérieur',940,0,0,'2021-11-05 15:42:26',NULL,NULL),(942,6,1,634,'REDEVANCES POUR BREVETS, LICENCES, LOGICIELS, CONCESSIONS ET DROITS ET VALEURS SIMILAIRES',921,0,0,'2021-11-05 15:42:26',NULL,NULL),(943,6,1,6342,'Redevances pour brevets, licences, concessions et droits similaires',942,0,0,'2021-11-05 15:42:26',NULL,NULL),(944,5,1,63420000,'Compte Redevances pour brevets, licences, concessions et droits similaires',943,0,0,'2021-11-05 15:42:26',NULL,NULL),(945,6,1,6343,'Redevances pour logiciels',942,0,0,'2021-11-05 15:42:26',NULL,NULL),(946,5,1,63430000,'Compte Redevances pour logiciels',945,0,0,'2021-11-05 15:42:26',NULL,NULL),(947,6,1,6344,'Redevances pour marques',942,0,0,'2021-11-05 15:42:26',NULL,NULL),(948,5,1,63440000,'Compte Redevances pour marques',947,0,0,'2021-11-05 15:42:26',NULL,NULL),(949,6,1,6345,'Redevances pour Sites internet',942,0,0,'2021-11-05 15:42:26',NULL,NULL),(950,5,1,63450000,'Compte Redevances pour Sites internet',949,0,0,'2021-11-05 15:42:26',NULL,NULL),(951,6,1,6346,'Redevances pour concessions, droits et valeurs similaires',942,0,0,'2021-11-05 15:42:26',NULL,NULL),(952,5,1,63460000,'Compte Redevances pour concessions, droits et valeurs similaires',951,0,0,'2021-11-05 15:42:26',NULL,NULL),(953,6,1,637,'RÉMUNÉRATIONS DE PERSONNEL EXTÉRIEUR À L\'ENTREPRISE',921,0,0,'2021-11-05 15:42:26',NULL,NULL),(954,6,1,6371,'Personnel intérimaire',953,0,0,'2021-11-05 15:42:26',NULL,NULL),(955,5,1,63710000,'Compte Personnel intérimaire',954,0,0,'2021-11-05 15:42:26',NULL,NULL),(956,6,1,6372,'Personnel détaché ou prêté à l\'entreprise',953,0,0,'2021-11-05 15:42:26',NULL,NULL),(957,5,1,63720000,'Compte Personnel détaché ou prêté à l\'entreprise',956,0,0,'2021-11-05 15:42:26',NULL,NULL),(958,6,1,638,'AUTRES CHARGES EXTERNES',921,0,0,'2021-11-05 15:42:26',NULL,NULL),(959,6,1,6381,'Frais de recrutement du personnel',958,0,0,'2021-11-05 15:42:26',NULL,NULL),(960,5,1,63810000,'Compte Frais de recrutement du personnel',959,0,0,'2021-11-05 15:42:26',NULL,NULL),(961,6,1,6382,'Frais de déménagement',958,0,0,'2021-11-05 15:42:26',NULL,NULL),(962,5,1,63820000,'Compte Frais de déménagement',961,0,0,'2021-11-05 15:42:26',NULL,NULL),(963,6,1,6383,'Réceptions',958,0,0,'2021-11-05 15:42:26',NULL,NULL),(964,5,1,63830000,'Compte Réceptions',963,0,0,'2021-11-05 15:42:26',NULL,NULL),(965,6,1,6384,'Missions',958,0,0,'2021-11-05 15:42:26',NULL,NULL),(966,5,1,63840000,'Compte Missions',965,0,0,'2021-11-05 15:42:26',NULL,NULL),(967,5,1,63841,'Missions à l\'intérieur',965,0,0,'2021-11-05 15:42:26',NULL,NULL),(968,5,1,63842,'Missions à l\'extérieur',965,0,0,'2021-11-05 15:42:26',NULL,NULL),(969,6,1,6385,'Charges de copropriété',958,0,0,'2021-11-05 15:42:26',NULL,NULL),(970,5,1,63850000,'Compte Charges de copropriété',969,0,0,'2021-11-05 15:42:26',NULL,NULL),(971,6,1,64,'IMPOTS ET TAXES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(972,6,1,641,'IMPÔTS ET TAXES DIRECTS',971,0,0,'2021-11-05 15:42:26',NULL,NULL),(973,6,1,6415,'Formation professionnelle continue',972,0,0,'2021-11-05 15:42:26',NULL,NULL),(974,5,1,64150000,'Compte Formation professionnelle continue',973,0,0,'2021-11-05 15:42:26',NULL,NULL),(975,6,1,6418,'Autres impôts et taxes directs',972,0,0,'2021-11-05 15:42:26',NULL,NULL),(976,5,1,64180000,'Compte Autres impôts et taxes directs',975,0,0,'2021-11-05 15:42:26',NULL,NULL),(977,6,1,646,'DROITS D\'ENREGISTREMENT',971,0,0,'2021-11-05 15:42:26',NULL,NULL),(978,6,1,6461,'Droits de mutation',977,0,0,'2021-11-05 15:42:26',NULL,NULL),(979,5,1,64610000,'Compte Droits de mutation',978,0,0,'2021-11-05 15:42:26',NULL,NULL),(980,6,1,6462,'Droits de timbre',977,0,0,'2021-11-05 15:42:26',NULL,NULL),(981,5,1,64620000,'Compte Droits de timbre',980,0,0,'2021-11-05 15:42:26',NULL,NULL),(982,6,1,6463,'Taxes sur les véhicules de société',977,0,0,'2021-11-05 15:42:26',NULL,NULL),(983,5,1,64630000,'Compte Taxes sur les véhicules de société',982,0,0,'2021-11-05 15:42:26',NULL,NULL),(984,6,1,6464,'Vignettes',977,0,0,'2021-11-05 15:42:26',NULL,NULL),(985,5,1,64640000,'Compte Vignettes',984,0,0,'2021-11-05 15:42:26',NULL,NULL),(986,6,1,6468,'Autres droits',977,0,0,'2021-11-05 15:42:26',NULL,NULL),(987,5,1,64680000,'Compte Autres droits',986,0,0,'2021-11-05 15:42:26',NULL,NULL),(988,6,1,647,'PENALITES, AMENDES FISCALES',971,0,0,'2021-11-05 15:42:26',NULL,NULL),(989,6,1,6471,'Pénalités d\'assiettes, impôts directs',988,0,0,'2021-11-05 15:42:26',NULL,NULL),(990,5,1,64710000,'Compte Pénalités d\'assiettes, impôts directs',989,0,0,'2021-11-05 15:42:26',NULL,NULL),(991,6,1,6472,'Pénalités d\'assiettes, impôts indirects',988,0,0,'2021-11-05 15:42:26',NULL,NULL),(992,5,1,64720000,'Compte Pénalités d\'assiettes, impôts indirects',991,0,0,'2021-11-05 15:42:26',NULL,NULL),(993,6,1,6473,'Pénalités de recouvrement, impôts directs',988,0,0,'2021-11-05 15:42:26',NULL,NULL),(994,5,1,64730000,'Compte Pénalités de recouvrement, impôts directs',993,0,0,'2021-11-05 15:42:26',NULL,NULL),(995,6,1,6474,'Pénalités de recouvrement, impôts indirects',988,0,0,'2021-11-05 15:42:26',NULL,NULL),(996,5,1,64740000,'Compte Pénalités de recouvrement, impôts indirects',995,0,0,'2021-11-05 15:42:26',NULL,NULL),(997,6,1,6478,'Autres pénalités et amendes fiscales',988,0,0,'2021-11-05 15:42:26',NULL,NULL),(998,5,1,64780000,'Compte Autres pénalités et amendes fiscales',997,0,0,'2021-11-05 15:42:26',NULL,NULL),(999,6,1,65,'AUTRES CHARGES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1000,6,1,651,'PERTES SUR CRÉANCES CLIENTS ET AUTRES DÉBITEURS',999,0,0,'2021-11-05 15:42:26',NULL,NULL),(1001,6,1,6511,'Clients',1000,0,0,'2021-11-05 15:42:26',NULL,NULL),(1002,5,1,65110000,'Compte Clients',1001,0,0,'2021-11-05 15:42:26',NULL,NULL),(1003,6,1,6515,'Autres débiteurs',1000,0,0,'2021-11-05 15:42:26',NULL,NULL),(1004,5,1,65150000,'Compte Autres débiteurs',1003,0,0,'2021-11-05 15:42:26',NULL,NULL),(1005,6,1,654,'VALEUR COMPTABLE DES CESSIONS COURANTES D\'IMMOBILISATIONS',999,0,0,'2021-11-05 15:42:26',NULL,NULL),(1006,6,1,656,'Perte de change sur créances et dettes commerciale',999,0,0,'2021-11-05 15:42:26',NULL,NULL),(1007,6,1,657,'Pénalités et Amendes pénales',999,0,0,'2021-11-05 15:42:26',NULL,NULL),(1008,6,1,658,'CHARGES DIVERSES',999,0,0,'2021-11-05 15:42:26',NULL,NULL),(1009,6,1,6581,'Jetons de présence et autres rémunérations d\'administrateurs',1008,0,0,'2021-11-05 15:42:26',NULL,NULL),(1010,5,1,65810000,'Compte Jetons de présence et autres rémunérations d\'administrateurs',1009,0,0,'2021-11-05 15:42:26',NULL,NULL),(1011,6,1,6582,'Dons',1008,0,0,'2021-11-05 15:42:26',NULL,NULL),(1012,5,1,65820000,'Compte Dons',1011,0,0,'2021-11-05 15:42:26',NULL,NULL),(1013,6,1,6583,'Mécénat',1008,0,0,'2021-11-05 15:42:26',NULL,NULL),(1014,5,1,65830000,'Compte Mécénat',1013,0,0,'2021-11-05 15:42:26',NULL,NULL),(1015,6,1,6584,'Quotité pour le fonctionnement des structures hiérarchique',1008,0,0,'2021-11-05 15:42:26',NULL,NULL),(1016,5,1,65840000,'Compte Quotité pour le fonctionnement des structures hiérarchique',1015,0,0,'2021-11-05 15:42:26',NULL,NULL),(1017,6,1,659,'CHARGES POUR DEPRECIATION ET PROVISION POUR RISQUES A COURT TERME D\'EXPLOITATION',999,0,0,'2021-11-05 15:42:26',NULL,NULL),(1018,6,1,66,'CHARGES DE PERSONNEL',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1019,6,1,661,'RÉMUNÉRATIONS DIRECTES VERSÉES AU PERSONNEL NATIONAL',1018,0,0,'2021-11-05 15:42:26',NULL,NULL),(1020,6,1,6611,'Appointements salaires et commissions',1019,0,0,'2021-11-05 15:42:26',NULL,NULL),(1021,5,1,66110000,'Compte Appointements salaires et commissions',1020,0,0,'2021-11-05 15:42:26',NULL,NULL),(1022,6,1,6612,'Primes et gratifications',1019,0,0,'2021-11-05 15:42:26',NULL,NULL),(1023,5,1,66120000,'Compte Primes et gratifications',1022,0,0,'2021-11-05 15:42:26',NULL,NULL),(1024,6,1,6613,'Congés payés',1019,0,0,'2021-11-05 15:42:26',NULL,NULL),(1025,5,1,66130000,'Compte Congés payés',1024,0,0,'2021-11-05 15:42:26',NULL,NULL),(1026,6,1,6614,'Indemnités de préavis, de licenciement et de recherche d\'embauche',1019,0,0,'2021-11-05 15:42:26',NULL,NULL),(1027,5,1,66140000,'Compte Indemnités de préavis, de licenciement et de recherche d\'embauche',1026,0,0,'2021-11-05 15:42:26',NULL,NULL),(1028,6,1,6615,'Indemnités de maladie versées aux travailleurs',1019,0,0,'2021-11-05 15:42:26',NULL,NULL),(1029,5,1,66150000,'Compte Indemnités de maladie versées aux travailleurs',1028,0,0,'2021-11-05 15:42:26',NULL,NULL),(1030,6,1,6616,'Supplément familial',1019,0,0,'2021-11-05 15:42:26',NULL,NULL),(1031,5,1,66160000,'Compte Supplément familial',1030,0,0,'2021-11-05 15:42:26',NULL,NULL),(1032,6,1,6617,'Avantages en nature',1019,0,0,'2021-11-05 15:42:26',NULL,NULL),(1033,5,1,66170000,'Compte Avantages en nature',1032,0,0,'2021-11-05 15:42:26',NULL,NULL),(1034,6,1,6618,'Autres rémunérations directes',1019,0,0,'2021-11-05 15:42:26',NULL,NULL),(1035,5,1,66180000,'Compte Autres rémunérations directes',1034,0,0,'2021-11-05 15:42:26',NULL,NULL),(1036,6,1,662,'RÉMUNÉRATIONS DIRECTES VERSÉES AU PERSONNEL NON NATIONAL',1018,0,0,'2021-11-05 15:42:26',NULL,NULL),(1037,6,1,6621,'Appointements salaires et commissions',1036,0,0,'2021-11-05 15:42:26',NULL,NULL),(1038,5,1,66210000,'Compte Appointements salaires et commissions',1037,0,0,'2021-11-05 15:42:26',NULL,NULL),(1039,6,1,6622,'Primes et gratifications',1036,0,0,'2021-11-05 15:42:26',NULL,NULL),(1040,5,1,66220000,'Compte Primes et gratifications',1039,0,0,'2021-11-05 15:42:26',NULL,NULL),(1041,6,1,6623,'Congés payés',1036,0,0,'2021-11-05 15:42:26',NULL,NULL),(1042,5,1,66230000,'Compte Congés payés',1041,0,0,'2021-11-05 15:42:26',NULL,NULL),(1043,6,1,6624,'Indemnités de préavis, de licenciement et de recherche d\'embauche',1036,0,0,'2021-11-05 15:42:26',NULL,NULL),(1044,5,1,66240000,'Compte Indemnités de préavis, de licenciement et de recherche d\'embauche',1043,0,0,'2021-11-05 15:42:26',NULL,NULL),(1045,6,1,6625,'Indemnités de maladie versées aux travailleurs',1036,0,0,'2021-11-05 15:42:26',NULL,NULL),(1046,5,1,66250000,'Compte Indemnités de maladie versées aux travailleurs',1045,0,0,'2021-11-05 15:42:26',NULL,NULL),(1047,6,1,6626,'Supplément familial',1036,0,0,'2021-11-05 15:42:26',NULL,NULL),(1048,5,1,66260000,'Compte Supplément familial',1047,0,0,'2021-11-05 15:42:26',NULL,NULL),(1049,6,1,6627,'Avantages en nature',1036,0,0,'2021-11-05 15:42:26',NULL,NULL),(1050,5,1,66270000,'Compte Avantages en nature',1049,0,0,'2021-11-05 15:42:26',NULL,NULL),(1051,6,1,6628,'Autres rémunérations directes',1036,0,0,'2021-11-05 15:42:26',NULL,NULL),(1052,5,1,66280000,'Compte Autres rémunérations directes',1051,0,0,'2021-11-05 15:42:26',NULL,NULL),(1053,6,1,663,'INDEMNITÉS FORFAITAIRES VERSÉES AU PERSONNEL',1018,0,0,'2021-11-05 15:42:26',NULL,NULL),(1054,6,1,6631,'Indemnités de logement',1053,0,0,'2021-11-05 15:42:26',NULL,NULL),(1055,5,1,66310000,'Compte Indemnités de logement',1054,0,0,'2021-11-05 15:42:26',NULL,NULL),(1056,6,1,6632,'Indemnités de représentation',1053,0,0,'2021-11-05 15:42:26',NULL,NULL),(1057,5,1,66320000,'Compte Indemnités de représentation',1056,0,0,'2021-11-05 15:42:26',NULL,NULL),(1058,6,1,6633,'Indemnités d\'expatriation',1053,0,0,'2021-11-05 15:42:26',NULL,NULL),(1059,5,1,66330000,'Compte Indemnités d\'expatriation',1058,0,0,'2021-11-05 15:42:26',NULL,NULL),(1060,6,1,6638,'Autres indemnités et avantages divers',1053,0,0,'2021-11-05 15:42:26',NULL,NULL),(1061,5,1,66380000,'Compte Autres indemnités et avantages divers',1060,0,0,'2021-11-05 15:42:26',NULL,NULL),(1062,6,1,664,'CHARGES SOCIALES',1018,0,0,'2021-11-05 15:42:26',NULL,NULL),(1063,6,1,6641,'Charges sociales sur rémunération du personnel national',1062,0,0,'2021-11-05 15:42:26',NULL,NULL),(1064,5,1,66410000,'Compte Charges sociales sur rémunération du personnel national',1063,0,0,'2021-11-05 15:42:26',NULL,NULL),(1065,6,1,667,'RÉMUNÉRATION TRANSFÉRÉE DE PERSONNEL EXTÉRIEUR',1018,0,0,'2021-11-05 15:42:26',NULL,NULL),(1066,6,1,6671,'Personnel intérimaire',1065,0,0,'2021-11-05 15:42:26',NULL,NULL),(1067,5,1,66710000,'Compte Personnel intérimaire',1066,0,0,'2021-11-05 15:42:26',NULL,NULL),(1068,6,1,6672,'Personnel détaché ou prêté à l’entreprise',1065,0,0,'2021-11-05 15:42:26',NULL,NULL),(1069,5,1,66720000,'Compte Personnel détaché ou prêté à l’entreprise',1068,0,0,'2021-11-05 15:42:26',NULL,NULL),(1070,6,1,668,'AUTRES CHARGES SOCIALES',1018,0,0,'2021-11-05 15:42:26',NULL,NULL),(1071,6,1,6681,'Versements aux Syndicats et Comités d\'entreprise, d\'établissement',1070,0,0,'2021-11-05 15:42:26',NULL,NULL),(1072,5,1,66810000,'Compte Versements aux Syndicats et Comités d\'entreprise, d\'établissement',1071,0,0,'2021-11-05 15:42:26',NULL,NULL),(1073,6,1,6682,'Versements aux Comités d\'hygiène et de sécurité',1070,0,0,'2021-11-05 15:42:26',NULL,NULL),(1074,5,1,66820000,'Compte Versements aux Comités d\'hygiène et de sécurité',1073,0,0,'2021-11-05 15:42:26',NULL,NULL),(1075,6,1,6683,'Versements et contribution aux autres oeuvres sociales',1070,0,0,'2021-11-05 15:42:26',NULL,NULL),(1076,5,1,66830000,'Compte Versements et contribution aux autres oeuvres sociales',1075,0,0,'2021-11-05 15:42:26',NULL,NULL),(1077,6,1,6685,'Assurances et Organismes de santé',1070,0,0,'2021-11-05 15:42:26',NULL,NULL),(1078,5,1,66850000,'Compte Assurances et Organismes de santé',1077,0,0,'2021-11-05 15:42:26',NULL,NULL),(1079,6,1,6686,'Assurances retraite et fonds de pension',1070,0,0,'2021-11-05 15:42:26',NULL,NULL),(1080,5,1,66860000,'Compte Assurances retraite et fonds de pension',1079,0,0,'2021-11-05 15:42:26',NULL,NULL),(1081,6,1,6687,'Majoration et pénalités sociales',1070,0,0,'2021-11-05 15:42:26',NULL,NULL),(1082,5,1,66870000,'Compte Majoration et pénalités sociales',1081,0,0,'2021-11-05 15:42:26',NULL,NULL),(1083,6,1,6688,'Charges sociales diverses',1070,0,0,'2021-11-05 15:42:26',NULL,NULL),(1084,5,1,66880000,'Compte Charges sociales diverses',1083,0,0,'2021-11-05 15:42:26',NULL,NULL),(1085,6,1,6684,'Médecine du travail et pharmacie',1070,0,0,'2021-11-05 15:42:26',NULL,NULL),(1086,5,1,66840000,'Compte Médecine du travail et pharmacie',1085,0,0,'2021-11-05 15:42:26',NULL,NULL),(1087,6,1,67,'FRAIS FINANCIERS ET CHARGES ASSIMILÉES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1088,6,1,671,'INTÉRÊTS DES EMPRUNTS',1087,0,0,'2021-11-05 15:42:26',NULL,NULL),(1089,6,1,672,'INTÉRÊTS DANS LOYERS DE LOCATION ACQUISITION',1087,0,0,'2021-11-05 15:42:26',NULL,NULL),(1090,6,1,673,'ESCOMPTES ACCORDÉS',1087,0,0,'2021-11-05 15:42:26',NULL,NULL),(1091,6,1,674,'AUTRES INTÉRÊTS',1087,0,0,'2021-11-05 15:42:26',NULL,NULL),(1092,6,1,675,'ESCOMPTES DES EFFETS DE COMMERCE',1087,0,0,'2021-11-05 15:42:26',NULL,NULL),(1093,6,1,676,'PERTES DE CHANGE FINANCIERES',1087,0,0,'2021-11-05 15:42:26',NULL,NULL),(1094,6,1,677,'PERTES SUR CESSIONS DE TITRES DE PLACEMENT',1087,0,0,'2021-11-05 15:42:26',NULL,NULL),(1095,6,1,678,'PERTES ET CHARGES SUR RISQUES FINANCIERS',1087,0,0,'2021-11-05 15:42:26',NULL,NULL),(1096,6,1,679,'CHARGES POUR DEPRECIATION ET PROVISION POUR RISQUES A COURT TERME FINANCIERES',1087,0,0,'2021-11-05 15:42:26',NULL,NULL),(1097,6,1,68,'DOTATIONS AUX AMORTISSEMENTS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1098,6,1,681,'DOTATIONS AUX AMORTISSEMENTS D\'EXPLOITATION',1097,0,0,'2021-11-05 15:42:26',NULL,NULL),(1099,6,1,6812,'Dotations aux amortissements des immobilisations incorporelles',1098,0,0,'2021-11-05 15:42:26',NULL,NULL),(1100,5,1,68120000,'Compte Dotations aux amortissements des immobilisations incorporelles',1099,0,0,'2021-11-05 15:42:26',NULL,NULL),(1101,6,1,6813,'Dotations aux amortissements des immobilisations corporelles',1098,0,0,'2021-11-05 15:42:26',NULL,NULL),(1102,5,1,68130000,'Compte Dotations aux amortissements des immobilisations corporelles',1101,0,0,'2021-11-05 15:42:26',NULL,NULL),(1103,6,1,69,'DOTATIONS AUX PROVISIONS ET DEPRECIATIONS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1104,6,1,691,'DOTATIONS AUX PROVISIONS ET DEPRECIATIONS D\'EXPLOITATION',1103,0,0,'2021-11-05 15:42:26',NULL,NULL),(1105,6,1,697,'DOTATIONS AUX PROVISIONS ET DEPRECIATIONS FINANCIERES',1103,0,0,'2021-11-05 15:42:26',NULL,NULL),(1106,6,1,70,'VENTES DES MARCHANDISES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1107,6,1,701,'VENTES DE MARCHANDISES (Médicaments, intrants, vaccins, réactifs, contraceptifs)',1106,0,0,'2021-11-05 15:42:26',NULL,NULL),(1108,6,1,7011,'Dans la Région',1107,0,0,'2021-11-05 15:42:26',NULL,NULL),(1109,4,1,70110000,'Compte Dans la Région',1108,0,0,'2021-11-05 15:42:26',NULL,NULL),(1110,4,1,70111,'Médicaments',1108,0,0,'2021-11-05 15:42:26',NULL,NULL),(1111,4,1,70112,'Petits matériels médicaux',1108,0,0,'2021-11-05 15:42:26',NULL,NULL),(1112,4,1,70113,'Kits opératoires',1108,0,0,'2021-11-05 15:42:26',NULL,NULL),(1113,4,1,70114,'Produits anesthésiques',1108,0,0,'2021-11-05 15:42:26',NULL,NULL),(1114,4,1,70115,'Formol',1108,0,0,'2021-11-05 15:42:26',NULL,NULL),(1115,4,1,70116,'Contraceptifs',1108,0,0,'2021-11-05 15:42:26',NULL,NULL),(1116,4,1,70117,'Produits de l\'imagerie',1108,0,0,'2021-11-05 15:42:26',NULL,NULL),(1117,4,1,70118,'Vaccin antirabique',1108,0,0,'2021-11-05 15:42:26',NULL,NULL),(1118,4,1,70119,'Oxygène',1108,0,0,'2021-11-05 15:42:26',NULL,NULL),(1119,4,1,701110,'Intrants sécurité transfusionnelle',1108,0,0,'2021-11-05 15:42:26',NULL,NULL),(1120,4,1,701111,'Autres intrants spécifiques',1108,0,0,'2021-11-05 15:42:26',NULL,NULL),(1121,4,1,701112,'Imprimés',1108,0,0,'2021-11-05 15:42:26',NULL,NULL),(1122,4,1,701113,'Emballages',1108,0,0,'2021-11-05 15:42:26',NULL,NULL),(1123,4,1,701118,'Autres',1108,0,0,'2021-11-05 15:42:26',NULL,NULL),(1124,6,1,702,'VENTES DE PRODUITS FINIS',1106,0,0,'2021-11-05 15:42:26',NULL,NULL),(1125,6,1,703,'VENTES DE PRODUITS INTERMÉDIAIRES',1106,0,0,'2021-11-05 15:42:26',NULL,NULL),(1126,6,1,704,'VENTES DE PRODUITS RÉSIDUELS',1106,0,0,'2021-11-05 15:42:26',NULL,NULL),(1127,6,1,705,'TRAVAUX FACTURÉS',1106,0,0,'2021-11-05 15:42:26',NULL,NULL),(1128,6,1,7051,'Menuiseries',1127,0,0,'2021-11-05 15:42:26',NULL,NULL),(1129,4,1,70510000,'Compte Menuiseries',1128,0,0,'2021-11-05 15:42:26',NULL,NULL),(1130,6,1,7052,'Garage',1127,0,0,'2021-11-05 15:42:26',NULL,NULL),(1131,4,1,70520000,'Compte Garage',1130,0,0,'2021-11-05 15:42:26',NULL,NULL),(1132,6,1,7053,'Atelier de couture',1127,0,0,'2021-11-05 15:42:26',NULL,NULL),(1133,4,1,70530000,'Compte Atelier de couture',1132,0,0,'2021-11-05 15:42:26',NULL,NULL),(1134,6,1,7054,'Saisie, impression, et photocopie pour externes',1127,0,0,'2021-11-05 15:42:26',NULL,NULL),(1135,4,1,70540000,'Compte Saisie, impression, et photocopie pour externes',1134,0,0,'2021-11-05 15:42:26',NULL,NULL),(1136,6,1,7055,'Autres travaux facturés',1127,0,0,'2021-11-05 15:42:26',NULL,NULL),(1137,4,1,70550000,'Compte Autres travaux facturés',1136,0,0,'2021-11-05 15:42:26',NULL,NULL),(1138,6,1,706,'SERVICES VENDUS',1106,0,0,'2021-11-05 15:42:26',NULL,NULL),(1139,4,1,70611,'Services vendus par les FOSA dans la Région ( local)',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1140,4,1,70612,'Services vendus par les autres structures sanitaires dans la Région (local)',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1141,6,1,707,'PRODUITS ACCESSOIRES',1106,0,0,'2021-11-05 15:42:26',NULL,NULL),(1142,6,1,7071,'Ports, emballages perdus et autres frais facturés',1141,0,0,'2021-11-05 15:42:26',NULL,NULL),(1143,4,1,70710000,'Compte Ports, emballages perdus et autres frais facturés',1142,0,0,'2021-11-05 15:42:26',NULL,NULL),(1144,6,1,7072,'Commissions et courtages ()',1141,0,0,'2021-11-05 15:42:26',NULL,NULL),(1145,4,1,70720000,'Compte Commissions et courtages ()',1144,0,0,'2021-11-05 15:42:26',NULL,NULL),(1146,6,1,7073,'Locations ()',1141,0,0,'2021-11-05 15:42:26',NULL,NULL),(1147,4,1,70730000,'Compte Locations ()',1146,0,0,'2021-11-05 15:42:26',NULL,NULL),(1148,6,1,7074,'Bonus sur reprises et cessions d\'emballages',1141,0,0,'2021-11-05 15:42:26',NULL,NULL),(1149,4,1,70740000,'Compte Bonus sur reprises et cessions d\'emballages',1148,0,0,'2021-11-05 15:42:26',NULL,NULL),(1150,6,1,7075,'Mise à disposition de personnel ()',1141,0,0,'2021-11-05 15:42:26',NULL,NULL),(1151,4,1,70750000,'Compte Mise à disposition de personnel ()',1150,0,0,'2021-11-05 15:42:26',NULL,NULL),(1152,6,1,7076,'Redevances pour brevets, logiciels, marques et droits similaires ()',1141,0,0,'2021-11-05 15:42:26',NULL,NULL),(1153,4,1,70760000,'Compte Redevances pour brevets, logiciels, marques et droits similaires ()',1152,0,0,'2021-11-05 15:42:26',NULL,NULL),(1154,6,1,7077,'Services exploités dans l\'intérêt du personnel',1141,0,0,'2021-11-05 15:42:26',NULL,NULL),(1155,4,1,70770000,'Compte Services exploités dans l\'intérêt du personnel',1154,0,0,'2021-11-05 15:42:26',NULL,NULL),(1156,6,1,7078,'Autres produits accessoires',1141,0,0,'2021-11-05 15:42:26',NULL,NULL),(1157,4,1,70780000,'Compte Autres produits accessoires',1156,0,0,'2021-11-05 15:42:26',NULL,NULL),(1158,6,1,71,'SUBVENTIONS D\'EXPLOITATION',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1159,6,1,711,'SUR PRODUITS A L\'EXPORTATION',1158,0,0,'2021-11-05 15:42:26',NULL,NULL),(1160,6,1,712,'SUR PRODUITS À L\'IMPORTATION',1158,0,0,'2021-11-05 15:42:26',NULL,NULL),(1161,6,1,713,'SUR PRODUITS DE PÉRÉQUATION',1158,0,0,'2021-11-05 15:42:26',NULL,NULL),(1162,6,1,718,'AUTRES SUBVENTIONS D\'EXPLOITATION',1158,0,0,'2021-11-05 15:42:26',NULL,NULL),(1163,6,1,7181,'Versées par l\'État et les collectivités publiques',1162,0,0,'2021-11-05 15:42:26',NULL,NULL),(1164,4,1,71810000,'Compte Versées par l\'État et les collectivités publiques',1163,0,0,'2021-11-05 15:42:26',NULL,NULL),(1165,4,1,71811,'Gouvernement central',1163,0,0,'2021-11-05 15:42:26',NULL,NULL),(1166,4,1,71812,'Gouvernement Provincial',1163,0,0,'2021-11-05 15:42:26',NULL,NULL),(1167,4,1,71813,'Autres institutions',1163,0,0,'2021-11-05 15:42:26',NULL,NULL),(1168,6,1,7182,'Versées par les organismes internationaux',1162,0,0,'2021-11-05 15:42:26',NULL,NULL),(1169,4,1,71820000,'Compte Versées par les organismes internationaux',1168,0,0,'2021-11-05 15:42:26',NULL,NULL),(1170,6,1,7183,'Versées par des tiers',1162,0,0,'2021-11-05 15:42:26',NULL,NULL),(1171,4,1,71830000,'Compte Versées par des tiers',1170,0,0,'2021-11-05 15:42:26',NULL,NULL),(1172,6,1,72,'PRODUCTONS IMMOBILISEES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1173,6,1,721,'IMMOBILISATIONS INCORPORELLES',1172,0,0,'2021-11-05 15:42:26',NULL,NULL),(1174,6,1,722,'IMMOBILISATIONS CORPORELLES',1172,0,0,'2021-11-05 15:42:26',NULL,NULL),(1175,6,1,724,'PRODUCTIONS AUTO-CONSOMMEE',1172,0,0,'2021-11-05 15:42:26',NULL,NULL),(1176,6,1,726,'IMMOBILISATIONS FINANCIÈRES ()',1172,0,0,'2021-11-05 15:42:26',NULL,NULL),(1177,6,1,73,'VARIATIONS DES STOCKS DE BIENS ET DE SERVICES PRODUITS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1178,6,1,734,'VARIATIONS DES STOCKS DE PRODUITS EN COURS',1177,0,0,'2021-11-05 15:42:26',NULL,NULL),(1179,6,1,7341,'Produits en cours',1178,0,0,'2021-11-05 15:42:26',NULL,NULL),(1180,4,1,73410000,'Compte Produits en cours',1179,0,0,'2021-11-05 15:42:26',NULL,NULL),(1181,6,1,7342,'Travaux en cours',1178,0,0,'2021-11-05 15:42:26',NULL,NULL),(1182,4,1,73420000,'Compte Travaux en cours',1181,0,0,'2021-11-05 15:42:26',NULL,NULL),(1183,6,1,735,'VARIATIONS DES EN-COURS DE SERVICES',1177,0,0,'2021-11-05 15:42:26',NULL,NULL),(1184,6,1,7351,'Études en cours',1183,0,0,'2021-11-05 15:42:26',NULL,NULL),(1185,4,1,73510000,'Compte Études en cours',1184,0,0,'2021-11-05 15:42:26',NULL,NULL),(1186,6,1,7352,'Prestations de services en cours',1183,0,0,'2021-11-05 15:42:26',NULL,NULL),(1187,4,1,73520000,'Compte Prestations de services en cours',1186,0,0,'2021-11-05 15:42:26',NULL,NULL),(1188,6,1,736,'VARIATIONS DES STOCKS DE PRODUITS FINIS',1177,0,0,'2021-11-05 15:42:26',NULL,NULL),(1189,6,1,737,'VARIATIONS DES STOCKS DE PRODUITS INTERMÉDIAIRES ET RÉSIDUELS',1177,0,0,'2021-11-05 15:42:26',NULL,NULL),(1190,6,1,7371,'Produits intermédiaires',1189,0,0,'2021-11-05 15:42:26',NULL,NULL),(1191,4,1,73710000,'Compte Produits intermédiaires',1190,0,0,'2021-11-05 15:42:26',NULL,NULL),(1192,6,1,7372,'Produits résiduels',1189,0,0,'2021-11-05 15:42:26',NULL,NULL),(1193,4,1,73720000,'Compte Produits résiduels',1192,0,0,'2021-11-05 15:42:26',NULL,NULL),(1194,6,1,75,'AUTRES PRODUITS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1195,6,1,751,'PROFITS SUR CREANCES CLIENTS ET AUTRES DEBITEURS',1194,0,0,'2021-11-05 15:42:26',NULL,NULL),(1196,6,1,752,'QUOTE-PART DE RÉSULTAT SUR OPÉRATIONS FAITES EN COMMUN',1194,0,0,'2021-11-05 15:42:26',NULL,NULL),(1197,6,1,7521,'Quote-part transférée de pertes (comptabilité du gérant)',1196,0,0,'2021-11-05 15:42:26',NULL,NULL),(1198,4,1,75210000,'Compte Quote-part transférée de pertes (comptabilité du gérant)',1197,0,0,'2021-11-05 15:42:26',NULL,NULL),(1199,6,1,7525,'Bénéfices attribués par transfert (comptabilité des associés non gérants)',1196,0,0,'2021-11-05 15:42:26',NULL,NULL),(1200,4,1,75250000,'Compte Bénéfices attribués par transfert (comptabilité des associés non gérants)',1199,0,0,'2021-11-05 15:42:26',NULL,NULL),(1201,6,1,754,'PRODUITS DES CESSIONS COURANTES D\'IMMOBILISATIONS',1194,0,0,'2021-11-05 15:42:26',NULL,NULL),(1202,6,1,756,'GAINS DE CHANGE SUR CREANCES ET DETTES COMMERCIALES',1194,0,0,'2021-11-05 15:42:26',NULL,NULL),(1203,6,1,758,'PRODUITS DIVERS',1194,0,0,'2021-11-05 15:42:26',NULL,NULL),(1204,6,1,7581,'Indemnités de fonction et autres rémunérations d\'administrateurs',1203,0,0,'2021-11-05 15:42:26',NULL,NULL),(1205,4,1,75810000,'Compte Indemnités de fonction et autres rémunérations d\'administrateurs',1204,0,0,'2021-11-05 15:42:26',NULL,NULL),(1206,6,1,7582,'Indemnités d’assurances reçues',1203,0,0,'2021-11-05 15:42:26',NULL,NULL),(1207,4,1,75820000,'Compte Indemnités d’assurances reçues',1206,0,0,'2021-11-05 15:42:26',NULL,NULL),(1208,6,1,7588,'Autres produits divers',1203,0,0,'2021-11-05 15:42:26',NULL,NULL),(1209,4,1,75880000,'Compte Autres produits divers',1208,0,0,'2021-11-05 15:42:26',NULL,NULL),(1210,6,1,759,'REPRISES DE CHARGES POUR DEPRECIATION ET PROVISIONS POUR RISQUES A COURT TERME D\'EXPLOITATION',1194,0,0,'2021-11-05 15:42:26',NULL,NULL),(1211,6,1,77,'REVENUS FINANCIERS ET PRODUITS ASSIMILÉS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1212,6,1,771,'INTÉRÊTS DE PRÊTS ET CREANCES DIVERSES',1211,0,0,'2021-11-05 15:42:26',NULL,NULL),(1213,6,1,772,'REVENUS DE PARTICIPATIONS ET AUTRES TITRES IMMOBILISES',1211,0,0,'2021-11-05 15:42:26',NULL,NULL),(1214,6,1,773,'ESCOMPTES OBTENUS',1211,0,0,'2021-11-05 15:42:26',NULL,NULL),(1215,6,1,774,'REVENUS DE TITRES DE PLACEMENT',1211,0,0,'2021-11-05 15:42:26',NULL,NULL),(1216,6,1,775,'INTERETS DANS LOYERS DE LOCATION ACQUISITION',1211,0,0,'2021-11-05 15:42:26',NULL,NULL),(1217,6,1,776,'GAINS DE CHANGE FINANCIER',1211,0,0,'2021-11-05 15:42:26',NULL,NULL),(1218,6,1,777,'GAINS SUR CESSIONS DE TITRES DE PLACEMENT',1211,0,0,'2021-11-05 15:42:26',NULL,NULL),(1219,6,1,779,'REPRISES DE CHARGES POUR DEPRECIAITIONS ET PROVISIONS A COURT TREME FINANCIERES',1211,0,0,'2021-11-05 15:42:26',NULL,NULL),(1220,6,1,78,'TRANSFERTS DE CHARGES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1221,6,1,781,'TRANSFERTS DE CHARGES D\'EXPLOITATION',1220,0,0,'2021-11-05 15:42:26',NULL,NULL),(1222,6,1,787,'TRANSFERTS DE CHARGES FINANCIERES',1220,0,0,'2021-11-05 15:42:26',NULL,NULL),(1223,6,1,79,'REPRISES DE PROVISIONS, DE DEPRECIATION ET AUTRES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1224,6,1,791,'REPRISES DE PROVISIONS ET DEPRECIATION D\'EXPLOITATION',1223,0,0,'2021-11-05 15:42:26',NULL,NULL),(1225,6,1,797,'REPRISES DE PROVISIONS ET DEPRECIATIONS FINANCIÈRES',1223,0,0,'2021-11-05 15:42:26',NULL,NULL),(1226,6,1,798,'REPRISES D\'AMORTISSEMENTS ()',1223,0,0,'2021-11-05 15:42:26',NULL,NULL),(1227,6,1,799,'REPRISES DE SUBVENTION D\'INVESTISSEMENT',1223,0,0,'2021-11-05 15:42:26',NULL,NULL),(1228,6,1,81,'VALEURS COMPTABLES DES CESSIONS D\'IMMOBILISATIONS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1229,6,1,811,'IMMOBILISATIONS INCORPORELLES',1228,0,0,'2021-11-05 15:42:26',NULL,NULL),(1230,6,1,812,'IMMOBILISATIONS CORPORELLES',1228,0,0,'2021-11-05 15:42:26',NULL,NULL),(1231,6,1,816,'IMMOBILISATIONS FINANCIERES',1228,0,0,'2021-11-05 15:42:26',NULL,NULL),(1232,6,1,82,'PRODUITS DES CESSIONS D\'IMMOBILISATIONS',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1233,6,1,821,'IMMOBILISATIONS INCORPORELLES',1232,0,0,'2021-11-05 15:42:26',NULL,NULL),(1234,6,1,822,'IMMOBILISATIONS CORPORELLES',1232,0,0,'2021-11-05 15:42:26',NULL,NULL),(1235,6,1,826,'IMMOBILISATIONS FINANCIERES',1232,0,0,'2021-11-05 15:42:26',NULL,NULL),(1236,6,1,83,'CHARGES HORS ACTIVITÉS ORDINAIRES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1237,6,1,831,'CHARGES H.A.O CONSTATEES',1236,0,0,'2021-11-05 15:42:26',NULL,NULL),(1238,6,1,834,'PERTES SUR CREANCES H.A.O',1236,0,0,'2021-11-05 15:42:26',NULL,NULL),(1239,6,1,835,'DONS ET LIBERALITES ACCORDES',1236,0,0,'2021-11-05 15:42:26',NULL,NULL),(1240,6,1,836,'ABANDONS DE CREANCES CONSENTIS',1236,0,0,'2021-11-05 15:42:26',NULL,NULL),(1241,6,1,837,'CHARGES LIEES AU OPERATIONS DE LIQUIDATION',1236,0,0,'2021-11-05 15:42:26',NULL,NULL),(1242,6,1,839,'CHARGES POUR DEPRECIATION ET PROVISIONS POUR RISQUES A COURT TERME H.A.O',1236,0,0,'2021-11-05 15:42:26',NULL,NULL),(1243,6,1,84,'PRODUITS HORS ACTIVITÉS ORDINAIRES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1244,6,1,841,'PRODUITS H.A.O CONSTATEES',1243,0,0,'2021-11-05 15:42:26',NULL,NULL),(1245,6,1,843,'PRODUITS LIES AUX OPERATIONS DE RESTRUCTURATION',1243,0,0,'2021-11-05 15:42:26',NULL,NULL),(1246,6,1,844,'INDEMNITES ET SUBVENTIONS H.A.O (Entité agricole)',1243,0,0,'2021-11-05 15:42:26',NULL,NULL),(1247,6,1,845,'DONS ET LOBERALITES OBTRNUS',1243,0,0,'2021-11-05 15:42:26',NULL,NULL),(1248,6,1,846,'ABANDONS DE CREANCES OBTENUS',1243,0,0,'2021-11-05 15:42:26',NULL,NULL),(1249,6,1,847,'PRODUITS LIES AUX OPERATIONS DE LIQUIDATION',1243,0,0,'2021-11-05 15:42:26',NULL,NULL),(1250,6,1,848,'TRANSFERT DES CHARGES H.A.O',1243,0,0,'2021-11-05 15:42:26',NULL,NULL),(1251,6,1,849,'REPRISES DE CHARGES PROVISIONNEES H.A.O',1243,0,0,'2021-11-05 15:42:26',NULL,NULL),(1252,6,1,85,'DOTATIONS HORS ACTIVITÉS ORDINAIRES',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1253,6,1,851,'DOTATIONS AUX PROVISIONS REGLEMANTEES',1252,0,0,'2021-11-05 15:42:26',NULL,NULL),(1254,6,1,852,'DOTATIONS AUX AMORTISSEMENT H.A.O',1252,0,0,'2021-11-05 15:42:26',NULL,NULL),(1255,6,1,853,'DOTATIONS AUX DEPRECIATIONS H.A.O',1252,0,0,'2021-11-05 15:42:26',NULL,NULL),(1256,6,1,854,'DOTATIONS AUX PROVISIONS POUR RISQUES ET CHARGES H.A.0',1252,0,0,'2021-11-05 15:42:26',NULL,NULL),(1257,6,1,858,'AUTRES DOTATIONS H.A.O',1252,0,0,'2021-11-05 15:42:26',NULL,NULL),(1258,6,1,86,'REPRISES DES CHARGES, PROVISIONS ET DEPRECIATIONS H.A.O',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1259,6,1,861,'DOTATIONS DES PROVISIONS REGLEMANTEES',1258,0,0,'2021-11-05 15:42:26',NULL,NULL),(1260,6,1,862,'REPRISE D\' AMORTISSEMENT H.A.O',1258,0,0,'2021-11-05 15:42:26',NULL,NULL),(1261,6,1,863,'REPRISE DE DEPRECIATION H.A.O',1258,0,0,'2021-11-05 15:42:26',NULL,NULL),(1262,6,1,864,'REPRISE DE PROVISIONS POUR RISQUES ET CHARGES H.A.0',1258,0,0,'2021-11-05 15:42:26',NULL,NULL),(1263,6,1,868,'AUTRES REPRISES H.A.O',1258,0,0,'2021-11-05 15:42:26',NULL,NULL),(1264,6,1,88,'SUBVENTIONS D\'EQUILIBRE',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1265,6,1,881,'ETAT',1264,0,0,'2021-11-05 15:42:26',NULL,NULL),(1266,6,1,882,'COLLECTIVITES PUBLIQUES',1264,0,0,'2021-11-05 15:42:26',NULL,NULL),(1267,6,1,884,'GROUPE',1264,0,0,'2021-11-05 15:42:26',NULL,NULL),(1268,6,1,888,'AUTRES',1264,0,0,'2021-11-05 15:42:26',NULL,NULL),(1269,6,1,89,'IMPOTS SUR LE RESULTAT',0,0,0,'2021-11-05 15:42:26',NULL,NULL),(1270,6,1,891,'IMPOTS SUR LES BENEFICES DE L\'EXERCICE',1269,0,0,'2021-11-05 15:42:26',NULL,NULL),(1271,6,1,892,'RAPPEL D\'IMPOT SUR LE RESULTATS ANTERIEURS',1269,0,0,'2021-11-05 15:42:26',NULL,NULL),(1272,6,1,895,'IMPOT MINIMUM FORFAITAIRE (I.M.F)',1269,0,0,'2021-11-05 15:42:26',NULL,NULL),(1273,6,1,899,'DEGREVEMENT ET ANNULATIONS D\'IMPOTS SUR LES RESULTATS ANTERIEURS',1269,0,0,'2021-11-05 15:42:26',NULL,NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_category`
--

DROP TABLE IF EXISTS `account_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_category` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation_key` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_category_1` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_category`
--

LOCK TABLES `account_category` WRITE;
/*!40000 ALTER TABLE `account_category` DISABLE KEYS */;
INSERT INTO `account_category` VALUES (1,'income','ACCOUNT.TYPES.INCOME'),(2,'expense','ACCOUNT.TYPES.EXPENSE'),(3,'balance','ACCOUNT.TYPES.BALANCE'),(4,'title','ACCOUNT.TYPES.TITLE');
/*!40000 ALTER TABLE `account_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_reference`
--

DROP TABLE IF EXISTS `account_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_reference` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `abbr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` mediumint unsigned DEFAULT NULL,
  `reference_type_id` mediumint unsigned DEFAULT NULL,
  `is_amo_dep` tinyint(1) DEFAULT '0' COMMENT 'Ammortissement or depreciation',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_reference_1` (`abbr`,`is_amo_dep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_reference`
--

LOCK TABLES `account_reference` WRITE;
/*!40000 ALTER TABLE `account_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_reference_item`
--

DROP TABLE IF EXISTS `account_reference_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_reference_item` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `account_reference_id` mediumint unsigned NOT NULL,
  `account_id` int unsigned NOT NULL,
  `is_exception` tinyint(1) DEFAULT '0' COMMENT 'Except this for reference calculation',
  `credit_balance` tinyint(1) DEFAULT '0' COMMENT 'Only if credit balance',
  `debit_balance` tinyint(1) DEFAULT '0' COMMENT 'Only if debit balance',
  PRIMARY KEY (`id`),
  KEY `account_reference_id` (`account_reference_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `acc_ref_item__acc_ref` FOREIGN KEY (`account_reference_id`) REFERENCES `account_reference` (`id`),
  CONSTRAINT `acc_ref_item__account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_reference_item`
--

LOCK TABLES `account_reference_item` WRITE;
/*!40000 ALTER TABLE `account_reference_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_reference_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_reference_type`
--

DROP TABLE IF EXISTS `account_reference_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_reference_type` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_reference_type_1` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_reference_type`
--

LOCK TABLES `account_reference_type` WRITE;
/*!40000 ALTER TABLE `account_reference_type` DISABLE KEYS */;
INSERT INTO `account_reference_type` VALUES (1,'FORM.LABELS.COST_CENTER',1),(2,'FORM.LABELS.BALANCE_SHEET',1),(3,'FORM.LABELS.PROFIT_LOSS',1),(4,'FORM.LABELS.BREAK_EVEN',1),(5,'FORM.LABELS.ANALYSIS_TOOLS.TITLE',1);
/*!40000 ALTER TABLE `account_reference_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_type`
--

DROP TABLE IF EXISTS `account_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_type` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation_key` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_category_id` mediumint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_type_1` (`type`),
  KEY `account_category_id` (`account_category_id`),
  CONSTRAINT `acc_type__acc_category` FOREIGN KEY (`account_category_id`) REFERENCES `account_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_type`
--

LOCK TABLES `account_type` WRITE;
/*!40000 ALTER TABLE `account_type` DISABLE KEYS */;
INSERT INTO `account_type` VALUES (1,'asset','ACCOUNT.TYPES.ASSET',3),(2,'liability','ACCOUNT.TYPES.LIABILITY',3),(3,'equity','ACCOUNT.TYPES.EQUITY',3),(4,'income','ACCOUNT.TYPES.INCOME',1),(5,'expense','ACCOUNT.TYPES.EXPENSE',2),(6,'title','ACCOUNT.TYPES.TITLE',4);
/*!40000 ALTER TABLE `account_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES (1,'FORM.LABELS.CAN_EDIT_ROLES'),(2,'FORM.LABELS.CAN_UNPOST_TRANSACTIONS'),(3,'USERS.ACTIONS.DELETE_CASH_PAYMENT'),(4,'USERS.ACTIONS.DELETE_INVOICE'),(5,'USERS.ACTIONS.DELETE_PURCHASE_ORDER'),(6,'USERS.ACTIONS.DELETE_STOCK_MOVEMENT'),(7,'USERS.ACTIONS.DELETE_VOUCHER'),(8,'USERS.ACTIONS.EDIT_LOT');
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allocation_key`
--

DROP TABLE IF EXISTS `allocation_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allocation_key` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `auxiliary_cost_center_id` mediumint unsigned NOT NULL,
  `principal_cost_center_id` mediumint unsigned NOT NULL,
  `rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `user_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auxiliary_cost_center_id` (`auxiliary_cost_center_id`),
  KEY `principal_cost_center_id` (`principal_cost_center_id`),
  KEY `allocation_key__user` (`user_id`),
  CONSTRAINT `allocation_key__auxiliary_fc` FOREIGN KEY (`auxiliary_cost_center_id`) REFERENCES `cost_center` (`id`),
  CONSTRAINT `allocation_key__principal_fc` FOREIGN KEY (`principal_cost_center_id`) REFERENCES `cost_center` (`id`),
  CONSTRAINT `allocation_key__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allocation_key`
--

LOCK TABLES `allocation_key` WRITE;
/*!40000 ALTER TABLE `allocation_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `allocation_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analysis_tool_type`
--

DROP TABLE IF EXISTS `analysis_tool_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analysis_tool_type` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_balance_sheet` tinyint(1) DEFAULT '0',
  `rank` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `analysis_tool_type_1` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analysis_tool_type`
--

LOCK TABLES `analysis_tool_type` WRITE;
/*!40000 ALTER TABLE `analysis_tool_type` DISABLE KEYS */;
INSERT INTO `analysis_tool_type` VALUES (1,'FORM.LABELS.ANALYSIS_TOOLS.COSTS',0,1),(2,'FORM.LABELS.ANALYSIS_TOOLS.RECEIVABLES',1,4),(3,'FORM.LABELS.ANALYSIS_TOOLS.PROFITS',0,2),(4,'FORM.LABELS.ANALYSIS_TOOLS.DEBTS',1,1);
/*!40000 ALTER TABLE `analysis_tool_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bed`
--

DROP TABLE IF EXISTS `bed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bed` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_uuid` binary(16) NOT NULL,
  `is_occupied` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bed_label_0` (`label`,`room_uuid`),
  KEY `bed__user` (`user_id`),
  KEY `bed__room` (`room_uuid`),
  CONSTRAINT `bed__room` FOREIGN KEY (`room_uuid`) REFERENCES `room` (`uuid`),
  CONSTRAINT `bed__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bed`
--

LOCK TABLES `bed` WRITE;
/*!40000 ALTER TABLE `bed` DISABLE KEYS */;
/*!40000 ALTER TABLE `bed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `break_even_reference`
--

DROP TABLE IF EXISTS `break_even_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `break_even_reference` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_cost` tinyint(1) DEFAULT '0',
  `is_variable` tinyint(1) DEFAULT '0',
  `is_turnover` tinyint(1) DEFAULT '0',
  `account_reference_id` mediumint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `break_even_reference_1` (`label`),
  KEY `account_reference_id` (`account_reference_id`),
  CONSTRAINT `break_even_ref__acc_ref` FOREIGN KEY (`account_reference_id`) REFERENCES `account_reference` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `break_even_reference`
--

LOCK TABLES `break_even_reference` WRITE;
/*!40000 ALTER TABLE `break_even_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `break_even_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `budget`
--

DROP TABLE IF EXISTS `budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budget` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int unsigned NOT NULL,
  `period_id` mediumint unsigned NOT NULL,
  `budget` decimal(10,4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `budget_1` (`account_id`,`period_id`),
  KEY `account_id` (`account_id`),
  KEY `period_id` (`period_id`),
  CONSTRAINT `budget__account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `budget__period` FOREIGN KEY (`period_id`) REFERENCES `period` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget`
--

LOCK TABLES `budget` WRITE;
/*!40000 ALTER TABLE `budget` DISABLE KEYS */;
/*!40000 ALTER TABLE `budget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash`
--

DROP TABLE IF EXISTS `cash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash` (
  `uuid` binary(16) NOT NULL,
  `project_id` smallint unsigned NOT NULL,
  `reference` int unsigned NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `debtor_uuid` binary(16) NOT NULL,
  `currency_id` tinyint unsigned NOT NULL,
  `amount` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000',
  `user_id` smallint unsigned NOT NULL,
  `cashbox_id` mediumint unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_caution` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reversed` tinyint NOT NULL DEFAULT '0',
  `edited` tinyint NOT NULL DEFAULT '0',
  `posted` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `cash_1` (`reference`,`project_id`),
  KEY `project_id` (`project_id`),
  KEY `reference` (`reference`),
  KEY `debtor_uuid` (`debtor_uuid`),
  KEY `user_id` (`user_id`),
  KEY `cashbox_id` (`cashbox_id`),
  KEY `cash__currency` (`currency_id`),
  CONSTRAINT `cash__cashbox` FOREIGN KEY (`cashbox_id`) REFERENCES `cash_box` (`id`),
  CONSTRAINT `cash__currency` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  CONSTRAINT `cash__debtor` FOREIGN KEY (`debtor_uuid`) REFERENCES `debtor` (`uuid`),
  CONSTRAINT `cash__project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `cash__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash`
--

LOCK TABLES `cash` WRITE;
/*!40000 ALTER TABLE `cash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `cash_before_insert` BEFORE INSERT ON `cash` FOR EACH ROW SET NEW.reference = (SELECT IF(NEW.reference, NEW.reference, IFNULL(MAX(cash.reference) + 1, 1)) FROM cash WHERE cash.project_id = new.project_id) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `cash_document_map` AFTER INSERT ON `cash` FOR EACH ROW BEGIN
  INSERT INTO document_map
    SELECT new.uuid, CONCAT_WS('.', 'CP', project.abbr, new.reference) FROM project WHERE project.id = new.project_id ON DUPLICATE KEY UPDATE text=text;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cash_box`
--

DROP TABLE IF EXISTS `cash_box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_box` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` smallint unsigned NOT NULL,
  `is_auxiliary` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cash_box_1` (`label`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `cashbox__project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_box`
--

LOCK TABLES `cash_box` WRITE;
/*!40000 ALTER TABLE `cash_box` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_box` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_box_account_currency`
--

DROP TABLE IF EXISTS `cash_box_account_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_box_account_currency` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `currency_id` tinyint unsigned NOT NULL,
  `cash_box_id` mediumint unsigned NOT NULL,
  `account_id` int unsigned NOT NULL,
  `transfer_account_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cash_box_account_currency_1` (`currency_id`,`cash_box_id`,`account_id`),
  UNIQUE KEY `cash_box_account_currency_2` (`currency_id`,`cash_box_id`,`transfer_account_id`),
  KEY `currency_id` (`currency_id`),
  KEY `cash_box_id` (`cash_box_id`),
  KEY `account_id` (`account_id`),
  KEY `transfer_account_id` (`transfer_account_id`),
  CONSTRAINT `cashbox_acc_currency__account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `cashbox_acc_currency__cashbox` FOREIGN KEY (`cash_box_id`) REFERENCES `cash_box` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cashbox_acc_currency__currency` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  CONSTRAINT `cashbox_acc_currency__transfert_acc` FOREIGN KEY (`transfer_account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_box_account_currency`
--

LOCK TABLES `cash_box_account_currency` WRITE;
/*!40000 ALTER TABLE `cash_box_account_currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_box_account_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash_item`
--

DROP TABLE IF EXISTS `cash_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash_item` (
  `uuid` binary(16) NOT NULL,
  `cash_uuid` binary(16) NOT NULL,
  `amount` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000',
  `invoice_uuid` binary(16) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `cash_uuid` (`cash_uuid`),
  KEY `invoice_uuid` (`invoice_uuid`),
  CONSTRAINT `cash_item__cash` FOREIGN KEY (`cash_uuid`) REFERENCES `cash` (`uuid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash_item`
--

LOCK TABLES `cash_item` WRITE;
/*!40000 ALTER TABLE `cash_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashbox_permission`
--

DROP TABLE IF EXISTS `cashbox_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cashbox_permission` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` smallint unsigned NOT NULL,
  `cashbox_id` mediumint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cashbox_permission_1` (`user_id`,`cashbox_id`),
  KEY `user_id` (`user_id`),
  KEY `cashbox_id` (`cashbox_id`),
  CONSTRAINT `cashbox_permission__cashbox` FOREIGN KEY (`cashbox_id`) REFERENCES `cash_box` (`id`),
  CONSTRAINT `cashbox_permission__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashbox_permission`
--

LOCK TABLES `cashbox_permission` WRITE;
/*!40000 ALTER TABLE `cashbox_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cashbox_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choices_list_management`
--

DROP TABLE IF EXISTS `choices_list_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `choices_list_management` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixed` tinyint(1) DEFAULT '0',
  `parent` mediumint unsigned DEFAULT '0',
  `group_label` mediumint unsigned DEFAULT '0',
  `is_group` tinyint(1) NOT NULL DEFAULT '0',
  `is_title` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `choices_list_management_1` (`label`,`name`,`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choices_list_management`
--

LOCK TABLES `choices_list_management` WRITE;
/*!40000 ALTER TABLE `choices_list_management` DISABLE KEYS */;
/*!40000 ALTER TABLE `choices_list_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_accounting`
--

DROP TABLE IF EXISTS `config_accounting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_accounting` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_accounting_1` (`label`),
  UNIQUE KEY `config_accounting_2` (`label`,`account_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `config_acc__account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_accounting`
--

LOCK TABLES `config_accounting` WRITE;
/*!40000 ALTER TABLE `config_accounting` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_accounting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_employee`
--

DROP TABLE IF EXISTS `config_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_employee` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `label` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_employee`
--

LOCK TABLES `config_employee` WRITE;
/*!40000 ALTER TABLE `config_employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_employee_item`
--

DROP TABLE IF EXISTS `config_employee_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_employee_item` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `config_employee_id` int unsigned NOT NULL,
  `employee_uuid` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `config_employee_id_2` (`config_employee_id`,`employee_uuid`),
  KEY `config_employee_id` (`config_employee_id`),
  KEY `employee_uuid` (`employee_uuid`),
  CONSTRAINT `config_employee_item__config_employee` FOREIGN KEY (`config_employee_id`) REFERENCES `config_employee` (`id`),
  CONSTRAINT `config_employee_item__employee` FOREIGN KEY (`employee_uuid`) REFERENCES `employee` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_employee_item`
--

LOCK TABLES `config_employee_item` WRITE;
/*!40000 ALTER TABLE `config_employee_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_employee_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_rubric`
--

DROP TABLE IF EXISTS `config_rubric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_rubric` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `label` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_rubric`
--

LOCK TABLES `config_rubric` WRITE;
/*!40000 ALTER TABLE `config_rubric` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_rubric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_rubric_item`
--

DROP TABLE IF EXISTS `config_rubric_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_rubric_item` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `config_rubric_id` int unsigned NOT NULL,
  `rubric_payroll_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `config_rubric_id` (`config_rubric_id`),
  KEY `rubric_payroll_id` (`rubric_payroll_id`),
  CONSTRAINT `config_rubric_item__config_rubric` FOREIGN KEY (`config_rubric_id`) REFERENCES `config_rubric` (`id`),
  CONSTRAINT `config_rubric_item__rubric_payroll` FOREIGN KEY (`rubric_payroll_id`) REFERENCES `rubric_payroll` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_rubric_item`
--

LOCK TABLES `config_rubric_item` WRITE;
/*!40000 ALTER TABLE `config_rubric_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_rubric_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_week_days`
--

DROP TABLE IF EXISTS `config_week_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_week_days` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `indice` int unsigned NOT NULL,
  `weekend_config_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `weekend_config_id` (`weekend_config_id`),
  CONSTRAINT `config_week_days__weekend_config` FOREIGN KEY (`weekend_config_id`) REFERENCES `weekend_config` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_week_days`
--

LOCK TABLES `config_week_days` WRITE;
/*!40000 ALTER TABLE `config_week_days` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_week_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_analysis_tools`
--

DROP TABLE IF EXISTS `configuration_analysis_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_analysis_tools` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_reference_id` mediumint unsigned NOT NULL,
  `analysis_tool_type_id` mediumint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `configuration_analysis_tools_1` (`label`),
  KEY `account_reference_id` (`account_reference_id`),
  KEY `analysis_tool_type_id` (`analysis_tool_type_id`),
  CONSTRAINT `config_analysis_tools__acc_ref` FOREIGN KEY (`account_reference_id`) REFERENCES `account_reference` (`id`),
  CONSTRAINT `config_analysis_tools__analysis_tool_type` FOREIGN KEY (`analysis_tool_type_id`) REFERENCES `analysis_tool_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_analysis_tools`
--

LOCK TABLES `configuration_analysis_tools` WRITE;
/*!40000 ALTER TABLE `configuration_analysis_tools` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_analysis_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cost_center`
--

DROP TABLE IF EXISTS `cost_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cost_center` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_principal` tinyint unsigned DEFAULT '0',
  `project_id` smallint unsigned DEFAULT NULL,
  `allocation_method` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'proportional',
  `allocation_basis_id` mediumint unsigned DEFAULT NULL,
  `step_order` smallint NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cost_center_1` (`label`),
  KEY `cost_center__allocation_basis` (`allocation_basis_id`),
  CONSTRAINT `cost_center__allocation_basis` FOREIGN KEY (`allocation_basis_id`) REFERENCES `cost_center_allocation_basis` (`id`),
  CONSTRAINT `cost_center__chk_allocation_method` CHECK ((`allocation_method` in (_utf8mb4'proportional',_utf8mb4'flat')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_center`
--

LOCK TABLES `cost_center` WRITE;
/*!40000 ALTER TABLE `cost_center` DISABLE KEYS */;
/*!40000 ALTER TABLE `cost_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cost_center_aggregate`
--

DROP TABLE IF EXISTS `cost_center_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cost_center_aggregate` (
  `period_id` mediumint unsigned NOT NULL,
  `debit` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000',
  `credit` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000',
  `cost_center_id` mediumint unsigned NOT NULL,
  `is_income` tinyint(1) NOT NULL DEFAULT '0',
  KEY `cost_center_id` (`cost_center_id`),
  KEY `period_id` (`period_id`),
  CONSTRAINT `cost_center_aggregate__cost_center_id` FOREIGN KEY (`cost_center_id`) REFERENCES `cost_center` (`id`),
  CONSTRAINT `cost_center_aggregate__period` FOREIGN KEY (`period_id`) REFERENCES `period` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_center_aggregate`
--

LOCK TABLES `cost_center_aggregate` WRITE;
/*!40000 ALTER TABLE `cost_center_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `cost_center_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cost_center_allocation`
--

DROP TABLE IF EXISTS `cost_center_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cost_center_allocation` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `row_uuid` binary(16) NOT NULL,
  `trans_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` int unsigned NOT NULL,
  `is_cost` tinyint unsigned DEFAULT '0',
  `is_variable` tinyint unsigned DEFAULT '0',
  `is_turnover` tinyint unsigned DEFAULT '0',
  `auxiliary_cost_center_id` mediumint unsigned NOT NULL,
  `principal_cost_center_id` mediumint unsigned NOT NULL,
  `debit_equiv` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `credit_equiv` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `date_distribution` datetime NOT NULL,
  `user_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `row_uuid` (`row_uuid`),
  KEY `account_id` (`account_id`),
  KEY `trans_id` (`trans_id`),
  KEY `auxiliary_cost_center_id` (`auxiliary_cost_center_id`),
  KEY `principal_cost_center_id` (`principal_cost_center_id`),
  CONSTRAINT `cost_center_allocation__account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `cost_center_allocation__auxiliary_cost_center` FOREIGN KEY (`auxiliary_cost_center_id`) REFERENCES `cost_center` (`id`),
  CONSTRAINT `cost_center_allocation__general_ledger` FOREIGN KEY (`row_uuid`) REFERENCES `general_ledger` (`uuid`),
  CONSTRAINT `cost_center_allocation__principal_cost_center` FOREIGN KEY (`principal_cost_center_id`) REFERENCES `cost_center` (`id`),
  CONSTRAINT `cost_center_allocation__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_center_allocation`
--

LOCK TABLES `cost_center_allocation` WRITE;
/*!40000 ALTER TABLE `cost_center_allocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `cost_center_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cost_center_allocation_basis`
--

DROP TABLE IF EXISTS `cost_center_allocation_basis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cost_center_allocation_basis` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `units` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_predefined` tinyint(1) NOT NULL DEFAULT '0',
  `is_currency` tinyint(1) NOT NULL DEFAULT '0',
  `decimal_places` tinyint NOT NULL DEFAULT '0',
  `is_computed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_center_allocation_basis`
--

LOCK TABLES `cost_center_allocation_basis` WRITE;
/*!40000 ALTER TABLE `cost_center_allocation_basis` DISABLE KEYS */;
INSERT INTO `cost_center_allocation_basis` VALUES (1,'ALLOCATION_BASIS_DIRECT_COST','','ALLOCATION_BASIS_DIRECT_COST_DESCRIPTION',1,1,2,0),(2,'ALLOCATION_BASIS_NUM_EMPLOYEES','','ALLOCATION_BASIS_NUM_EMPLOYEES_DESCRIPTION',1,0,0,1),(3,'ALLOCATION_BASIS_AREA_USED','ALLOCATION_BASIS_AREA_USED_UNITS','ALLOCATION_BASIS_AREA_USED_DESCRIPTION',1,0,1,0),(4,'ALLOCATION_BASIS_ELECTRICITY_CONSUMED','ALLOCATION_BASIS_ELECTRICITY_CONSUMED_UNITS','ALLOCATION_BASIS_ELECTRICITY_CONSUMED_DESCRIPTION',1,0,1,0),(5,'ALLOCATION_BASIS_NUM_COMPUTERS','','ALLOCATION_BASIS_NUM_COMPUTERS_DESCRIPTION',1,0,0,0),(6,'ALLOCATION_BASIS_NUM_LABOR_HOURS','ALLOCATION_BASIS_NUM_LABOR_HOURS_UNITS','ALLOCATION_BASIS_NUM_LABOR_HOURS_DESCRIPTION',1,0,1,0),(7,'ALLOCATION_BASIS_NUM_PATIENTS','','ALLOCATION_BASIS_NUM_PATIENTS_DESCRIPTION',1,0,0,0),(8,'ALLOCATION_BASIS_NUM_LAB_TESTS','','ALLOCATION_BASIS_NUM_LAB_TESTS_DESCRIPTION',1,0,0,0);
/*!40000 ALTER TABLE `cost_center_allocation_basis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cost_center_allocation_basis_value`
--

DROP TABLE IF EXISTS `cost_center_allocation_basis_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cost_center_allocation_basis_value` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `quantity` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `cost_center_id` mediumint unsigned NOT NULL,
  `basis_id` mediumint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_allocation_cost_center_basis` (`cost_center_id`,`basis_id`),
  KEY `cost_center_basis_value__basis` (`basis_id`),
  CONSTRAINT `cost_center_basis_value__basis` FOREIGN KEY (`basis_id`) REFERENCES `cost_center_allocation_basis` (`id`),
  CONSTRAINT `cost_center_basis_value__cost_center` FOREIGN KEY (`cost_center_id`) REFERENCES `cost_center` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cost_center_allocation_basis_value`
--

LOCK TABLES `cost_center_allocation_basis_value` WRITE;
/*!40000 ALTER TABLE `cost_center_allocation_basis_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `cost_center_allocation_basis_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `uuid` binary(16) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `country_1` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_','République Démocratique du Congo');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creditor`
--

DROP TABLE IF EXISTS `creditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creditor` (
  `uuid` binary(16) NOT NULL,
  `group_uuid` binary(16) NOT NULL,
  `text` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `creditor_1` (`text`),
  UNIQUE KEY `creditor_2` (`text`,`group_uuid`),
  KEY `group_uuid` (`group_uuid`),
  CONSTRAINT `creditor__creditor_group` FOREIGN KEY (`group_uuid`) REFERENCES `creditor_group` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditor`
--

LOCK TABLES `creditor` WRITE;
/*!40000 ALTER TABLE `creditor` DISABLE KEYS */;
/*!40000 ALTER TABLE `creditor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creditor_group`
--

DROP TABLE IF EXISTS `creditor_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creditor_group` (
  `enterprise_id` smallint unsigned NOT NULL,
  `uuid` binary(16) NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` int unsigned NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `creditor_group_1` (`name`),
  UNIQUE KEY `credit_group_2` (`name`,`account_id`),
  KEY `account_id` (`account_id`),
  KEY `enterprise_id` (`enterprise_id`),
  CONSTRAINT `creditor_group__account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `creditor_group__enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditor_group`
--

LOCK TABLES `creditor_group` WRITE;
/*!40000 ALTER TABLE `creditor_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `creditor_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `critere`
--

DROP TABLE IF EXISTS `critere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `critere` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `critere`
--

LOCK TABLES `critere` WRITE;
/*!40000 ALTER TABLE `critere` DISABLE KEYS */;
/*!40000 ALTER TABLE `critere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron`
--

DROP TABLE IF EXISTS `cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cron` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `label` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron`
--

LOCK TABLES `cron` WRITE;
/*!40000 ALTER TABLE `cron` DISABLE KEYS */;
INSERT INTO `cron` VALUES (1,'CRON.DAILY','0 1 * * *'),(2,'CRON.WEEKLY','0 1 * * 0'),(3,'CRON.MONTHLY','0 1 30 * *'),(4,'CRON.YEARLY','0 1 31 11 *');
/*!40000 ALTER TABLE `cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_email_report`
--

DROP TABLE IF EXISTS `cron_email_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cron_email_report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entity_group_uuid` binary(16) NOT NULL,
  `cron_id` smallint NOT NULL,
  `report_id` smallint NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_send` datetime DEFAULT NULL,
  `next_send` datetime DEFAULT NULL,
  `has_dynamic_dates` tinyint DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `label` (`label`,`report_id`),
  KEY `entity_group_uuid` (`entity_group_uuid`),
  CONSTRAINT `cron_email_report__entity_group` FOREIGN KEY (`entity_group_uuid`) REFERENCES `entity_group` (`uuid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_email_report`
--

LOCK TABLES `cron_email_report` WRITE;
/*!40000 ALTER TABLE `cron_email_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_email_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format_key` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `min_monentary_unit` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currency_1` (`name`),
  UNIQUE KEY `currency_2` (`symbol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'Congolese Francs','fc','Fc',NULL,50.00),(2,'United States Dollars','usd','$',NULL,0.01),(3,'Euro','EUR','€',NULL,0.01);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_collector_management`
--

DROP TABLE IF EXISTS `data_collector_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_collector_management` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `version_number` int unsigned NOT NULL,
  `color` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_related_patient` tinyint(1) NOT NULL DEFAULT '0',
  `include_patient_data` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_collector_management_1` (`label`,`version_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_collector_management`
--

LOCK TABLES `data_collector_management` WRITE;
/*!40000 ALTER TABLE `data_collector_management` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_collector_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debtor`
--

DROP TABLE IF EXISTS `debtor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `debtor` (
  `uuid` binary(16) NOT NULL,
  `group_uuid` binary(16) NOT NULL,
  `text` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `group_uuid` (`group_uuid`),
  CONSTRAINT `debtor__debtor_group` FOREIGN KEY (`group_uuid`) REFERENCES `debtor_group` (`uuid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debtor`
--

LOCK TABLES `debtor` WRITE;
/*!40000 ALTER TABLE `debtor` DISABLE KEYS */;
/*!40000 ALTER TABLE `debtor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debtor_group`
--

DROP TABLE IF EXISTS `debtor_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `debtor_group` (
  `enterprise_id` smallint unsigned NOT NULL,
  `uuid` binary(16) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` int unsigned NOT NULL,
  `location_id` binary(16) NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` text COLLATE utf8mb4_unicode_ci,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `max_credit` mediumint unsigned DEFAULT '0',
  `is_convention` tinyint(1) NOT NULL DEFAULT '0',
  `price_list_uuid` binary(16) DEFAULT NULL,
  `apply_discounts` tinyint(1) NOT NULL DEFAULT '1',
  `apply_invoicing_fees` tinyint(1) NOT NULL DEFAULT '1',
  `apply_subsidies` tinyint(1) NOT NULL DEFAULT '1',
  `color` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `debtor_group_1` (`name`),
  UNIQUE KEY `debtor_group_2` (`name`,`account_id`),
  KEY `enterprise_id` (`enterprise_id`),
  KEY `account_id` (`account_id`),
  KEY `location_id` (`location_id`),
  KEY `price_list_uuid` (`price_list_uuid`),
  CONSTRAINT `debtor_group__account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `debtor_group__enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `debtor_group__location` FOREIGN KEY (`location_id`) REFERENCES `village` (`uuid`),
  CONSTRAINT `debtor_group__pricelist` FOREIGN KEY (`price_list_uuid`) REFERENCES `price_list` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debtor_group`
--

LOCK TABLES `debtor_group` WRITE;
/*!40000 ALTER TABLE `debtor_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `debtor_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debtor_group_history`
--

DROP TABLE IF EXISTS `debtor_group_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `debtor_group_history` (
  `uuid` binary(16) NOT NULL,
  `debtor_uuid` binary(16) DEFAULT NULL,
  `previous_debtor_group` binary(16) DEFAULT NULL,
  `next_debtor_group` binary(16) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `debtor_uuid` (`debtor_uuid`),
  KEY `previous_debtor_group` (`previous_debtor_group`),
  KEY `next_debtor_group` (`next_debtor_group`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `debtor_group_history__debtor` FOREIGN KEY (`debtor_uuid`) REFERENCES `debtor` (`uuid`),
  CONSTRAINT `debtor_group_history__next_debtor_group` FOREIGN KEY (`next_debtor_group`) REFERENCES `debtor_group` (`uuid`),
  CONSTRAINT `debtor_group_history__prev_debtor_group` FOREIGN KEY (`previous_debtor_group`) REFERENCES `debtor_group` (`uuid`),
  CONSTRAINT `debtor_group_history__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debtor_group_history`
--

LOCK TABLES `debtor_group_history` WRITE;
/*!40000 ALTER TABLE `debtor_group_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `debtor_group_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debtor_group_invoicing_fee`
--

DROP TABLE IF EXISTS `debtor_group_invoicing_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `debtor_group_invoicing_fee` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `debtor_group_uuid` binary(16) NOT NULL,
  `invoicing_fee_id` smallint unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `debtor_group_uuid` (`debtor_group_uuid`),
  KEY `invoicing_fee_id` (`invoicing_fee_id`),
  CONSTRAINT `ebtor_group_invoicing_fee__debtor_group` FOREIGN KEY (`debtor_group_uuid`) REFERENCES `debtor_group` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ebtor_group_invoicing_fee__invoicing_fee` FOREIGN KEY (`invoicing_fee_id`) REFERENCES `invoicing_fee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debtor_group_invoicing_fee`
--

LOCK TABLES `debtor_group_invoicing_fee` WRITE;
/*!40000 ALTER TABLE `debtor_group_invoicing_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `debtor_group_invoicing_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debtor_group_subsidy`
--

DROP TABLE IF EXISTS `debtor_group_subsidy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `debtor_group_subsidy` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `debtor_group_uuid` binary(16) NOT NULL,
  `subsidy_id` smallint unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `debtor_group_subsidy_1` (`debtor_group_uuid`,`subsidy_id`),
  KEY `debtor_group_uuid` (`debtor_group_uuid`),
  KEY `subsidy_id` (`subsidy_id`),
  CONSTRAINT `debtorgroup_subsidy__debtor_group` FOREIGN KEY (`debtor_group_uuid`) REFERENCES `debtor_group` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `debtorgroup_subsidy__subsidy` FOREIGN KEY (`subsidy_id`) REFERENCES `subsidy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debtor_group_subsidy`
--

LOCK TABLES `debtor_group_subsidy` WRITE;
/*!40000 ALTER TABLE `debtor_group_subsidy` DISABLE KEYS */;
/*!40000 ALTER TABLE `debtor_group_subsidy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depot`
--

DROP TABLE IF EXISTS `depot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depot` (
  `uuid` binary(16) NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `enterprise_id` smallint unsigned NOT NULL,
  `is_warehouse` smallint unsigned NOT NULL DEFAULT '0',
  `allow_entry_purchase` tinyint unsigned NOT NULL DEFAULT '0',
  `allow_entry_donation` tinyint unsigned NOT NULL DEFAULT '0',
  `allow_entry_integration` tinyint unsigned NOT NULL DEFAULT '0',
  `allow_entry_transfer` tinyint unsigned NOT NULL DEFAULT '0',
  `allow_exit_debtor` tinyint unsigned NOT NULL DEFAULT '0',
  `allow_exit_service` tinyint unsigned NOT NULL DEFAULT '0',
  `allow_exit_transfer` tinyint unsigned NOT NULL DEFAULT '0',
  `allow_exit_loss` tinyint unsigned NOT NULL DEFAULT '0',
  `location_uuid` binary(16) DEFAULT NULL,
  `min_months_security_stock` decimal(19,4) NOT NULL DEFAULT '2.0000',
  `parent_uuid` binary(16) DEFAULT NULL,
  `dhis2_uid` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_purchase_interval` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `depot_1` (`text`),
  KEY `parent_uuid` (`parent_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depot`
--

LOCK TABLES `depot` WRITE;
/*!40000 ALTER TABLE `depot` DISABLE KEYS */;
INSERT INTO `depot` VALUES (_binary '\��\Z;�\�B��7�1�','BCZ - ks Banga Lubaka',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\��\�;�\�B��7�1�','BCZ - ks Bulape',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\��6;�\�B��7�1�','BCZ - ks Dekese',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\��y;�\�B��7�1�','BCZ - ks Ilebo',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\���;�\�B��7�1�','BCZ - ks Kakenge',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\��\�;�\�B��7�1�','BCZ - ks Kalonda Ouest',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\��6;�\�B��7�1�','BCZ - ks Kamonia',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\��s;�\�B��7�1�','BCZ - ks Kamwesha',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\���;�\�B��7�1�','BCZ - ks Kanzala',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\��\�;�\�B��7�1�','BCZ - ks Kitangwa',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\��$;�\�B��7�1�','BCZ - ks Luebo',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\��`;�\�B��7�1�','BCZ - ks Mikope',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\���;�\�B��7�1�','BCZ - ks Mushenge',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\��\�;�\�B��7�1�','BCZ - ks Mutena',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\��I;�\�B��7�1�','BCZ - ks Mweka',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\���;�\�B��7�1�','BCZ - ks Ndjoko Mpunda',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\��\�;�\�B��7�1�','BCZ - ks Nyanga',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '\��\0;�\�B��7�1�','BCZ - ks Tshikapa',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '_:\�#;�\�B��7�1�','CDR - CEDIMET',NULL,1,1,0,0,1,1,0,0,1,0,NULL,2.0000,NULL,NULL,1.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Banga Banneux Centre de Santé (ks Banga Lubaka/ks Banga Banneux)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\Z<\�B��7�1�','FOSA - ks Kanyinga Manyanga Centre de Santé (ks Banga Lubaka/ks Banga Banneux)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�v<\�B��7�1�','FOSA - ks Kanyinga Muawa Centre de Santé (ks Banga Lubaka/ks Banga Banneux)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Banga Lubaka Hôpital Général de Référence (ks Banga Lubaka/ks Banga Lubaka)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Comesob Centre de Santé (ks Banga Lubaka/ks Banga Lubaka)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�A<\�B��7�1�','FOSA - ks Ngandji Poste de Santé (ks Banga Lubaka/ks Banga Lubaka)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Kanyinga Luworombe Centre de Santé (ks Banga Lubaka/ks Banga Lubaka)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks La Grace Centre de Santé (ks Banga Lubaka/ks Banyanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Nd Centre de Santé (ks Banga Lubaka/ks Banyanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�B<\�B��7�1�','FOSA - ks Assurence Centre de Santé (ks Banga Lubaka/ks Biponga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Dienzelayi Centre de Santé (ks Banga Lubaka/ks Biponga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Elikia Centre de Santé (ks Banga Lubaka/ks Biponga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Grande Vision Centre de Santé (ks Banga Lubaka/ks Biponga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�=<\�B��7�1�','FOSA - ks La Victoire Centre de Santé (ks Banga Lubaka/ks Biponga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�z<\�B��7�1�','FOSA - ks Bushongo Bunene Centre de Santé (ks Banga Lubaka/ks Ibombo Iyeye)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Mbekako Centre de Santé (ks Banga Lubaka/ks Ibombo Iyeye)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Nguya Centre de Santé (ks Banga Lubaka/ks Ibombo Iyeye)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�1<\�B��7�1�','FOSA - ks Fratenité Itshimu Centre de Santé (ks Banga Lubaka/ks Ipunda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�o<\�B��7�1�','FOSA - ks Ipunda Centre de Santé (ks Banga Lubaka/ks Ipunda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Mapono Centre de Santé (ks Banga Lubaka/ks Ipunda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Pusa Centre de Santé (ks Banga Lubaka/ks Ipunda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�)<\�B��7�1�','FOSA - ks Bituabitua Centre de Santé (ks Banga Lubaka/ks Kalunga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�f<\�B��7�1�','FOSA - ks Kalunga village Centre de Santé (ks Banga Lubaka/ks Kalunga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Musongo Centre de Santé (ks Banga Lubaka/ks Kalunga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Port kalunga poste de Santé (ks Banga Lubaka/ks Kalunga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Kanyunyu Centre de Santé (ks Banga Lubaka/ks Kanyunyu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�Y<\�B��7�1�','FOSA - ks La Rive Centre de Santé (ks Banga Lubaka/ks Kanyunyu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Ndjambakare Centre de Santé (ks Banga Lubaka/ks Kanyunyu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Burokweyi Centre de Santé (ks Banga Lubaka/ks Lunduba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Lunduba Centre de Santé (ks Banga Lubaka/ks Lunduba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�N<\�B��7�1�','FOSA - ks Biyenge Centre de Santé (ks Banga Lubaka/ks Mamanya)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Kidiata poste de Santé (ks Banga Lubaka/ks Mamanya)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Mamanya Centre de Santé (ks Banga Lubaka/ks Mamanya)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Matundu Centre de Santé (ks Banga Lubaka/ks Mamanya)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�;<\�B��7�1�','FOSA - ks Mayala Centre de Santé (ks Banga Lubaka/ks Mamanya)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�w<\�B��7�1�','FOSA - ks Kere Centre de Santé (ks Banga Lubaka/ks Mashashana)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Lukodi Centre de Santé (ks Banga Lubaka/ks Mashashana)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Mashashana Centre de Santé (ks Banga Lubaka/ks Mashashana)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��,<\�B��7�1�','FOSA - ks Mayamba Centre de Santé (ks Banga Lubaka/ks Mayamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��g<\�B��7�1�','FOSA - ks Benédiction Centre de Santé (ks Banga Lubaka/ks Mayimbi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\���<\�B��7�1�','FOSA - ks Boboto Centre de Santé (ks Banga Lubaka/ks Mayimbi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��\�<\�B��7�1�','FOSA - ks Bondeko Centre de Santé (ks Banga Lubaka/ks Mayimbi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks La charité Port Centre de Santé (ks Banga Lubaka/ks Mayimbi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��Z<\�B��7�1�','FOSA - ks La Fraternité Centre de Santé (ks Banga Lubaka/ks Mayimbi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\���<\�B��7�1�','FOSA - ks Luwondo Centre de Santé (ks Banga Lubaka/ks Mayimbi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��\�<\�B��7�1�','FOSA - ks Kangama Centre de Santé (ks Banga Lubaka/ks Mbondjare)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Mbondjare Centre de Santé (ks Banga Lubaka/ks Mbondjare)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��N<\�B��7�1�','FOSA - ks Mene Centre de Santé (ks Banga Lubaka/ks Mbondjare)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\���<\�B��7�1�','FOSA - ks sombi Centre de Santé (ks Banga Lubaka/ks Mbondjare)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��\�<\�B��7�1�','FOSA - ks Don de Dieu Centre de Santé (Nganda 2) (ks Banga Lubaka/ks Nganda 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Mabere Centre de Santé (ks Banga Lubaka/ks Nganda 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��><\�B��7�1�','FOSA - ks Nganda 2 Centre de Santé (ks Banga Lubaka/ks Nganda 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��|<\�B��7�1�','FOSA - ks Mambadji Centre de Santé (ks Banga Lubaka/ks Pungu 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\���<\�B��7�1�','FOSA - ks Minguangua Centre de Santé (ks Banga Lubaka/ks Pungu 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��\�<\�B��7�1�','FOSA - ks Mukalakime Centre de Santé (ks Banga Lubaka/ks Pungu 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��3<\�B��7�1�','FOSA - ks Pungu 2 Centre de Santé (ks Banga Lubaka/ks Pungu 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��n<\�B��7�1�','FOSA - ks Bon samaritain poste de santé (ks Banga Lubaka/ks Shandala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\���<\�B��7�1�','FOSA - ks Fidelité Centre de Santé (ks Banga Lubaka/ks Shandala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��\�<\�B��7�1�','FOSA - ks Lumbondji Centre de Santé (ks Banga Lubaka/ks Shandala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��$<\�B��7�1�','FOSA - ks Port Katshimu poste de santé (ks Banga Lubaka/ks Shandala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��b<\�B��7�1�','FOSA - ks Shandala Centre de Santé (ks Banga Lubaka/ks Shandala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\���<\�B��7�1�','FOSA - ks Iroro Munene Centre de Santé (ks Banga Lubaka/ks Vatican)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��\�<\�B��7�1�','FOSA - ks Iroro Vatican Centre de Santé (ks Banga Lubaka/ks Vatican)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Maranga Centre de Santé (ks Banga Lubaka/ks Vatican)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\0?<\�B��7�1�','FOSA - ks Bambalaie Centre de Santé (ks Bulape/ks Bambalaie)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\0�<\�B��7�1�','FOSA - ks Kananaga poste de Santé (ks Bulape/ks Bambalaie)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\0\�<\�B��7�1�','FOSA - ks Bangombe Centre de Santé (ks Bulape/ks Bangombe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�+<\�B��7�1�','FOSA - ks Ebampoma Poste de Santé (ks Bulape/ks Bangombe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�h<\�B��7�1�','FOSA - ks Ituwa Village Poste de Santé (ks Bulape/ks Bangombe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Mbetu Poste de Santé (ks Bulape/ks Bangombe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Bukulu Poste de Santé (ks Bulape/ks Batanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\Z<\�B��7�1�','FOSA - ks Bukwek Centre de Santé (ks Bulape/ks Bukwek)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�U<\�B��7�1�','FOSA - ks Bulape Centre de Santé (ks Bulape/ks Bulape)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Kilendjale Poste de Santé (ks Bulape/ks Bulape)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Bulape 2 Poste de Santé (ks Bulape/ks Bulape Communautaire)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�<\�B��7�1�','FOSA - ks Bulape Centre de Santé (ks Bulape/ks Bulape Communautaire)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�H<\�B��7�1�','FOSA - ks Bulape Hôpital Général de Référence (ks Bulape/ks Bulape Communautaire)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Bungongo 1 Centre de Santé (ks Bulape/ks Bungongo 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Kenge Domba Centre de Santé (ks Bulape/ks Bungongo 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Mbangidi Poste de Santé (ks Bulape/ks Bungongo 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�5<\�B��7�1�','FOSA - ks AFIDIC Kilendjale Poste de Santé (ks Bulape/ks Bupole)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�q<\�B��7�1�','FOSA - ks Bupole Centre de Santé (ks Bulape/ks Bupole)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Batshinga 2 Poste de Santé (ks Bulape/ks Ingongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Ingongo Centre de Santé (ks Bulape/ks Ingongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�1<\�B��7�1�','FOSA - ks Luayi Bushongo Centre de Santé (ks Bulape/ks Luayi Bushongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�k<\�B��7�1�','FOSA - ks Ngele Ibontshi Poste de Santé (ks Bulape/ks Luayi Bushongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Buluku Poste de Santé (ks Bulape/ks Maluku)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Eshamba Ishenge Poste de Santé (ks Bulape/ks Maluku)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�<\�B��7�1�','FOSA - ks Maluku Centre de Santé de Référence (ks Bulape/ks Maluku)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�X<\�B��7�1�','FOSA - ks Pongo tshiempe Poste de Santé (ks Bulape/ks Maluku)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Shambo Village Poste de Santé (ks Bulape/ks Maluku)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Mbelo Centre de Santé (ks Bulape/ks Mbelo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\n<\�B��7�1�','FOSA - ks Mbelo Centre de Santé de Référence (ks Bulape/ks Mbelo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�E<\�B��7�1�','FOSA - ks Misumba Catholique Poste de Santé (ks Bulape/ks Misumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Misumba Centre de Santé (ks Bulape/ks Misumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Misumba Hopital Secondaire (ks Bulape/ks Misumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Songa Milemba Poste de santé (ks Bulape/ks Misumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�3<\�B��7�1�','FOSA - ks Lobi Poste de Santé (ks Bulape/ks Mpatambamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�n<\�B��7�1�','FOSA - ks Lukombe Poste de Santé (ks Bulape/ks Mpatambamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Mpatambamba Centre de Santé (ks Bulape/ks Mpatambamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Mpiana Centre de Santé (ks Bulape/ks Mpianga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�	!<\�B��7�1�','FOSA - ks Batanga Centre de Santé (ks Bulape/ks Pombo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�	[<\�B��7�1�','FOSA - ks Mokanyinga Poste de Santé (ks Bulape/ks Pombo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�	�<\�B��7�1�','FOSA - ks Pombo Centre de Santé (ks Bulape/ks Pombo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�	\�<\�B��7�1�','FOSA - ks Bushangu Poste de Santé (ks Bulape/ks Yoolo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\n	<\�B��7�1�','FOSA - ks Makushuma Woto Poste de Santé (ks Bulape/ks Yoolo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\nC<\�B��7�1�','FOSA - ks Yoolo Centre de Santé (ks Bulape/ks Yoolo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\n~<\�B��7�1�','FOSA - ks Anga Centre de Santé de Référence (ks Dekese/ks Anga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\n�<\�B��7�1�','FOSA - ks Djongo Port Centre de Santé de Référence (ks Dekese/ks Anga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\n�<\�B��7�1�','FOSA - ks Bololo Centre de Santé (ks Dekese/ks Bololo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�5<\�B��7�1�','FOSA - ks Bongondo Centre de Santé (ks Dekese/ks Bongondo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�p<\�B��7�1�','FOSA - ks Bosenge Centre de Santé (ks Dekese/ks Bosenge)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Dekese Centre de Santé (ks Dekese/ks Dekese Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Dekese Hôpital Général de Référence (ks Dekese/ks Dekese Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�<\�B��7�1�','FOSA - ks Djombo Centre de Santé (ks Dekese/ks Djombo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�X<\�B��7�1�','FOSA - ks Esanga Poste de Santé (ks Dekese/ks Dumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Idumbe Centre de Santé de Référence (ks Dekese/ks Idumbe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Imbombolongo Centre de Santé (ks Dekese/ks Imbombolongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\r	<\�B��7�1�','FOSA - ks Ipoka Centre de Santé (ks Dekese/ks Ipoka)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\rE<\�B��7�1�','FOSA - ks Isandja Centre de Santé de Référence (ks Dekese/ks Isandja)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\r<\�B��7�1�','FOSA - ks Isolu Centre de Santé (ks Dekese/ks Isolu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\r�<\�B��7�1�','FOSA - ks Itunga Centre de Santé (ks Dekese/ks Itunga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\r\�<\�B��7�1�','FOSA - ks Longa Centre de Santé (ks Dekese/ks Longa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�/<\�B��7�1�','FOSA - ks Mbanga Sud Centre de Santé (ks Dekese/ks Mbanga Sud)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�k<\�B��7�1�','FOSA - ks Mvusengando Centre de Santé (ks Dekese/ks Mvusengando)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Ngoyoho Centre de Santé (ks Dekese/ks Ngoyolo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Nkongo Centre de Santé (ks Dekese/ks Nkongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\Z<\�B��7�1�','FOSA - ks Yassa Centre de Santé (ks Dekese/ks Yasa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�U<\�B��7�1�','FOSA - ks Yosso Centre de Santé (ks Dekese/ks Yoso)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Bambange Centre de santé (ks Ilebo/ks Bambange)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Mbemba Poste de Santé (ks Ilebo/ks Bambange)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�<\�B��7�1�','FOSA - ks Mwenyampangu Poste de Santé (ks Ilebo/ks Bambange)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�A<\�B��7�1�','FOSA - ks Bena Mulumba Centre de Santé (ks Ilebo/ks Bena Mulumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�}<\�B��7�1�','FOSA - ks Bukaka Poste de Santé (ks Ilebo/ks Bena Mulumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Tshisuabantu Poste de Santé (ks Ilebo/ks Bena Mulumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Bikuku Centre de Santé (ks Ilebo/ks Bikuku)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�.<\�B��7�1�','FOSA - ks Dienelayi Poste de Santé (ks Ilebo/ks Bikuku)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�i<\�B��7�1�','FOSA - ks PNC Poste de Santé (ks Ilebo/ks Bikuku)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Imbilingi Poste de Santé (ks Ilebo/ks Jerusalem)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�<\�B��7�1�','FOSA - ks Jerusalem Centre de Santé (ks Ilebo/ks Jerusalem)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�T<\�B��7�1�','FOSA - ks Kanga Motema Poste de santé (ks Ilebo/ks Jerusalem)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Kapata Poste de Santé (ks Ilebo/ks Jerusalem)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Kabote Centre de Santé (ks Ilebo/ks Kabote)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�<\�B��7�1�','FOSA - ks Milamba Poste de Santé (ks Ilebo/ks Kabote)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�A<\�B��7�1�','FOSA - ks Pandi Poste de Santé (ks Ilebo/ks Kabote)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�|<\�B��7�1�','FOSA - ks Bon Berger Poste de Santé (ks Ilebo/ks Kalina)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Kalina Centre de Santé (ks Ilebo/ks Kalina)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Kenya Poste de Santé (ks Ilebo/ks Kalina)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�.<\�B��7�1�','FOSA - ks Masheke Poste de Santé (ks Ilebo/ks Kalina)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�j<\�B��7�1�','FOSA - ks Kasai Centre de Santé (ks Ilebo/ks Kasai)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Promesse Poste de Santé (ks Ilebo/ks Kasai)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Kasavubu Centre de Santé (ks Ilebo/ks Kasavubu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�<\�B��7�1�','FOSA - ks Peuple Centre de Santé (ks Ilebo/ks Kimbangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�V<\�B��7�1�','FOSA - ks Polymede Poste de Santé (ks Ilebo/ks Kimbangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Kinkole Centre de Santé (ks Ilebo/ks Kinkole)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Kazef Poste de Santé (ks Ilebo/ks Lutshuadi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�<\�B��7�1�','FOSA - ks Lutshuadi Centre de Santé (ks Ilebo/ks Lutshuadi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�C<\�B��7�1�','FOSA - ks Onatra Poste de Santé (ks Ilebo/ks Lutshuadi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�<\�B��7�1�','FOSA - ks Katoka Poste de Santé (ks Ilebo/ks Malumalu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Kinga Poste de Santé (ks Ilebo/ks Malumalu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Malumalu Centre de Santé (ks Ilebo/ks Malumalu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�0<\�B��7�1�','FOSA - ks Mbemba Poste de Santé (ks Ilebo/ks Malumalu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�j<\�B��7�1�','FOSA - ks Mpuncia Centre de Santé (ks Ilebo/ks Mpuntshia)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Istm Poste de Santé (ks Ilebo/ks Nsele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Nsele Centre de Santé (ks Ilebo/ks Nsele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�<\�B��7�1�','FOSA - ks Ilebo Hôpital Général de Référence (ks Ilebo/ks Pilote)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Z<\�B��7�1�','FOSA - ks Pilote Centre de Santé (Ilebo) (ks Ilebo/ks Pilote)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Populaire Centre de Santé (ks Ilebo/ks Populaire)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Sfi Centre de Santé (ks Ilebo/ks Sfi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\Z<\�B��7�1�','FOSA - ks Sncc Centre de Santé (ks Ilebo/ks Sncc)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\ZH<\�B��7�1�','FOSA - ks SNCC Hôpital Sécondaire (ks Ilebo/ks Sncc)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\Z�<\�B��7�1�','FOSA - ks Anic Poste de Sante (ks Ilebo/ks Yolo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\Z�<\�B��7�1�','FOSA - ks Yolo Centre de Sante (Yolo) (ks Ilebo/ks Yolo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\Z�<\�B��7�1�','FOSA - ks Bakua Kenge Centre de Santé (ks Kakenge/ks Bakua Kenge)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�4<\�B��7�1�','FOSA - ks Triomphe Poste de Santé (ks Kakenge/ks Bakua Kenge)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�o<\�B��7�1�','FOSA - ks Batua Ishama Centre de Santé (ks Kakenge/ks Batua Ishama)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Mamba Poste de Santé (ks Kakenge/ks Batua Ishama)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Batua Kadimba Centre de Santé de Référence (ks Kakenge/ks Batua Kadimba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�!<\�B��7�1�','FOSA - ks Lukombe Poste de Santé (ks Kakenge/ks Batua Kadimba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�[<\�B��7�1�','FOSA - ks Luena Poste de Santé (ks Kakenge/ks Bolempo1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Muanga Makolo Centre de Santé (ks Kakenge/ks Bolempo1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Christ Sauveur Poste de Santé (ks Kakenge/ks Dengamongo 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�<\�B��7�1�','FOSA - ks Dengamongo 2 Centre de Santé (ks Kakenge/ks Dengamongo 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�N<\�B��7�1�','FOSA - ks Dengamongo Katshiabala Centre de Santé (ks Kakenge/ks Dengamongo Katshiabala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Enanga Centre de Santé (ks Kakenge/ks Enanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Yokashompo Poste de Santé (ks Kakenge/ks Enanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\0<\�B��7�1�','FOSA - ks Etapanya Camp Centre de Santé (ks Kakenge/ks Etapanya Camp)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�<<\�B��7�1�','FOSA - ks Tshitupu Poste de Santé (ks Kakenge/ks Etapanya Camp)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�y<\�B��7�1�','FOSA - ks Etapanya Village Centre de Santé (ks Kakenge/ks Etapanya Village)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Lubudi Ebale Poste de Santé (ks Kakenge/ks Etapanya Village)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Itungampende Centre de Santé (ks Kakenge/ks Itungampende)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�+<\�B��7�1�','FOSA - ks Mpempe Poste de Santé (ks Kakenge/ks Itungampende)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�f<\�B��7�1�','FOSA - ks Kakenge Hôpital Général de Référence (ks Kakenge/ks Kakenge Centre)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��<\�B��7�1�','FOSA - ks Pilote Centre de Santé (ks Kakenge/ks Kakenge Centre)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Kalamba Centre de Santé (ks Kakenge/ks Kalamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\� <\�B��7�1�','FOSA - ks Lupandu Centre de Santé (ks Kakenge/ks Kalamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\� S<\�B��7�1�','FOSA - ks Kamenji Centre de Santé (ks Kakenge/ks Kamenji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\� �<\�B��7�1�','FOSA - ks Kinda 1 Centre de Santé de Référence (ks Kakenge/ks Kinda 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\� \�<\�B��7�1�','FOSA - ks Kinda 2 Centre de Santé (ks Kakenge/ks Kinda 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�!<\�B��7�1�','FOSA - ks Mubemba Poste de Santé (ks Kakenge/ks Kinda 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�!?<\�B��7�1�','FOSA - ks Lukombe Centre de Santé (ks Kakenge/ks Lukombe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�!z<\�B��7�1�','FOSA - ks Ngompomonyi Poste de Santé (ks Kakenge/ks Lukombe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�!�<\�B��7�1�','FOSA - ks Lukubu Centre de Santé (ks Kakenge/ks Lukubu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�!\�<\�B��7�1�','FOSA - ks Lushihu Cpc Poste de Santé (ks Kakenge/ks Lushiku)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\"-<\�B��7�1�','FOSA - ks Lushiku Bobumue Centre de Santé (ks Kakenge/ks Lushiku)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\"h<\�B��7�1�','FOSA - ks Matambi Centre de Santé (ks Kakenge/ks Matambi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\"�<\�B��7�1�','FOSA - ks Matumba Centre de Santé (ks Kakenge/ks Matumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\"\�<\�B��7�1�','FOSA - ks Christ Roi Centre de Sante (Kakenge) (ks Kakenge/ks Mpianga Aire de S)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�#\Z<\�B��7�1�','FOSA - ks Tete Kalamba Centre de Santé (ks Kakenge/ks Tete Kalamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�#U<\�B��7�1�','FOSA - ks Iyongo Matadi Poste de Santé (ks Kakenge/ks Tshiaboshobe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�#�<\�B��7�1�','FOSA - ks Momono Centre de Santé de Référence (ks Kakenge/ks Tshiaboshobe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�#\�<\�B��7�1�','FOSA - ks Tshinongo Centre de Santé (ks Kakenge/ks Tshinongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�$�<\�B��7�1�','FOSA - ks Bakilisto Centre de Santé (ks Kalonda Ouest/ks Bakilisto)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�%Z<\�B��7�1�','FOSA - ks Croix Rouge Centre de Santé (ks Kalonda Ouest/ks Bakilisto)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�%�<\�B��7�1�','FOSA - ks Diezelayi Centre de Santé (ks Kalonda Ouest/ks Diezelayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�%\�<\�B��7�1�','FOSA - ks Pilote Centre de Santé (ks Kalonda Ouest/ks Diezelayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�&<\�B��7�1�','FOSA - ks Ditekemena Centre de Santé (ks Kalonda Ouest/ks Ditekemena)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�&L<\�B��7�1�','FOSA - ks Dienzelayi Centre de Santé (ks Kalonda Ouest/ks Inga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�&�<\�B��7�1�','FOSA - ks Lukombo Centre de Santé (ks Kalonda Ouest/ks Kabambayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�&\�<\�B��7�1�','FOSA - ks Pacifique Centre de Santé (ks Kalonda Ouest/ks Kabambayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\'<\�B��7�1�','FOSA - ks Kabeya Lumbu Centre de Santé (ks Kalonda Ouest/ks Kabeya Lumbu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\'=<\�B��7�1�','FOSA - ks Ebaphar Centre de Santé (ks Kalonda Ouest/ks Kabuyi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\'x<\�B��7�1�','FOSA - ks Familial Centre de Santé (ks Kalonda Ouest/ks Kabuyi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\'�<\�B��7�1�','FOSA - ks Alliance Centre de Santé (ks Kalonda Ouest/ks Kalonda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\'\�<\�B��7�1�','FOSA - ks Kalonda Hôpital Général de Référence (ks Kalonda Ouest/ks Kalonda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�(-<\�B��7�1�','FOSA - ks Assurance Centre de Santé (ks Kalonda Ouest/ks Kasai 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�(i<\�B��7�1�','FOSA - ks Aeg Centre de Santé (ks Kalonda Ouest/ks Kasai 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�(�<\�B��7�1�','FOSA - ks El Rapha Centre Hospitalier (ks Kalonda Ouest/ks Kasai 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�(\�<\�B��7�1�','FOSA - ks El Rapha Poste de Santé (ks Kalonda Ouest/ks Kasai 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�) <\�B��7�1�','FOSA - ks Kasala Centre de Santé (ks Kalonda Ouest/ks Kasala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�)[<\�B��7�1�','FOSA - ks Lunkamba Centre de Santé (ks Kalonda Ouest/ks Kasala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�)�<\�B��7�1�','FOSA - ks Katalushi Centre de Santé (ks Kalonda Ouest/ks Katalushi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�)\�<\�B��7�1�','FOSA - ks Kabendo Centre de Santé (ks Kalonda Ouest/ks Katoka)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�*\r<\�B��7�1�','FOSA - ks Kamon Center Medical Centre de Santé (ks Kalonda Ouest/ks Katoka)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�*I<\�B��7�1�','FOSA - ks Qui Vivra Verra Centre de Santé (ks Kalonda Ouest/ks Kele Kasai)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�*�<\�B��7�1�','FOSA - ks Alliance Centre de Santé (ks Kalonda Ouest/ks Lungundi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�*\�<\�B��7�1�','FOSA - ks Lungundi Centre de Santé (ks Kalonda Ouest/ks Lungundi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�*�<\�B��7�1�','FOSA - ks Fraternité Centre de Santé (ks Kalonda Ouest/ks Mairie)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�+:<\�B��7�1�','FOSA - ks Atuba Poste de Santé (ks Kalonda Ouest/ks Makumbi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�+u<\�B��7�1�','FOSA - ks Makumbi Centre de Santé (ks Kalonda Ouest/ks Makumbi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�+�<\�B��7�1�','FOSA - ks Bufure Centre de Santé (ks Kalonda Ouest/ks Mbawu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�+\�<\�B��7�1�','FOSA - ks Mbawu Centre de Santé (ks Kalonda Ouest/ks Mbawu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�-<\�B��7�1�','FOSA - ks Bel Tshika Centre de Santé (ks Kalonda Ouest/ks Mbumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�-D<\�B��7�1�','FOSA - ks Muabilayi Centre de Santé (ks Kalonda Ouest/ks Mukuaya)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�-�<\�B��7�1�','FOSA - ks Mukuaya Centre de Santé (ks Kalonda Ouest/ks Mukuaya)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�-�<\�B��7�1�','FOSA - ks Mudimu Centre de Santé (ks Kalonda Ouest/ks Mulamba Tshionza)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�-�<\�B��7�1�','FOSA - ks Mulamba Tshionza Centre de Santé (ks Kalonda Ouest/ks Mulamba Tshionza)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�.9<\�B��7�1�','FOSA - ks Dibenesha Centre de Santé (ks Kalonda Ouest/ks Mungenda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�/<\�B��7�1�','FOSA - ks Kele Kasai Chretien Centre de Santé (ks Kalonda Ouest/ks Trois Z)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�/R<\�B��7�1�','FOSA - ks Tshibinda 1 Centre de Santé (ks Kalonda Ouest/ks Tshibinda 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�/�<\�B��7�1�','FOSA - ks Kimbanguiste Centre de Santé (ks Kalonda Ouest/ks Tshibinda 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�/\�<\�B��7�1�','FOSA - ks Tshindemba Centre de Santé (ks Kalonda Ouest/ks Tshindemba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�0<\�B��7�1�','FOSA - ks Notre Dame de Rosaire Centre de Santé (ks Kalonda Ouest/ks Tujukayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�0@<\�B��7�1�','FOSA - ks Tujukayi Centre de Santé (ks Kalonda Ouest/ks Tujukayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�0{<\�B��7�1�','FOSA - ks Notre Dame de LAUS Centre de Santé (ks Kalonda Ouest/ks Tukunyema)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�0�<\�B��7�1�','FOSA - ks Kabangu Centre de Santé (ks Kamonia/ks Kabangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�0\�<\�B��7�1�','FOSA - ks Muena Luse Centre de Santé (ks Kamonia/ks Kabangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�10<\�B��7�1�','FOSA - ks Kabilengu Centre de Santé (ks Kamonia/ks Kabilengu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�1o<\�B��7�1�','FOSA - ks Zango Centre de Santé (ks Kamonia/ks Kabilengu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�1�<\�B��7�1�','FOSA - ks Kabungu Centre de Santé (ks Kamonia/ks Kabungu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�1\�<\�B��7�1�','FOSA - ks Kamaboza Centre de Santé (ks Kamonia/ks Kamabonza)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�2!<\�B��7�1�','FOSA - ks La Charite Kamaboza Centre de Santé (ks Kamonia/ks Kamabonza)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�2]<\�B��7�1�','FOSA - ks CMCO 27E C Centre de Santé (ks Kamonia/ks Kamako 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�2�<\�B��7�1�','FOSA - ks Kamako 1 Centre de Santé (ks Kamonia/ks Kamako 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�2\�<\�B��7�1�','FOSA - ks Kamako 2 Centre de Santé (ks Kamonia/ks Kamako 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�3<\�B��7�1�','FOSA - ks Kamako Etat Centre de Santé (ks Kamonia/ks Kamako 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�3J<\�B��7�1�','FOSA - ks Pejhedo Centre de Santé (ks Kamonia/ks Kamonia)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�3�<\�B��7�1�','FOSA - ks Rob-Pejhedo Centre de Santé (ks Kamonia/ks Kamonia)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�3\�<\�B��7�1�','FOSA - ks Kandjaji Centre de Santé (ks Kamonia/ks Kandjaji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�4\0<\�B��7�1�','FOSA - ks Kasai Lubembe Centre de Santé (ks Kamonia/ks Kasai Lumbembe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�5<\�B��7�1�','FOSA - ks Fololo Centre de Santé (ks Kamonia/ks Kasekue)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�5S<\�B��7�1�','FOSA - ks KatopaCentre de Santé (ks Kamonia/ks Katopa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�5�<\�B��7�1�','FOSA - ks Bethesda Centre de Santé (ks Kamonia/ks Luangashimo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�5\�<\�B��7�1�','FOSA - ks Kamonia Hôpital Général de Référence (ks Kamonia/ks Luangashimo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�6	<\�B��7�1�','FOSA - ks Luanga Shimo Centre de Santé (ks Kamonia/ks Luangashimo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�6F<\�B��7�1�','FOSA - ks Lubami Centre de Santé (ks Kamonia/ks Lubami)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�7<\�B��7�1�','FOSA - ks Lubami Hôpital Secondaire (ks Kamonia/ks Lubami)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�7[<\�B��7�1�','FOSA - ks Luyembe Centre de Santé (ks Kamonia/ks Luyembe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�7�<\�B��7�1�','FOSA - ks Mayanda Centre de Santé (ks Kamonia/ks Mayanda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�8�<\�B��7�1�','FOSA - ks Mpasu Centre de Santé (ks Kamonia/ks Mpasu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�8\�<\�B��7�1�','FOSA - ks Mudiadia Centre de Santé (ks Kamonia/ks Mudiadia)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�9&<\�B��7�1�','FOSA - ks Mukuadjanga Centre de Santé (ks Kamonia/ks Mukuadjanga Aire de S)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�9e<\�B��7�1�','FOSA - ks Mungamba Centre de Santé (ks Kamonia/ks Mungamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�<s<\�B��7�1�','FOSA - ks Nsokombe Centre de Santé (ks Kamonia/ks Nsokombe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�<\�<\�B��7�1�','FOSA - ks Nsumbula Centre de Santé (ks Kamonia/ks Nsumbula)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�=<\�B��7�1�','FOSA - ks Nsumbula Centre de Santé de Référence (ks Kamonia/ks Nsumbula)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�=[<\�B��7�1�','FOSA - ks Ntambue Kabongo Centre de Santé (ks Kamonia/ks Ntambue Kabongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�=�<\�B��7�1�','FOSA - ks Tshimeya Centre de Santé (ks Kamonia/ks Tshimeya)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�=\�<\�B��7�1�','FOSA - ks Tshinota Centre de Santé (ks Kamonia/ks Tshinota)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�><\�B��7�1�','FOSA - ks Tshitambeji Centre de Santé (ks Kamonia/ks Tshitambeji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�>R<\�B��7�1�','FOSA - ks Biakabomba Centre de Santé (ks Kamwesha/ks Biakabomba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�>�<\�B��7�1�','FOSA - ks Dinyuka Poste de Santé (ks Kamwesha/ks Biakabomba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�>\�<\�B��7�1�','FOSA - ks Bon Berger Centre de Santé (ks Kamwesha/ks Dibala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�?<\�B��7�1�','FOSA - ks Ntumba Kapanga Poste de Santé (ks Kamwesha/ks Dibala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�?J<\�B��7�1�','FOSA - ks Kabelekese Centre de Santé (ks Kamwesha/ks Kabelekese)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�?�<\�B��7�1�','FOSA - ks Kamisalu Centre de Santé (ks Kamwesha/ks Kakumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�?\�<\�B��7�1�','FOSA - ks Nkuna Ejike Poste de Santé (ks Kamwesha/ks Kakumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�@�<\�B��7�1�','FOSA - ks Nouvelle Jérusalem Poste de Santé (ks Kamwesha/ks Kakumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�@�<\�B��7�1�','FOSA - ks Pacifique Poste de Santé (ks Kamwesha/ks Kakumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�A5<\�B��7�1�','FOSA - ks Kalumbu Centre de Santé (ks Kamwesha/ks Kalumbu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Ar<\�B��7�1�','FOSA - ks Kamba Nkuvu Centre de Santé (ks Kamwesha/ks Kamba Nkuvu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�A�<\�B��7�1�','FOSA - ks Dieu Guérisseur Poste de Santé (ks Kamwesha/ks Kamuesha 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�A\�<\�B��7�1�','FOSA - ks Kamuesha 2 Centre de Santé (ks Kamwesha/ks Kamuesha 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�B$<\�B��7�1�','FOSA - ks Kamwesha Hôpital Général de Référence (ks Kamwesha/ks Kamuesha 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�B`<\�B��7�1�','FOSA - ks Promesse Centre de Santé (ks Kamwesha/ks Kamuesha 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�B�<\�B��7�1�','FOSA - ks Victoire Centre de Santé (ks Kamwesha/ks Kamuesha 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�B\�<\�B��7�1�','FOSA - ks Bimpe Poste de Santé (ks Kamwesha/ks Kasanzu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�C<\�B��7�1�','FOSA - ks Kapepula Poste de Santé (ks Kamwesha/ks Kasanzu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�CQ<\�B��7�1�','FOSA - ks Kasanzu Centre de Santé (ks Kamwesha/ks Kasanzu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�C�<\�B��7�1�','FOSA - ks Lunzanza Poste de Santé (ks Kamwesha/ks Kasanzu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�C\�<\�B��7�1�','FOSA - ks Kasonga Centre de Santé (ks Kamwesha/Ks Kasonga Tshinyam)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�D<\�B��7�1�','FOSA - ks Katshiwu 1 Centre de Santé (ks Kamwesha/Ks Kasonga Tshinyam)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�D@<\�B��7�1�','FOSA - ks Katshiwu 2 Poste de Santé (ks Kamwesha/Ks Kasonga Tshinyam)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�D{<\�B��7�1�','FOSA - ks Tshikote Poste de Santé (ks Kamwesha/Ks Kasonga Tshinyam)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�D�<\�B��7�1�','FOSA - ks Tshisuku Poste de Santé (ks Kamwesha/Ks Kasonga Tshinyam)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�D\�<\�B��7�1�','FOSA - ks Amour Poste de Santé (ks Kamwesha/ks Katalayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�E.<\�B��7�1�','FOSA - ks Kasangisha Poste de Santé (ks Kamwesha/ks Katalayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�E}<\�B��7�1�','FOSA - ks Lubombo Poste de Santé (ks Kamwesha/ks Katalayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�E\�<\�B��7�1�','FOSA - ks Genie Médicale Poste de Santé (ks Kamwesha/ks Katanda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�F<\�B��7�1�','FOSA - ks Kabundi Poste de Santé (ks Kamwesha/ks Katanda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�F<<\�B��7�1�','FOSA - ks Katanda Centre de Santé (ks Kamwesha/ks Katanda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Fv<\�B��7�1�','FOSA - ks Katshimu Centre de Santé (ks Kamwesha/ks Katshimu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�F�<\�B��7�1�','FOSA - ks Luenda Basanga Centre de Santé (ks Kamwesha/ks Luenda Basanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�F\�<\�B��7�1�','FOSA - ks Lungonzo Centre de Santé (ks Kamwesha/ks Lungonzo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�G*<\�B��7�1�','FOSA - ks Lunyeka Centre de Santé de Référence (ks Kamwesha/Ks Lunyeka Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Gg<\�B��7�1�','FOSA - ks Lunyeka Faubourg Centre de Santé (ks Kamwesha/Ks Lunyeka Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�G�<\�B��7�1�','FOSA - ks Tudikolele Poste de Santé (Lunyeka) (ks Kamwesha/Ks Lunyeka Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�G\�<\�B��7�1�','FOSA - ks Lunyeka Faubourg Centre de Santé (ks Kamwesha/ks Lunyeka Faubourg)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�H<\�B��7�1�','FOSA - ks Lutshimu Centre de Santé (ks Kamwesha/ks Lutshimu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�HU<\�B��7�1�','FOSA - ks Kalala Ngangabuka Poste de Santé (ks Kamwesha/ks Masangu Anayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�H�<\�B��7�1�','FOSA - ks Masangu Anayi Centre de Santé (ks Kamwesha/ks Masangu Anayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�H\�<\�B��7�1�','FOSA - ks Sankayi Poste de Santé (ks Kamwesha/ks Masangu Anayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�I<\�B��7�1�','FOSA - ks Mayi Munene Centre de Santé (ks Kamwesha/ks Mayi Munene)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�IH<\�B��7�1�','FOSA - ks Mbolondo Centre de Santé (ks Kamwesha/ks Mbolondo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�I�<\�B��7�1�','FOSA - ks Kalala Poste de Santé (ks Kamwesha/ks Mpampa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�I�<\�B��7�1�','FOSA - ks Mpampa Centre de Santé de Référence (ks Kamwesha/ks Mpampa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�I�<\�B��7�1�','FOSA - ks Saint Paul Centre de Santé (ks Kamwesha/ks Mpampa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�J3<\�B��7�1�','FOSA - ks Mukambu Centre de Santé (ks Kamwesha/ks Mukambu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Jn<\�B��7�1�','FOSA - ks Muladila Centre de Santé (ks Kamwesha/ks Muladila)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�J�<\�B��7�1�','FOSA - ks Katende Centre de Santé (ks Kamwesha/ks Mutumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�J\�<\�B��7�1�','FOSA - ks Mbuabu Lombe Poste de Santé (ks Kamwesha/ks Mutumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�K <\�B��7�1�','FOSA - ks Misumba Poste de Santé (ks Kamwesha/ks Mutumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�KZ<\�B��7�1�','FOSA - ks Muamba Mukulu Poste de Santé (ks Kamwesha/ks Mutumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�K�<\�B��7�1�','FOSA - ks Tudikolele Poste de Santé (ks Kamwesha/ks Mutumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�L\�<\�B��7�1�','FOSA - ks Tshitalala Centre de Santé (ks Kamwesha/ks Mwila Mbuambua)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�M<\�B��7�1�','FOSA - ks Ntumba Kapanga Centre de Santé (ks Kamwesha/ks Ntumba Kapangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�M?<\�B��7�1�','FOSA - ks Philantropique Poste de Santé (ks Kamwesha/ks Tshiela Mata)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�M|<\�B��7�1�','FOSA - ks Salem Tabernacle Poste de Santé (ks Kamwesha/ks Tshiela Mata)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�M�<\�B��7�1�','FOSA - ks Tshiela Mata Centre de Santé (ks Kamwesha/ks Tshiela Mata)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�N�<\�B��7�1�','FOSA - ks BMB Phenix Centre de Santé (ks Kanzala/ks Aeroport)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�N\�<\�B��7�1�','FOSA - ks Dibue Dietu Centre de Santé (ks Kanzala/ks Aeroport)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�O2<\�B��7�1�','FOSA - ks Gloire à Jesus Centre de Santé (ks Kanzala/ks Aeroport)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Oo<\�B��7�1�','FOSA - ks Phenix Centre de Santé (ks Kanzala/ks Aeroport)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�O�<\�B��7�1�','FOSA - ks Voici l\'Homme Centre de Santé (ks Kanzala/ks Aeroport)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�O\�<\�B��7�1�','FOSA - ks Bondeko Centre de Santé (ks Kanzala/ks Clinique)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Q\r<\�B��7�1�','FOSA - ks CMC Polyclinique (ks Kanzala/ks Clinique)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Qm<\�B��7�1�','FOSA - ks Kanzala Hôpital Général de Référence (ks Kanzala/ks Clinique)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Q�<\�B��7�1�','FOSA - ks La Police Centre de Santé (ks Kanzala/ks Clinique)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Q\�<\�B��7�1�','FOSA - ks Kabungu Centre de Santé (ks Kanzala/ks Kabungu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�R\"<\�B��7�1�','FOSA - ks St Jonas Centre de Santé (ks Kanzala/ks Kabungu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�R]<\�B��7�1�','FOSA - ks Communautaire Centre de Santé (ks Kanzala/ks Kankala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�R�<\�B��7�1�','FOSA - ks Asem Centre de Santé (ks Kanzala/ks Kanzala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�R\�<\�B��7�1�','FOSA - ks Dipa Dia Nzambi Centre de Santé (ks Kanzala/ks Kanzala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�S<\�B��7�1�','FOSA - ks Dpa Dia Nzambi Centre de Santé (ks Kanzala/ks Kanzala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�SY<\�B��7�1�','FOSA - ks Avenir Centre de Santé (ks Kanzala/ks Lunyanya)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�S�<\�B��7�1�','FOSA - ks Kamalenga Centre de Santé (ks Kanzala/ks Lunyanya)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�S\�<\�B��7�1�','FOSA - ks St Luc Centre de Santé (ks Kanzala/ks Lunyanya)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�T	<\�B��7�1�','FOSA - ks Bien Veillance Centre de Santé (ks Kanzala/ks Mennonite)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�TD<\�B��7�1�','FOSA - ks La Sagesse Centre de Santé (ks Kanzala/ks Mennonite)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�T<\�B��7�1�','FOSA - ks La Vie Centre de Santé (ks Kanzala/ks Mennonite)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�T�<\�B��7�1�','FOSA - ks Bondeko Centre de Santé (ks Kanzala/ks Mutshi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�T\�<\�B��7�1�','FOSA - ks La Gloire Centre de Santé (ks Kanzala/ks Mutshi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�U2<\�B��7�1�','FOSA - ks La Vie Centre de Santé (ks Kanzala/ks Mutshi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Um<\�B��7�1�','FOSA - ks Matthieu Centre de Santé (ks Kanzala/ks Mutshi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�U�<\�B��7�1�','FOSA - ks Muyombo Centre de Santé (ks Kanzala/ks Muyombo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�U\�<\�B��7�1�','FOSA - ks Anna Centre de Santé (ks Kanzala/ks Nzambe Malamu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�V<\�B��7�1�','FOSA - ks La Croix Rouge Centre de Santé (ks Kanzala/ks Nzambe Malamu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�V[<\�B��7�1�','FOSA - ks Les Efforts Centre de Santé (ks Kanzala/ks Nzambe Malamu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�V�<\�B��7�1�','FOSA - ks Pacifique Centre de Santé (ks Kanzala/ks Nzambe Malamu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�V\�<\�B��7�1�','FOSA - ks Don de Dieu Centre de Santé (ks Kanzala/ks Salambote)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�W<\�B��7�1�','FOSA - ks Kenda Centre de Santé (ks Kanzala/ks Salambote)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�WL<\�B��7�1�','FOSA - ks Tshinguvu Centre de Santé (ks Kanzala/ks Salambote)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�W�<\�B��7�1�','FOSA - ks Atandele Centre de Santé (ks Kanzala/ks Sami 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�W�<\�B��7�1�','FOSA - ks La Grace Centre de Santé (ks Kanzala/ks Sami 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�W�<\�B��7�1�','FOSA - ks Lumuka Centre de Santé (ks Kanzala/ks Sami 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�X5<\�B��7�1�','FOSA - ks Moyo Mupeluke Vie Centre de Santé (ks Kanzala/ks Sami 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Xo<\�B��7�1�','FOSA - ks Cepromefa Centre de Santé (ks Kanzala/ks Sami 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�X�<\�B��7�1�','FOSA - ks Kanza Centre de Santé (ks Kanzala/ks Sami 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�X\�<\�B��7�1�','FOSA - ks Mawuke Centre de Santé (ks Kanzala/ks Sami 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Y#<\�B��7�1�','FOSA - ks CMTK Centre de Santé (ks Kanzala/ks Stade 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Y]<\�B��7�1�','FOSA - ks Donaviv Centre de santé (ks Kanzala/ks Stade 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Y�<\�B��7�1�','FOSA - ks La Foi Centre de Santé (ks Kanzala/ks Stade 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Y\�<\�B��7�1�','FOSA - ks Shekinah Centre de Santé (ks Kanzala/ks Stade 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Z<\�B��7�1�','FOSA - ks La Patience Centre de Santé (ks Kanzala/ks Stade 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�ZI<\�B��7�1�','FOSA - ks Sandza Ganunu Centre de Santé (ks Kanzala/ks Stade 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Z�<\�B��7�1�','FOSA - ks Tuye Lumue Centre de Santé (ks Kanzala/ks Stade 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Z\�<\�B��7�1�','FOSA - ks Amour de Dieu Centre de Santé (ks Kanzala/ks Tshibemba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Z�<\�B��7�1�','FOSA - ks Communautaire Centre de Santé (ks Kanzala/ks Tshibemba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�[;<\�B��7�1�','FOSA - ks Mumbanda Centre de Santé (ks Kanzala/ks Tshibemba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�[v<\�B��7�1�','FOSA - ks La jourdin Centre de Santé (ks Kanzala/ks Tshikapa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�[�<\�B��7�1�','FOSA - ks La Rose Centre de Santé (ks Kanzala/ks Tshikapa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�[\�<\�B��7�1�','FOSA - ks Les Anges Centre de Santé (ks Kanzala/ks Tshikapa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\\(<\�B��7�1�','FOSA - ks Sbb Centre de Santé (ks Kanzala/ks Tshikapa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\\c<\�B��7�1�','FOSA - ks Kabunda Centre de Santé (ks Kitangwa/ks Kabunda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\\�<\�B��7�1�','FOSA - ks Kahemba Centre de Santé (ks Kitangwa/ks Kabunda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\\\�<\�B��7�1�','FOSA - ks Kapombo Centre de Santé (ks Kitangwa/ks Kabunda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�]<\�B��7�1�','FOSA - ks Kindamba Centre de Santé (ks Kitangwa/ks Kabunda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�]Q<\�B��7�1�','FOSA - ks Shiatshi Centre de Santé (ks Kitangwa/ks Kabunda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�]�<\�B��7�1�','FOSA - ks Kakhumu Centre de Santé (ks Kitangwa/ks Kakhumu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�]\�<\�B��7�1�','FOSA - ks Kangamba Centre de Santé (ks Kitangwa/ks Kakhumu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�^\0<\�B��7�1�','FOSA - ks Kamatoma Centre de Santé (ks Kitangwa/ks Kamatoma)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�^:<\�B��7�1�','FOSA - ks Kamungindu Centre de Santé (ks Kitangwa/ks Kamungindu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�^v<\�B��7�1�','FOSA - ks La Grâce Centre de Santé (ks Kitangwa/ks Kamungindu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�^�<\�B��7�1�','FOSA - ks Kandumba Centre de Santé (ks Kitangwa/ks Kandumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�^\�<\�B��7�1�','FOSA - ks Kapombo Poste de Santé (ks Kitangwa/ks Kandumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�_&<\�B��7�1�','FOSA - ks Lusenge Centre de Santé (ks Kitangwa/ks Kandumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�__<\�B��7�1�','FOSA - ks Sha Tshienvu Centre de Santé (ks Kitangwa/ks Kandumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�_�<\�B��7�1�','FOSA - ks Kayongo CMCO Centre de Santé (ks Kitangwa/ks Kayongo CMCO)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�_\�<\�B��7�1�','FOSA - ks Kayongo Centre de Santé (ks Kitangwa/ks Kayongo Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�`<\�B��7�1�','FOSA - ks Isole Centre de Santé (ks Kitangwa/ks Kimbangu Teteji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�`Q<\�B��7�1�','FOSA - ks Kimbangu Teteji Centre de Santé (ks Kitangwa/ks Kimbangu Teteji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�`�<\�B��7�1�','FOSA - ks Kitangwa Centre de Santé (ks Kitangwa/ks Kitangwa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�`\�<\�B��7�1�','FOSA - ks Kitangwa Hôpital Général de Référence (ks Kitangwa/ks Kitangwa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�a<\�B��7�1�','FOSA - ks La Fraternité Centre de Santé (ks Kitangwa/ks Kitangwa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�a?<\�B��7�1�','FOSA - ks Kandambi Poste de Santé (ks Kitangwa/ks Kitembo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�az<\�B��7�1�','FOSA - ks Kitembo Centre de Santé (ks Kitangwa/ks Kitembo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�a�<\�B��7�1�','FOSA - ks Kubu Centre de Santé (ks Kitangwa/ks Kitembo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�a\�<\�B��7�1�','FOSA - ks La grace Centre de Santé (ks Kitangwa/ks Kitembo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�c\Z<\�B��7�1�','FOSA - ks La Joie Centre de Santé (Kitembo) (ks Kitangwa/ks Kitembo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�cz<\�B��7�1�','FOSA - ks Kisama Centre de Santé (ks Kitangwa/ks Kombo Kiboto)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�c�<\�B��7�1�','FOSA - ks Kombo Centre de Santé (ks Kitangwa/ks Kombo Kiboto)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�c\�<\�B��7�1�','FOSA - ks Nginda Centre de Santé (ks Kitangwa/ks Kombo Kiboto)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�d0<\�B��7�1�','FOSA - ks Tsumbu Centre de Santé (ks Kitangwa/ks Kombo Kiboto)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�dm<\�B��7�1�','FOSA - ks Kuyi Teteji Centre de Santé (ks Kitangwa/ks Kuyi Teteji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�d�<\�B��7�1�','FOSA - ks Malenga Centre de Santé (ks Kitangwa/ks Kuyi Teteji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�d\�<\�B��7�1�','FOSA - ks Malenga Poste de Santé (ks Kitangwa/ks Kuyi Teteji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�e#<\�B��7�1�','FOSA - ks Malembe Centre de Santé (ks Kitangwa/ks Malundu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�e^<\�B��7�1�','FOSA - ks Malundu Centre de Santé (ks Kitangwa/ks Malundu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�e�<\�B��7�1�','FOSA - ks Tobi Centre de Santé (ks Kitangwa/ks Malundu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�e\�<\�B��7�1�','FOSA - ks Kimbangu Centre de Santé (ks Kitangwa/ks Mbuambua)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�f<\�B��7�1�','FOSA - ks Mbuambua Centre de Santé (ks Kitangwa/ks Mbuambua)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�fM<\�B��7�1�','FOSA - ks Monji Centre de Santé (ks Kitangwa/ks Mbuambua)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�f�<\�B��7�1�','FOSA - ks Jehovah Rapha Centre de Santé (ks Kitangwa/ks Mbuji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�f\�<\�B��7�1�','FOSA - ks Mbuji Centre de Santé (ks Kitangwa/ks Mbuji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�g\0<\�B��7�1�','FOSA - ks Mulambu Poste de Santé (ks Kitangwa/ks Mbuji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�g:<\�B��7�1�','FOSA - ks Kanzongo Poste de Santé (ks Kitangwa/ks Mukala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�gu<\�B��7�1�','FOSA - ks Kateya Centre de Santé (ks Kitangwa/ks Mukala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�g�<\�B��7�1�','FOSA - ks Mukala Centre de Santé (ks Kitangwa/ks Mukala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�g\�<\�B��7�1�','FOSA - ks Homme Fort Centre de Santé (ks Kitangwa/ks Ndjindji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�h&<\�B��7�1�','FOSA - ks Mulambu Poste de Santé (Ndjindji) (ks Kitangwa/ks Ndjindji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�hb<\�B��7�1�','FOSA - ks Ndjindji Centre de Santé (ks Kitangwa/ks Ndjindji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�h�<\�B��7�1�','FOSA - ks Pakasa Centre de Santé (ks Kitangwa/ks Ndjindji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�h\�<\�B��7�1�','FOSA - ks Kianza Centre de Santé (ks Kitangwa/ks Ngoya)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�i<\�B��7�1�','FOSA - ks Mbengi Centre de Santé (ks Kitangwa/ks Ngoya)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�iO<\�B��7�1�','FOSA - ks Ngoya Centre de Santé (ks Kitangwa/ks Ngoya)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�i�<\�B��7�1�','FOSA - ks Kazombola Centre de Santé (ks Kitangwa/ks Ngulungu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�i\�<\�B��7�1�','FOSA - ks Mukinda Centre de Santé (ks Kitangwa/ks Ngulungu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�i�<\�B��7�1�','FOSA - ks Ngulungu Centre de Santé (ks Kitangwa/ks Ngulungu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�j:<\�B��7�1�','FOSA - ks Ngusaka Centre de Santé (ks Kitangwa/ks Ngulungu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�jv<\�B��7�1�','FOSA - ks Djambaloba Centre de Santé (ks Kitangwa/ks Nyangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�j�<\�B��7�1�','FOSA - ks Nyangu Centre de Santé (ks Kitangwa/ks Nyangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�j\�<\�B��7�1�','FOSA - ks Sashila Centre de Santé (ks Kitangwa/ks Sashila)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�k+<\�B��7�1�','FOSA - ks Tshitadi Poste de Santé (ks Kitangwa/ks Sashila)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�kf<\�B��7�1�','FOSA - ks Kahuma Centre de Santé (ks Kitangwa/ks Shakafulu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�k�<\�B��7�1�','FOSA - ks Shakafulu Centre de Santé (ks Kitangwa/ks Shakafulu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�k\�<\�B��7�1�','FOSA - ks Kabenge Centre de Santé (ks Kitangwa/ks Shambuanda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�l<\�B��7�1�','FOSA - ks Shambuanda Centre de Santé (ks Kitangwa/ks Shambuanda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�lS<\�B��7�1�','FOSA - ks Shanvula Centre de Santé (ks Kitangwa/ks Shayitengo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�l�<\�B��7�1�','FOSA - ks Shayitemgo Centre de Santé (ks Kitangwa/ks Shayitengo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�l\�<\�B��7�1�','FOSA - ks Tshingila Centre de Santé (ks Kitangwa/ks Tshingila)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�m<\�B��7�1�','FOSA - ks Lushiku Centre de Santé (ks Kitangwa/ks Tshitepa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�mB<\�B��7�1�','FOSA - ks Ndamba Poste de Santé (ks Kitangwa/ks Tshitepa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�m}<\�B��7�1�','FOSA - ks Tshitepa Centre de Santé (ks Kitangwa/ks Tshitepa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�m�<\�B��7�1�','FOSA - ks Kisele Centre de Santé (ks Kitangwa/ks Tshiwanda Wanda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�m\�<\�B��7�1�','FOSA - ks La Gloire Centre de Santé (ks Kitangwa/ks Tshiwanda Wanda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�n.<\�B��7�1�','FOSA - ks Lobiko Centre de Santé (ks Kitangwa/ks Tshiwanda Wanda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�nl<\�B��7�1�','FOSA - ks Reveillez Vous Centre de Santé (Tshiwanda Wanda) (ks Kitangwa/ks Tshiwanda Wanda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�n�<\�B��7�1�','FOSA - ks Tshikamba Centre de Santé (ks Kitangwa/ks Tshiwanda Wanda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�n\�<\�B��7�1�','FOSA - ks Tshiwanda Wanda Centre de Santé (ks Kitangwa/ks Tshiwanda Wanda)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�o<\�B��7�1�','FOSA - ks Ntundu Centre de Santé (ks Kitangwa/ks Tundu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�o\\<\�B��7�1�','FOSA - ks Bajila Centre de Santé (ks Luebo/ks Bajila Kapumbu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�o�<\�B��7�1�','FOSA - ks Bamue Poste de Santé (ks Luebo/ks Bajila Kapumbu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�o\�<\�B��7�1�','FOSA - ks Kabamba Kamowa Poste de Santé (ks Luebo/ks Bajila Kapumbu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�p<\�B��7�1�','FOSA - ks La Promesse Poste de Santé (ks Luebo/ks Bajila Kapumbu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�pK<\�B��7�1�','FOSA - ks Neo Apostolique Poste de Santé (ks Luebo/ks Bajila Kapumbu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�p�<\�B��7�1�','FOSA - ks Bakua Dishi Centre de Santé (ks Luebo/ks Bakua Dishi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�p\�<\�B��7�1�','FOSA - ks Kasenga Poste de Santé (ks Luebo/ks Bakua Dishi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�p�<\�B��7�1�','FOSA - ks Dinyunyi Centre de Santé (ks Luebo/ks Dinyunyi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�q9<\�B��7�1�','FOSA - ks Dady Poste de Santé (ks Luebo/ks Kabemba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�qu<\�B��7�1�','FOSA - ks Kabemba Centre de Santé (ks Luebo/ks Kabemba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�q�<\�B��7�1�','FOSA - ks Kabemba Centre Hospitalier (ks Luebo/ks Kabemba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�q\�<\�B��7�1�','FOSA - ks Paradoxe Poste de Santé (ks Luebo/ks Kabemba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�r*<\�B��7�1�','FOSA - ks Kabeya Tshi Centre de Santé (ks Luebo/ks Kabeya Tshinyama)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�rf<\�B��7�1�','FOSA - ks Bukole Bua Nzambi Poste de Santé (ks Luebo/ks Kakulu 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�r�<\�B��7�1�','FOSA - ks Kakulu 1 Centre de Santé (ks Luebo/ks Kakulu 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�r\�<\�B��7�1�','FOSA - ks Kapanda Etat Poste de Santé (ks Luebo/ks Kakulu 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�s<\�B��7�1�','FOSA - ks Kakulu 2 Centre de Santé (ks Luebo/ks Kakulu 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�sQ<\�B��7�1�','FOSA - ks Salongo Poste de Santé (ks Luebo/ks Kakulu 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�s�<\�B��7�1�','FOSA - ks Kakungula Centre de Santé (ks Luebo/ks Kakungula)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�s\�<\�B��7�1�','FOSA - ks Dibaya Poste de Santé (ks Luebo/ks Kambangoma)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�t<\�B��7�1�','FOSA - ks Kambangoma Centre de Santé (ks Luebo/ks Kambangoma)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�u<\�B��7�1�','FOSA - ks Kalumba Poste de Santé (ks Luebo/ks Kanyinganyinga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�u~<\�B��7�1�','FOSA - ks Kanyinganyinga Centre de Santé (ks Luebo/ks Kanyinganyinga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�u�<\�B��7�1�','FOSA - ks Konyi 1 Centre de Santé (ks Luebo/ks Konyi 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�u�<\�B��7�1�','FOSA - ks Tito Poste de Santé (ks Luebo/ks Konyi 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�v3<\�B��7�1�','FOSA - ks Konyi 2 Centre de Santé (ks Luebo/ks Konyi 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�vn<\�B��7�1�','FOSA - ks Mukongo Poste de Santé (ks Luebo/ks Konyi 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�v�<\�B��7�1�','FOSA - ks Du Peuple Poste de Santé (ks Luebo/Ks Luebo Cité 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�v\�<\�B��7�1�','FOSA - ks Jerusalem Poste de Santé (ks Luebo/Ks Luebo Cité 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�w%<\�B��7�1�','FOSA - ks Luebo Cité Centre de Santé (ks Luebo/Ks Luebo Cité 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�wa<\�B��7�1�','FOSA - ks Luebo Dilolo Centre de Santé (ks Luebo/ks Luebo Dilolo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�w�<\�B��7�1�','FOSA - ks Luebo Hopital General de Reference (ks Luebo/ks Luebo Dilolo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�w\�<\�B��7�1�','FOSA - ks Mk Poste de Santé (ks Luebo/ks Luebo Dilolo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�x<\�B��7�1�','FOSA - ks Lulengele Centre de Santé (ks Luebo/ks Luebo Lulengele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�xO<\�B��7�1�','FOSA - ks Nsasayi Poste de Santé (ks Luebo/ks Luebo Lulengele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�x�<\�B��7�1�','FOSA - ks Kasangisha Poste de Santé (ks Luebo/ks Luebo Wedi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�x\�<\�B��7�1�','FOSA - ks Luebo Wedi Centre de Santé (ks Luebo/ks Luebo Wedi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�y<\�B��7�1�','FOSA - ks Lumpembe Centre de Santé (ks Luebo/ks Lumpembe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�y?<\�B��7�1�','FOSA - ks Kabangu Poste de Santé (Bawamba) (ks Luebo/ks Lunkelu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�y{<\�B��7�1�','FOSA - ks Lunkelu Centre de Santé (ks Luebo/ks Lunkelu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�y�<\�B��7�1�','FOSA - ks Pilote Poste de Santé (ks Luebo/ks Lunkelu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�z\�<\�B��7�1�','FOSA - ks Kalomba Poste de Santé (ks Luebo/ks Malangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�{<\�B��7�1�','FOSA - ks Malangu Centre de Santé (ks Luebo/ks Malangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�{]<\�B��7�1�','FOSA - ks Tshibuyi Poste de Santé (ks Luebo/ks Malangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�{�<\�B��7�1�','FOSA - ks Mukuandianga Centre de Santé (ks Luebo/ks Mukuandjanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�{\�<\�B��7�1�','FOSA - ks Muenze Poste de Santé (ks Luebo/ks Ndumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�|<\�B��7�1�','FOSA - ks Ndumba Centre de Santé (ks Luebo/ks Ndumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�|T<\�B��7�1�','FOSA - ks Ndungu Centre de Santé (ks Luebo/ks Ndungu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�}1<\�B��7�1�','FOSA - ks Muayila Poste de Santé (ks Luebo/ks Nyengele Nkoshi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�~H<\�B��7�1�','FOSA - ks Nyengele Centre de Santé (ks Luebo/ks Nyengele Nkoshi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�~�<\�B��7�1�','FOSA - ks Tshibuayi Poste de Santé (ks Luebo/ks Nyengele Nkoshi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�~�<\�B��7�1�','FOSA - ks Malu Mfuamba Poste de Santé (ks Luebo/ks Shambuambua)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�~�<\�B��7�1�','FOSA - ks Shambuambua Centre de Santé (ks Luebo/ks Shambuambua)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�<<\�B��7�1�','FOSA - ks Sheppard Centre de Santé (ks Luebo/ks Sheppard)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ā<\�B��7�1�','FOSA - ks Sheppard CPC Centre Hospitalier (ks Luebo/ks Sheppard)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĀV<\�B��7�1�','FOSA - ks Nduaya Milambo Poste de Santé (ks Luebo/ks Tshiombe Bululu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ā�<\�B��7�1�','FOSA - ks Tshiombe Bululu Centre de Santé (ks Luebo/ks Tshiombe Bululu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ā\�<\�B��7�1�','FOSA - ks Bashipanga Centre de Santé (ks Mikope/ks Bashipanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ā	<\�B��7�1�','FOSA - ks Bashipanga Port Poste de Santé (ks Mikope/ks Bashipanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�āE<\�B��7�1�','FOSA - ks Madi mape poste de santé (ks Mikope/ks Bashipanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ā�<\�B��7�1�','FOSA - ks Masua 2 Poste de Santé (ks Mikope/ks Bashipanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ā�<\�B��7�1�','FOSA - ks Basongo Centre de Santé (ks Mikope/ks Basongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ā\�<\�B��7�1�','FOSA - ks Dilumbu Poste de Santé (ks Mikope/ks Basongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ă2<\�B��7�1�','FOSA - ks Kalembe Ditu Poste de Santé (ks Mikope/ks Basongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ăm<\�B��7�1�','FOSA - ks Ngamba Poste de Santé (ks Mikope/ks Basongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ă�<\�B��7�1�','FOSA - ks Biyenge Makekele Centre de Santé (ks Mikope/ks Biyenge Makekele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ă\�<\�B��7�1�','FOSA - ks Kasongo Biyenge Poste de Santé (ks Mikope/ks Biyenge Makekele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ă<\�B��7�1�','FOSA - ks Libanga Metre Poste de Santé (ks Mikope/ks Biyenge Makekele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ă]<\�B��7�1�','FOSA - ks Bena Luindji Poste de Santé (ks Mikope/ks Dibanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ă�<\�B��7�1�','FOSA - ks Dibanga Centre de Santé (ks Mikope/ks Dibanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ă\�<\�B��7�1�','FOSA - ks Dibanga Popol Poste de Santé (ks Mikope/ks Dibanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ą<\�B��7�1�','FOSA - ks Domay Kashosho Centre de Santé (ks Mikope/ks Domay Kashosho)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĄJ<\�B��7�1�','FOSA - ks Komi Poste de Santé (ks Mikope/ks Domay Kashosho)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ą�<\�B��7�1�','FOSA - ks Mibalayi poste de santé (ks Mikope/ks Domay Kashosho)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ą�<\�B��7�1�','FOSA - ks Ndjimbu Poste de Santé (ks Mikope/ks Domay Kashosho)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ą�<\�B��7�1�','FOSA - ks Ntumina Poste de Santé (ks Mikope/ks Domay Kashosho)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ą8<\�B��7�1�','FOSA - ks Domay Kakese Poste de Santé (ks Mikope/ks Domay Munene)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ąs<\�B��7�1�','FOSA - ks Domay Munene Centre de Santé (ks Mikope/ks Domay Munene)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ą�<\�B��7�1�','FOSA - ks Kandjumba Poste de Santé (ks Mikope/ks Domay Munene)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ą\�<\�B��7�1�','FOSA - ks Ibombo Nganzamba Poste de Santé (ks Mikope/ks Ibowa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ć$<\�B��7�1�','FOSA - ks Ibowa Centre de Santé (ks Mikope/ks Ibowa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ć^<\�B��7�1�','FOSA - ks Ilebo Ndjare Centre de Santé (ks Mikope/ks Ilebo Ndjare)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ć�<\�B��7�1�','FOSA - ks Makuba Poste de Santé (ks Mikope/ks Ilebo Ndjare)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ć\�<\�B��7�1�','FOSA - ks Bweke Poste de Santé (ks Mikope/ks Kabamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ć<\�B��7�1�','FOSA - ks Kabamba Centre de Santé (ks Mikope/ks Kabamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ćN<\�B��7�1�','FOSA - ks Kasumba Kakese Poste de Santé (ks Mikope/ks Kabamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ć�<\�B��7�1�','FOSA - ks Kabombo Centre de Santé (ks Mikope/ks Kabombo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ć\�<\�B��7�1�','FOSA - ks Kayamba Poste de Santé (ks Mikope/ks Kabombo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ć�<\�B��7�1�','FOSA - ks Ngela Longo Poste de Santé (ks Mikope/ks Kabombo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĉ:<\�B��7�1�','FOSA - ks Itambi Poste de Santé (ks Mikope/ks Kabwanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĉt<\�B��7�1�','FOSA - ks Kabwanga Centre de Santé (ks Mikope/ks Kabwanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĉ�<\�B��7�1�','FOSA - ks Makasu Poste de Santé (ks Mikope/ks Kabwanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĉ\�<\�B��7�1�','FOSA - ks Ndjongere Poste de Santé (ks Mikope/ks Kabwanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĉ$<\�B��7�1�','FOSA - ks Shayako Poste de Santé (ks Mikope/ks Kabwanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĉ_<\�B��7�1�','FOSA - ks Kampata Poste de Santé (ks Mikope/ks Kumiyulu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ċy<\�B��7�1�','FOSA - ks Kumiyulu Centre de Santé (ks Mikope/ks Kumiyulu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ċ\�<\�B��7�1�','FOSA - ks Kumunzadi Poste de Santé (ks Mikope/ks Kumiyulu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ċ<\�B��7�1�','FOSA - ks Lenga Centre de Santé (ks Mikope/ks Lenga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ċR<\�B��7�1�','FOSA - ks Pasu Poste de Santé (ks Mikope/ks Lenga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ċ�<\�B��7�1�','FOSA - ks Shongolo Mabondo Poste de Santé (ks Mikope/ks Lenga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ċ\�<\�B��7�1�','FOSA - ks Adama Poste de Santé (ks Mikope/ks Mapangu Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Č<\�B��7�1�','FOSA - ks La Rose Polyclinique (ks Mikope/ks Mapangu Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Č@<\�B��7�1�','FOSA - ks Makitshi Mbondu Poste de Santé (ks Mikope/ks Mapangu Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Č{<\�B��7�1�','FOSA - ks Mapangu Etat Centre de Santé (ks Mikope/ks Mapangu Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Č�<\�B��7�1�','FOSA - ks Mapangu Pbm Hopital Secondaire (ks Mikope/ks Mapangu Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Č\�<\�B��7�1�','FOSA - ks Quartier congo poste de santé (ks Mikope/ks Mapangu Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�č,<\�B��7�1�','FOSA - ks Bombe Poste de Santé (ks Mikope/ks Mc Bushongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�čg<\�B��7�1�','FOSA - ks Bwau Poste de Santé (ks Mikope/ks Mc Bushongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�č�<\�B��7�1�','FOSA - ks Karanenge Poste de Santé (ks Mikope/ks Mc Bushongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�č\�<\�B��7�1�','FOSA - ks Kenge Poste de Santé (ks Mikope/ks Mc Bushongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ď<\�B��7�1�','FOSA - ks Mc Bushongo Centre de Santé (ks Mikope/ks Mc Bushongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĎT<\�B��7�1�','FOSA - ks Yenga Yenga Poste de Santé (ks Mikope/ks Mc Bushongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ď�<\�B��7�1�','FOSA - ks Kayaya Poste de Santé (ks Mikope/ks Mc Mapangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ď\�<\�B��7�1�','FOSA - ks Lubundji Poste de Santé (ks Mikope/ks Mc Mapangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ď<\�B��7�1�','FOSA - ks Mapangu Secteur Poste de Santé (ks Mikope/ks Mc Mapangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ď@<\�B��7�1�','FOSA - ks Mc Mapangu Centre de Santé (ks Mikope/ks Mc Mapangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ď}<\�B��7�1�','FOSA - ks Kambolo Poste de Santé (ks Mikope/ks Mc Mikope)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ď�<\�B��7�1�','FOSA - ks Mandjumba Poste de Santé (ks Mikope/ks Mc Mikope)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ď\�<\�B��7�1�','FOSA - ks Mc Mikope Centre de Santé (ks Mikope/ks Mc Mikope)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Đ.<\�B��7�1�','FOSA - ks Mikope Hôpital Général de Référence (ks Mikope/ks Mc Mikope)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Đh<\�B��7�1�','FOSA - ks Mikope Lwabala Poste de Santé (ks Mikope/ks Mc Mikope)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Đ�<\�B��7�1�','FOSA - ks Mikope Ndjare Poste de Santé (ks Mikope/ks Mc Mikope)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Đ\�<\�B��7�1�','FOSA - ks Malembe Munene Poste de Santé (ks Mikope/ks Mc Mwembe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�đ<\�B��7�1�','FOSA - ks Manith Mbondo Centre Hospitalier (ks Mikope/ks Mc Mwembe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�đV<\�B��7�1�','FOSA - ks Mc Mwembe Centre de Santé (ks Mikope/ks Mc Mwembe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�đ�<\�B��7�1�','FOSA - ks Mwanankadi Poste de Santé (ks Mikope/ks Mc Mwembe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�đ\�<\�B��7�1�','FOSA - ks Potambishi Poste de Santé (ks Mikope/ks Mc Mwembe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ē<\�B��7�1�','FOSA - ks Biyenge Poste de Santé (ks Mikope/ks Mitshibu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĒC<\�B��7�1�','FOSA - ks Malembe Mingeshi Poste de Santé (ks Mikope/ks Mitshibu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ē<\�B��7�1�','FOSA - ks Malembe Mudiasupu Poste de Santé (ks Mikope/ks Mitshibu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ē�<\�B��7�1�','FOSA - ks Mitshibu Centre de Santé (ks Mikope/ks Mitshibu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ē\�<\�B��7�1�','FOSA - ks Ngabi Poste de Santé (ks Mikope/ks Mitshibu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ē2<\�B��7�1�','FOSA - ks Nyekese Poste de Santé (ks Mikope/ks Mitshibu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ēl<\�B��7�1�','FOSA - ks Tshikaba Poste de Santé (ks Mikope/ks Mitshibu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ē�<\�B��7�1�','FOSA - ks Ingungu Poste de Santé (ks Mikope/ks Nyamandele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ē\�<\�B��7�1�','FOSA - ks Nsumba Poste de Santé (ks Mikope/ks Nyamandele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĕ<\�B��7�1�','FOSA - ks Nyamandele Centre de Santé (ks Mikope/ks Nyamandele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĔX<\�B��7�1�','FOSA - ks Shombemba 2 Poste de Santé (ks Mikope/ks Nyamandele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĕ�<\�B��7�1�','FOSA - ks Bushongo Loange Poste de Santé (ks Mikope/ks Shanga Lumbondji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĕ\�<\�B��7�1�','FOSA - ks Ibangi Poste de Santé (ks Mikope/ks Shanga Lumbondji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĕ<\�B��7�1�','FOSA - ks Kembe Malngo Poste de Santé (ks Mikope/ks Shanga Lumbondji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĕG<\�B��7�1�','FOSA - ks Shanga Lumbondji Centre de Santé (ks Mikope/ks Shanga Lumbondji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĕ�<\�B��7�1�','FOSA - ks Nshenge Poste de Santé (ks Mikope/ks Tshilomba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĕ�<\�B��7�1�','FOSA - ks Shakasongo Poste de Santé (ks Mikope/ks Tshilomba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĕ\�<\�B��7�1�','FOSA - ks Shamashenge Poste de Santé (ks Mikope/ks Tshilomba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ė2<\�B��7�1�','FOSA - ks Tshilomba Centre de Santé (ks Mikope/ks Tshilomba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ėm<\�B��7�1�','FOSA - ks Kashimba Poste de Santé (ks Mikope/ks Yamba Yamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ė�<\�B��7�1�','FOSA - ks Lele Poste de Santé (ks Mikope/ks Yamba Yamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ė\�<\�B��7�1�','FOSA - ks Malongo Bwanga Poste de Santé (ks Mikope/ks Yamba Yamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ė!<\�B��7�1�','FOSA - ks Sanga Sanga Poste de Santé (ks Mikope/ks Yamba Yamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ė\\<\�B��7�1�','FOSA - ks Yamba Yamba Centre de Santé (ks Mikope/ks Yamba Yamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ė�<\�B��7�1�','FOSA - ks Bena Makima Centre de Santé de Référence (ks Mushenge/ks Bena Makima)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ė\�<\�B��7�1�','FOSA - ks Bena Makima Port Poste de Santé (ks Mushenge/ks Bena Makima)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ę<\�B��7�1�','FOSA - ks Ilenge Poste de Santé (ks Mushenge/ks Bena Makima)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĘJ<\�B��7�1�','FOSA - ks Kankuadi Poste de Santé (ks Mushenge/ks Bena Makima)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ę�<\�B��7�1�','FOSA - ks Labadibamba Poste de Santé (ks Mushenge/ks Bena Makima)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ę\�<\�B��7�1�','FOSA - ks Bambunda 1 Poste de Santé (ks Mushenge/ks Bishanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ę�<\�B��7�1�','FOSA - ks Bishanga Centre de Santé (ks Mushenge/ks Bishanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ę9<\�B��7�1�','FOSA - ks Bishanga Kasaï Poste de Santé (ks Mushenge/ks Bishanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ęu<\�B��7�1�','FOSA - ks Bon Berger Poste de Santé (ks Mushenge/ks Bongo 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ę�<\�B��7�1�','FOSA - ks Bongo 1 Centre de Santé (ks Mushenge/ks Bongo 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ę\�<\�B��7�1�','FOSA - ks Disco Poste de Santé (ks Mushenge/ks Bongo 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ě)<\�B��7�1�','FOSA - ks Biyeng Bi Kum Poste de Santé (ks Mushenge/ks Bongo 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ěb<\�B��7�1�','FOSA - ks Bongo 2 Centre de Santé (ks Mushenge/ks Bongo 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ě�<\�B��7�1�','FOSA - ks Themar Poste de Santé (ks Mushenge/ks Bongo 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ě\�<\�B��7�1�','FOSA - ks Bupu Centre de Santé (ks Mushenge/ks Bupu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ě<\�B��7�1�','FOSA - ks Butala Centre de Santé (ks Mushenge/ks Butala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ěP<\�B��7�1�','FOSA - ks Tuleo Poste de Santé (ks Mushenge/ks Butala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĝk<\�B��7�1�','FOSA - ks Bwaya Centre de Santé (ks Mushenge/ks Bwaya)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĝ\�<\�B��7�1�','FOSA - ks Domiongo 1 Centre de Santé de Référence (ks Mushenge/ks Domiongo 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĝ<\�B��7�1�','FOSA - ks Domiongo Poste de Santé (ks Mushenge/ks Domiongo 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĝE<\�B��7�1�','FOSA - ks Bon Berger Poste de Santé (ks Mushenge/ks Domiongo 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĝ�<\�B��7�1�','FOSA - ks Domiongo 2 Centre de Santé (ks Mushenge/ks Domiongo 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĝ�<\�B��7�1�','FOSA - ks Ikombe Poste de Santé (ks Mushenge/ks Domiongo 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĝ�<\�B��7�1�','FOSA - ks Domiongo 3 Centre de Santé (ks Mushenge/ks Domiongo 3)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ğ3<\�B��7�1�','FOSA - ks Ikeke Centre de Santé (ks Mushenge/ks Ikeke)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ğn<\�B��7�1�','FOSA - ks Shama Poste de Santé (ks Mushenge/ks Ikeke)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ğ�<\�B��7�1�','FOSA - ks Imambumba Centre de Santé (ks Mushenge/ks Imambumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ğ\�<\�B��7�1�','FOSA - ks Makungu Poste de Santé (ks Mushenge/ks Imambumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ğ<\�B��7�1�','FOSA - ks Ipanga Centre de Santé (ks Mushenge/ks Ipanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ğ\\<\�B��7�1�','FOSA - ks Iyema Poste de Santé (ks Mushenge/ks Ipanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ğ�<\�B��7�1�','FOSA - ks Mbuong Bushep Poste de Santé (ks Mushenge/ks Ipanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ğ\�<\�B��7�1�','FOSA - ks Kabwe Centre de Santé (ks Mushenge/ks Kabwe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ġ\r<\�B��7�1�','FOSA - ks Longo Poste de Santé (ks Mushenge/ks Kabwe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĠH<\�B��7�1�','FOSA - ks Pamba Poste de Santé (ks Mushenge/ks Kabwe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ġ�<\�B��7�1�','FOSA - ks Lodi Centre de Santé (ks Mushenge/ks Lodi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ġ\�<\�B��7�1�','FOSA - ks Biyenge Centre de Santé (ks Mushenge/ks Mbima)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ġ<\�B��7�1�','FOSA - ks Mbima Centre de Santé (ks Mushenge/ks Mbima)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ġ=<\�B��7�1�','FOSA - ks Mbona Biesh Poste de Santé (ks Mushenge/ks Mbima)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ġx<\�B��7�1�','FOSA - ks Kobolo Poste de Santé (ks Mushenge/ks Mwentshi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ġ�<\�B��7�1�','FOSA - ks Mwentshi Centre de Santé (ks Mushenge/ks Mwentshi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ġ\�<\�B��7�1�','FOSA - ks Tuna Centre de Santé (ks Mushenge/ks Mwentshi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ģ&<\�B��7�1�','FOSA - ks Ngoto Centre de Santé (ks Mushenge/ks Ngoto)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ģa<\�B��7�1�','FOSA - ks Nkoshi Centre de Santé (ks Mushenge/ks Nkoshi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ģ�<\�B��7�1�','FOSA - ks Buaya Bu Ngel Makung Poste de Santé (ks Mushenge/ks Nono)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ģ\�<\�B��7�1�','FOSA - ks Nono Centre de Santé (ks Mushenge/ks Nono)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ģ<\�B��7�1�','FOSA - ks Pembeangu Centre de Santé (ks Mushenge/ks Pembeangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ģM<\�B��7�1�','FOSA - ks Shinateke Poste de Santé (ks Mushenge/ks Pembeangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ģ�<\�B��7�1�','FOSA - ks Bulodi Poste de Santé (ks Mushenge/ks Pilote)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ģ\�<\�B��7�1�','FOSA - ks Mayi Poste de Santé (ks Mushenge/ks Pilote)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ģ�<\�B��7�1�','FOSA - ks Mushenge Hôpital Général de Référence (ks Mushenge/ks Pilote)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĥ8<\�B��7�1�','FOSA - ks Papa Serges Poste de Santé (ks Mushenge/ks Pilote)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĥr<\�B��7�1�','FOSA - ks Pilote Centre de Santé (ks Mushenge/ks Pilote)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĥ�<\�B��7�1�','FOSA - ks Yeke Centre de Santé (ks Mushenge/ks Pilote)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĥ\�<\�B��7�1�','FOSA - ks Ngelengombe Poste de Santé (ks Mushenge/ks Shongamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĥ$<\�B��7�1�','FOSA - ks Shongamba Centre de Santé (ks Mushenge/ks Shongamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĥ^<\�B��7�1�','FOSA - ks Tulumbu Poste de Santé (ks Mushenge/ks Shongamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĥ�<\�B��7�1�','FOSA - ks Tusobe Poste de Santé (ks Mushenge/ks Shongamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĥ\�<\�B��7�1�','FOSA - ks Malongo Poste de Santé (ks Mushenge/ks Sonkatshi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ħ<\�B��7�1�','FOSA - ks Sonkatshi Centre de Santé (ks Mushenge/ks Sonkatshi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĦH<\�B��7�1�','FOSA - ks Butalale Centre de Santé (ks Mutena/ks Diboko)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ħ�<\�B��7�1�','FOSA - ks Christ Roi Centre de Santé (ks Mutena/ks Diboko)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ħ�<\�B��7�1�','FOSA - ks Diboko Centre de Santé (ks Mutena/ks Diboko)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ħ�<\�B��7�1�','FOSA - ks Dieu Merci Centre de Santé (ks Mutena/ks Diboko)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ħ6<\�B��7�1�','FOSA - ks La Voix de l\'Aigle Centre de Santé (ks Mutena/ks Diboko)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ħq<\�B��7�1�','FOSA - ks Muanetu Centre de Santé (ks Mutena/ks Diboko)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ħ�<\�B��7�1�','FOSA - ks Kempa Centre de Santé (ks Mutena/ks Hôpital)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ħ\�<\�B��7�1�','FOSA - ks La Revelation Centre de Santé (ks Mutena/ks Hôpital)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĩ!<\�B��7�1�','FOSA - ks Matondo Centre de Santé (ks Mutena/ks Hôpital)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĩ[<\�B��7�1�','FOSA - ks Mutena Hôpital Général de Référence (ks Mutena/ks Hôpital)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĩ�<\�B��7�1�','FOSA - ks Benédiction Centre de Santé (ks Mutena/ks Kamabanje)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĩ\�<\�B��7�1�','FOSA - ks Dinanga Centre de Santé (ks Mutena/ks Kamabanje)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĩ\r<\�B��7�1�','FOSA - ks La Piscine Centre de Santé (ks Mutena/ks Kamabanje)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĩH<\�B��7�1�','FOSA - ks Libéral Centre de Santé (ks Mutena/ks Kamabanje)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĩ�<\�B��7�1�','FOSA - ks Mamu Muledi Centre de Santé (ks Mutena/ks Kamabanje)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĩ�<\�B��7�1�','FOSA - ks Polyca Centre de Santé (ks Mutena/ks Kamabanje)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĩ�<\�B��7�1�','FOSA - ks 27 ème CMCO Centre de Santé (ks Mutena/ks Kampengele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ī2<\�B��7�1�','FOSA - ks Jenovic Centre de Santé (ks Mutena/ks Kampengele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Īn<\�B��7�1�','FOSA - ks Kapanda Centre de Santé (ks Mutena/ks Kampengele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ī�<\�B��7�1�','FOSA - ks Maison Mère Centre de Santé (ks Mutena/ks Kampengele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ī\�<\�B��7�1�','FOSA - ks Bon Berger Centre de Santé (ks Mutena/ks Katshiloba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ī<\�B��7�1�','FOSA - ks Katshiloba Centre de Santé (ks Mutena/ks Katshiloba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�īX<\�B��7�1�','FOSA - ks Lupandu Luetu Centre de Santé (ks Mutena/ks Katshiloba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ī�<\�B��7�1�','FOSA - ks Village Centre de Santé (ks Mutena/ks Katshiloba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ī\�<\�B��7�1�','FOSA - ks 27è CMCO Centre de Santé (ks Mutena/ks Kola Moyo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĭ<\�B��7�1�','FOSA - ks Dinanga Centre de Santé (ks Mutena/ks Kola Moyo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĬB<\�B��7�1�','FOSA - ks Mukunga Tsh Centre de Santé (ks Mutena/ks Kola Moyo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĭ|<\�B��7�1�','FOSA - ks Nsubila Centre de Santé (ks Mutena/ks Kola Moyo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĭ�<\�B��7�1�','FOSA - ks Kamupatu Centre de Santé (ks Mutena/ks Lombe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĭ\�<\�B��7�1�','FOSA - ks Lombe Centre de Santé (ks Mutena/ks Lombe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĭ+<\�B��7�1�','FOSA - ks 27è CMCO Centre de Santé (ks Mutena/ks Luvula)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĭe<\�B��7�1�','FOSA - ks Adventiste Centre de Santé (ks Mutena/ks Luvula)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĭ�<\�B��7�1�','FOSA - ks Bon Samaritain Centre de Santé (ks Mutena/ks Luvula)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Į�<\�B��7�1�','FOSA - ks Mupoyi Centre de Santé (ks Mutena/ks Luvula)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�į<\�B��7�1�','FOSA - ks Muamuengo Centre de Santé (ks Mutena/ks Muamuengo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�įW<\�B��7�1�','FOSA - ks Tshitanvi Centre de Santé (ks Mutena/ks Muamuengo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�į�<\�B��7�1�','FOSA - ks Kavumbu Centre de Santé (ks Mutena/ks Mukuku)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�į\�<\�B��7�1�','FOSA - ks Kazeza Centre de Santé (ks Mutena/ks Mukuku)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�İ<\�B��7�1�','FOSA - ks Mukuku Centre de Santé (ks Mutena/ks Mukuku)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�İA<\�B��7�1�','FOSA - ks Bulelela Centre de Santé (ks Mutena/ks Mutena)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�İ{<\�B��7�1�','FOSA - ks Dap Le Box Centre de Santé (ks Mutena/ks Mutena)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�İ�<\�B��7�1�','FOSA - ks Kasonga Lunda Centre de Santé (ks Mutena/ks Mutena)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�İ\�<\�B��7�1�','FOSA - ks Perseverence Centre de Santé (ks Mutena/ks Mutena)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ı,<\�B��7�1�','FOSA - ks Biaboyana Centre de Santé (ks Mutena/ks Mutetela)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ıg<\�B��7�1�','FOSA - ks Kavundudi Centre de Santé (ks Mutena/ks Mutetela)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ı�<\�B��7�1�','FOSA - ks Shakayanda Centre de Santé (ks Mutena/ks Mutetela)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ı\�<\�B��7�1�','FOSA - ks Galaxie Centre de Santé (ks Mutena/ks Mutshima)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĳ<\�B��7�1�','FOSA - ks Mutshima Centre de Santé (ks Mutena/ks Mutshima)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĲT<\�B��7�1�','FOSA - ks Omo Centre de Santé (ks Mutena/ks Mutshima)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĳ�<\�B��7�1�','FOSA - ks Tout Saint Centre de Santé (ks Mutena/ks Mutshima)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĳ\�<\�B��7�1�','FOSA - ks N\'Aie Pas Peur Centre de Santé (ks Mutena/ks Ndala Kalunga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĳ<\�B��7�1�','FOSA - ks Odeur du Champ Centre de Santé (ks Mutena/ks Ndala Kalunga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĳ@<\�B��7�1�','FOSA - ks Sauveur Centre de Santé (ks Mutena/ks Ndala Kalunga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĳy<\�B��7�1�','FOSA - ks Kimbaguiste Centre de Santé (ks Mutena/ks Ndambi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĳ�<\�B��7�1�','FOSA - ks Muakaji Centre de Santé (ks Mutena/ks Ndambi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĳ\�<\�B��7�1�','FOSA - ks Ndambi Centre de Santé (ks Mutena/ks Ndambi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĵ)<\�B��7�1�','FOSA - ks Courte Joie Centre de Santé (ks Mutena/ks Tshibangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĵd<\�B��7�1�','FOSA - ks Mukomasanga Centre de Santé (ks Mutena/ks Tshibangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĵ�<\�B��7�1�','FOSA - ks Soufle de Vie Centre de Santé (ks Mutena/ks Tshibangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĵ\�<\�B��7�1�','FOSA - ks 27È CMCO Centre de Santé (ks Mutena/ks Tshipata)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĵ<\�B��7�1�','FOSA - ks Luse Centre de Santé (ks Mutena/ks Tshipata)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĵR<\�B��7�1�','FOSA - ks 27È CMCO Centre de Santé (ks Mutena/ks Tshisenge)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĵ�<\�B��7�1�','FOSA - ks Boko Centre de Santé (ks Mutena/ks Tshisenge)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĵ\�<\�B��7�1�','FOSA - ks Grace À Dieu Centre de Santé (ks Mutena/ks Tshisenge)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ķ<\�B��7�1�','FOSA - ks Jesus Seul Centre de Santé (ks Mutena/ks Tshisenge)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ķ=<\�B��7�1�','FOSA - ks Tokadev Centre de Santé (ks Mutena/ks Tshisenge)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ķz<\�B��7�1�','FOSA - ks Ekandola Centre de Santé (ks Mutena/ks Tshisuabantu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ķ�<\�B��7�1�','FOSA - ks Espoire Centre de Santé (ks Mutena/ks Tshisuabantu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ķ\�<\�B��7�1�','FOSA - ks Francois Centre de Santé (ks Mutena/ks Tshisuabantu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ķ)<\�B��7�1�','FOSA - ks Mubadidi Centre de Santé (ks Mutena/ks Tshisuabantu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ķb<\�B��7�1�','FOSA - ks Nzambi Musue Centre de Santé (ks Mutena/ks Tshisuabantu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ķ�<\�B��7�1�','FOSA - ks 27È CMCO Centre de Santé (ks Mutena/ks Tshitande)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ķ\�<\�B��7�1�','FOSA - ks Kangandu Centre de Santé (ks Mutena/ks Tshitande)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĸ<\�B��7�1�','FOSA - ks Kasau Centre de Santé (ks Mutena/ks Tshitande)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĸN<\�B��7�1�','FOSA - ks Paradis Centre de Santé (ks Mutena/ks Tshitande)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĸ�<\�B��7�1�','FOSA - ks Zozi Zoe Centre de Santé (ks Mutena/ks Tshitande)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĸ\�<\�B��7�1�','FOSA - ks Bakatombi Centre de Santé (ks Mweka/ks Bakatombi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĸ�<\�B��7�1�','FOSA - ks Kabau Poste de Santé (ks Mweka/ks Bakatombi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĺ7<\�B��7�1�','FOSA - ks Banongo Centre de Santé (ks Mweka/ks Banongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĺq<\�B��7�1�','FOSA - ks Temas Poste de Santé (ks Mweka/ks Banongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĺ�<\�B��7�1�','FOSA - ks Benalongo Centre de Santé (ks Mweka/ks Benalongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ĺ\�<\�B��7�1�','FOSA - ks Benalongo Garre Centre de Santé (ks Mweka/ks Benalongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĺ$<\�B��7�1�','FOSA - ks Bulangu Kapimbi Centre de Santé (ks Mweka/ks Bulangu Kapimbi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĺ_<\�B��7�1�','FOSA - ks Mbolele Poste de Santé (ks Mweka/ks Bulangu Kapimbi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĺ�<\�B��7�1�','FOSA - ks Mbongatshiala Poste de Santé (ks Mweka/ks Bulangu Kapimbi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĺ\�<\�B��7�1�','FOSA - ks Bena Nsele Centre de Santé (ks Mweka/ks Bulangu Tshimbulu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ļ\r<\�B��7�1�','FOSA - ks Bulangu Tshimbulu Centre de Santé (ks Mweka/ks Bulangu Tshimbulu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĻH<\�B��7�1�','FOSA - ks Ange de l’Eternel Poste de Santé (ks Mweka/ks Bulongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ļ�<\�B��7�1�','FOSA - ks Bulongo Centre de Santé (ks Mweka/ks Bulongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ļ�<\�B��7�1�','FOSA - ks Victor Muyaya Poste de Santé (ks Mweka/ks Bulongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ļ�<\�B��7�1�','FOSA - ks Bungamba Centre de Santé (ks Mweka/ks Bungamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ļ6<\�B��7�1�','FOSA - ks Bungamba Centre de Santé de Référence (ks Mweka/ks Bungamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ļp<\�B��7�1�','FOSA - ks Ifaf Centre de Santé (ks Mweka/ks Ifaf)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ļ�<\�B��7�1�','FOSA - ks Ikit Centre de Santé (ks Mweka/ks Ikit)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ļ\�<\�B��7�1�','FOSA - ks Marechal Poste de Santé (ks Mweka/ks Ikit)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ľ<\�B��7�1�','FOSA - ks Ishamandongo Centre de Santé (ks Mweka/ks Ishamandongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ĽY<\�B��7�1�','FOSA - ks Kalombayi Centre de Santé (ks Mweka/ks Kalombayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ľ�<\�B��7�1�','FOSA - ks Tshitala Poste de Santé (ks Mweka/ks Kalombayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ľ\�<\�B��7�1�','FOSA - ks Kaluamba Centre de Santé (ks Mweka/ks Kaluamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ľ<\�B��7�1�','FOSA - ks Bakaji Bantu Poste de Santé (ks Mweka/ks Kampungu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ľE<\�B��7�1�','FOSA - ks Kampungu Bakaji Bantu Centre de santé (ks Mweka/ks Kampungu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ľ�<\�B��7�1�','FOSA - ks Kampungu Centre de santé (ks Mweka/ks Kampungu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ľ�<\�B��7�1�','FOSA - ks Kampungu Centre Hospitalier (ks Mweka/ks Kampungu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�ľ\�<\�B��7�1�','FOSA - ks Kampungu Hôpital Secondaire (ks Mweka/ks Kampungu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ŀ-<\�B��7�1�','FOSA - ks Makonoko Centre de santé (ks Mweka/Ks Makonoko)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ŀh<\�B��7�1�','FOSA - ks Malongo 1 Centre de santé (ks Mweka/ks Malongo 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�Ŀ�<\�B��7�1�','FOSA - ks Shoko Centre de santé (ks Mweka/ks Malongo 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��\�<\�B��7�1�','FOSA - ks Ishangatshieme Centre de santé (ks Mweka/ks Malongo 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��\'<\�B��7�1�','FOSA - ks Malongo 2 Poste de santé (ks Mweka/ks Malongo 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��d<\�B��7�1�','FOSA - ks Lubanga Poste de Santé (ks Mweka/ks Mapeyi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\���<\�B��7�1�','FOSA - ks Mapeyi Centre de Santé Référence (ks Mweka/ks Mapeyi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\��\�<\�B��7�1�','FOSA - ks Mitoma Poste de Santé (ks Mweka/ks Mapeyi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Bena Nsamba Centre de santé (ks Mweka/ks Muanyika)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�Q<\�B��7�1�','FOSA - ks Muanyika Centre de Santé (ks Mweka/ks Muanyika)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�<\�B��7�1�','FOSA - ks Muanyika Centre de Santé de Référence (ks Mweka/ks Muanyika)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Bamuana Poste de Santé (ks Mweka/ks Muteba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Muteba Centre de Santé (ks Mweka/ks Muteba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�?<\�B��7�1�','FOSA - ks Congo Poste de Santé (ks Mweka/ks Mweka 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�z<\�B��7�1�','FOSA - ks Mweka 1 Centre de Santé (ks Mweka/ks Mweka 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�õ<\�B��7�1�','FOSA - ks Mweka Centre Hospitalier (ks Mweka/ks Mweka 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Mweka Hopital Général de Reference (ks Mweka/ks Mweka 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�*<\�B��7�1�','FOSA - ks Sncc Hop Centre Hospitalier (ks Mweka/ks Mweka 1)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�f<\�B��7�1�','FOSA - ks Mweka 2 Centre de Santé (ks Mweka/ks Mweka 2)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Ġ<\�B��7�1�','FOSA - ks Mweka 3 Centre de Santé (ks Mweka/ks Mweka 3)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Bakamayi Poste de Santé (ks Mweka/ks Nsungi Munene)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Nsungi Munene Centre de Santé (ks Mweka/ks Nsungi Munene)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�O<\�B��7�1�','FOSA - ks Sangila Poste de Santé (ks Mweka/ks Nsungi Munene)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Ŋ<\�B��7�1�','FOSA - ks Fraternite Poste de Santé (ks Mweka/ks Pilote)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Pilote Centre de Santé (Mweka) (ks Mweka/ks Pilote)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Dibanda Poste de Santé (ks Mweka/ks Tshikuluka)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�;<\�B��7�1�','FOSA - ks Tshikuluka Centre de Santé (ks Mweka/ks Tshikuluka)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�w<\�B��7�1�','FOSA - ks Bangamba Centre de Santé (ks Ndjoko Mpunda/ks Bangamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Ƴ<\�B��7�1�','FOSA - ks Bashi Biyenge Centre de Santé (ks Ndjoko Mpunda/ks Bashi Biyenge)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Monyi Muitu Poste de Santé (ks Ndjoko Mpunda/ks Bashi Biyenge)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�*<\�B��7�1�','FOSA - ks Ndjoko Mpunda Hôpital Général de Référence (ks Ndjoko Mpunda/ks Bashi Biyenge)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�f<\�B��7�1�','FOSA - Ks Tshiaula Poste de Santé (ks Ndjoko Mpunda/ks Bashi Biyenge)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Ǫ<\�B��7�1�','FOSA - ks Bena Lumba Centre de Santé (ks Ndjoko Mpunda/ks Bena Lumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Mbombo Diala Poste de Santé (ks Ndjoko Mpunda/ks Bena Lumba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�#<\�B��7�1�','FOSA - ks Kangombe Centre de Santé (ks Ndjoko Mpunda/ks Kangombe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�]<\�B��7�1�','FOSA - ks Nshimba Poste de Santé (ks Ndjoko Mpunda/ks Kangombe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Ȗ<\�B��7�1�','FOSA - 27ème CMCO Poste de santé (ks Ndjoko Mpunda/ks Kapemba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Bakuanga Poste de Santé (ks Ndjoko Mpunda/ks Kapemba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Don de Dieu Poste de Santé (ks Ndjoko Mpunda/ks Kapemba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�E<\�B��7�1�','FOSA - ks Kapemba Etat Centre de Santé (ks Ndjoko Mpunda/ks Kapemba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�ɀ<\�B��7�1�','FOSA - ks Tshimbalanga Poste de Santé (ks Ndjoko Mpunda/ks Kapemba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�ɻ<\�B��7�1�','FOSA - ks Kapindula Centre de Santé (ks Ndjoko Mpunda/ks Kapindula)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Kasonga Mingitshi Poste de Santé (ks Ndjoko Mpunda/ks Kapindula)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�5<\�B��7�1�','FOSA - ks Mbumba Poste de Santé (ks Ndjoko Mpunda/ks Kapindula)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�o<\�B��7�1�','FOSA - ks Bure Poste de Santé (ks Ndjoko Mpunda/ks Kimbanguiste)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�ʪ<\�B��7�1�','FOSA - ks Icf Centre de Santé (ks Ndjoko Mpunda/ks Kimbanguiste)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Buabilo Poste de Santé (ks Ndjoko Mpunda/ks Luama Kabambayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Kasai Medical Poste de Santé (ks Ndjoko Mpunda/ks Luama Kabambayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�Z<\�B��7�1�','FOSA - ks Kayeye Poste de Santé (ks Ndjoko Mpunda/ks Luama Kabambayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�˔<\�B��7�1�','FOSA - ks Kunasanga Poste de Santé (ks Ndjoko Mpunda/ks Luama Kabambayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Luama Kabambayi Centre de Santé (ks Ndjoko Mpunda/ks Luama Kabambayi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Malu Disu Poste de Santé (ks Ndjoko Mpunda/ks Malu Malu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�E<\�B��7�1�','FOSA - ks Malu Malu Centre de Santé (ks Ndjoko Mpunda/ks Malu Malu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�̀<\�B��7�1�','FOSA - ks Tuambuluishangana Centre Hospitalier (ks Ndjoko Mpunda/ks Malu Malu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�̺<\�B��7�1�','FOSA - ks Kayenda Kumbu Poste de Santé (ks Ndjoko Mpunda/ks Mbayi Kamonji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Lungumba Poste de Santé (ks Ndjoko Mpunda/ks Mbayi Kamonji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�/<\�B��7�1�','FOSA - ks Mbayi Kamonji centre de Santé (ks Ndjoko Mpunda/ks Mbayi Kamonji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�j<\�B��7�1�','FOSA - ks Nkate mushinda Poste de Santé (ks Ndjoko Mpunda/ks Mbayi Kamonji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�ͧ<\�B��7�1�','FOSA - ks Nshimba 2 Poste de Santé (ks Ndjoko Mpunda/ks Mbayi Kamonji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Mputa Centre de Santé (ks Ndjoko Mpunda/ks Mputa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Ndayi Tshikolo Poste de Santé (ks Ndjoko Mpunda/ks Mputa)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�W<\�B��7�1�','FOSA - ks Malenga Centre de Santé (ks Ndjoko Mpunda/ks Mukanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Α<\�B��7�1�','FOSA - ks Mukanga Centre de Santé (ks Ndjoko Mpunda/ks Mukanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Buetu Bonso Poste de Santé (ks Ndjoko Mpunda/ks Mukuadjanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Kasanji Poste de Santé (ks Ndjoko Mpunda/ks Mukuadjanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�A<\�B��7�1�','FOSA - ks Mukuadjanga Centre de Santé (ks Ndjoko Mpunda/ks Mukuadjanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�~<\�B��7�1�','FOSA - ks Tshisele Mutumba Poste de Santé (ks Ndjoko Mpunda/ks Mukuadjanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Ϲ<\�B��7�1�','FOSA - ks Kaluebo Poste de Santé (ks Ndjoko Mpunda/ks Ndjoko Adventiste)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Kayeye Etat Poste de Santé (ks Ndjoko Mpunda/ks Ndjoko Adventiste)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�.<\�B��7�1�','FOSA - ks Mere Et Enft Centre de Santé (ks Ndjoko Mpunda/ks Ndjoko Adventiste)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�i<\�B��7�1�','FOSA - ks Espoir Centre de Santé (ks Ndjoko Mpunda/ks Ndjoko Catholique)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Ф<\�B��7�1�','FOSA - ks Hopital Secondaire Catholique (ks Ndjoko Mpunda/ks Ndjoko Catholique)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks La Grace Poste de Santé (ks Ndjoko Mpunda/ks Ndjoko Catholique)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Bon Berger Poste de Santé (ks Ndjoko Mpunda/ks Ndjoko Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�Z<\�B��7�1�','FOSA - ks Jehovah Jiré Poste de Santé (ks Ndjoko Mpunda/ks Ndjoko Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Ҙ<\�B��7�1�','FOSA - ks Les Ames Poste de Santé (ks Ndjoko Mpunda/ks Ndjoko Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Ndjoko Etat Centre Hospitalier (ks Ndjoko Mpunda/ks Ndjoko Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Rachat de l\'Eternel Poste de Santé (ks Ndjoko Mpunda/ks Ndjoko Etat)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�M<\�B��7�1�','FOSA - ks Mbayi Tshituala Poste de Santé (ks Ndjoko Mpunda/ks Tshialupemba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�ӈ<\�B��7�1�','FOSA - ks Tshialupemba Centre de Santé (ks Ndjoko Mpunda/ks Tshialupemba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Kadiadia Caritas Poste de Santé (ks Ndjoko Mpunda/ks Tshikuma)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Kadiadia Etat Poste de Santé (ks Ndjoko Mpunda/ks Tshikuma)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�9<\�B��7�1�','FOSA - ks Kapata Poste de Santé (ks Ndjoko Mpunda/ks Tshikuma)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�s<\�B��7�1�','FOSA - ks Mbelenge Poste de Santé (ks Ndjoko Mpunda/ks Tshikuma)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�Ԯ<\�B��7�1�','FOSA - ks Tshikuma Centre de Santé (ks Ndjoko Mpunda/ks Tshikuma)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Kabola Centre de Santé (ks Nyanga/ks Kabola)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�#<\�B��7�1�','FOSA - ks Nyanga Hopital General de Reference (ks Nyanga/ks Kabola)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�_<\�B��7�1�','FOSA - ks Sheta Poste de Santé (ks Nyanga/ks Kabola)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�՚<\�B��7�1�','FOSA - ks Kayala Centre de Santé (ks Nyanga/ks Kayala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Luhelo Poste de Santé (ks Nyanga/ks Kayala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Mbinda Poste de Santé (ks Nyanga/ks Kayala)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�K<\�B��7�1�','FOSA - ks Kasanza Poste de Santé (ks Nyanga/ks Khoma)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�օ<\�B��7�1�','FOSA - ks Khoma Sumbuji Centre de Santé (ks Nyanga/ks Khoma)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Kikunga Tembo Centre de Santé (ks Nyanga/ks Kikunga Tembo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Kindamba Centre de Santé (ks Nyanga/ks Kindamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�7<\�B��7�1�','FOSA - ks Luvu Poste de Santé (ks Nyanga/ks Kindamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�q<\�B��7�1�','FOSA - ks Luange Central Centre de Santé (ks Nyanga/ks Luangue Video)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�׬<\�B��7�1�','FOSA - ks Luange vidéo Poste de Santé (ks Nyanga/ks Luangue Video)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Mukishi Poste de Santé (ks Nyanga/ks Luangue Video)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�#<\�B��7�1�','FOSA - ks Bondo 2 Poste de Santé (ks Nyanga/ks Lukaka)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�^<\�B��7�1�','FOSA - ks Bondo Poste de Santé (ks Nyanga/ks Lukaka)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�ؙ<\�B��7�1�','FOSA - ks Lukaka Centre de Santé (ks Nyanga/ks Lukaka)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Kashitu Poste de Santé (ks Nyanga/ks Mbamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Lova Poste de Santé (ks Nyanga/ks Mbamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�E<\�B��7�1�','FOSA - ks Mbamba Centre de Santé (ks Nyanga/ks Mbamba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks BLM Poste de Santé (ks Nyanga/ks Mbango)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�ٻ<\�B��7�1�','FOSA - ks Grace À Dieu Poste de Santé (ks Nyanga/ks Mbango)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Mbango Centre de Santé (ks Nyanga/ks Mbango)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�0<\�B��7�1�','FOSA - ks Rigo Poste de Santé (ks Nyanga/ks Mbango)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�j<\�B��7�1�','FOSA - ks Ukanga Poste de Santé (ks Nyanga/ks Mbango)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�ڤ<\�B��7�1�','FOSA - ks Muhaku Centre de Santé (ks Nyanga/ks Muhaku)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Apror Poste de Santé (ks Nyanga/ks Nzadi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Lumière Poste de Santé (ks Nyanga/ks Nzadi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�V<\�B��7�1�','FOSA - ks Ngulungu Centre de Santé (ks Nyanga/ks Nzadi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�ۓ<\�B��7�1�','FOSA - ks Adefi Poste de Santé (ks Nyanga/ks Tukondo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Luaya 2 Poste de Santé (ks Nyanga/ks Tukondo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Luaya Poste de Santé (ks Nyanga/ks Tukondo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�@<\�B��7�1�','FOSA - ks Tukondo Centre de Santé (ks Nyanga/ks Tukondo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�{<\�B��7�1�','FOSA - ks Croix Rouge Centre de Santé (ks Tshikapa/ks Abattoire)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�ܵ<\�B��7�1�','FOSA - ks Dibumba Mbela Centre de Santé (ks Tshikapa/ks Abattoire)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks CMD Mukendi Centre de Santé (ks Tshikapa/ks Bakuba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�,<\�B��7�1�','FOSA - ks Kamas Centre de Santé (ks Tshikapa/ks Bakuba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�=<\�B��7�1�','FOSA - ks La Grace Poste de Santé (ks Tshikapa/ks Bakuba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�y<\�B��7�1�','FOSA - ks Pungi Poste de Santé (ks Tshikapa/ks Bakuba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�޵<\�B��7�1�','FOSA - ks Theophile Centre de Santé (ks Tshikapa/ks Bakuba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Aeg Centre de Santé (ks Tshikapa/ks Bel\'Air)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks CMC Centre de Santé (ks Tshikapa/ks Bel\'Air)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\0<\�B��7�1�','FOSA - ks Homme Fort Centre de Santé (ks Tshikapa/ks Bel\'Air)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Homme Port Centre de Santé (ks Tshikapa/ks Bel\'Air)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�K<\�B��7�1�','FOSA - ks Moyi Mupeluke Centre de Santé (ks Tshikapa/ks Bel\'Air)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - cdr CEDIMET (ks Tshikapa/ks Hôpital)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Kabuma Centre de Santé (ks Tshikapa/ks Hôpital)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Luayi Centre de Santé (ks Tshikapa/ks Hôpital)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Tout Va Bien Centre de Santé (ks Tshikapa/ks Hôpital)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Tshikapa Hôpital Général de Référence (ks Tshikapa/ks Hôpital)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�2<\�B��7�1�','FOSA - ks Kabuma Centre de Santé (ks Tshikapa/ks Kabikabi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�m<\�B��7�1�','FOSA - ks Luayi Centre de Santé (ks Tshikapa/ks Kabikabi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Biyaga Biyega Poste de Santé (ks Tshikapa/ks Kabuatu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Kamakonde Centre de Santé (ks Tshikapa/ks Kabuatu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�!<\�B��7�1�','FOSA - ks Khenda Centre de Santé (ks Tshikapa/ks Kabuatu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Yaya Poste de Santé (ks Tshikapa/ks Kabuatu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�4<\�B��7�1�','FOSA - ks Croix Rouge Centre de Santé (ks Tshikapa/ks Kabudila)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�F<\�B��7�1�','FOSA - ks Kukuanza Centre de Santé (ks Tshikapa/ks Kabudila)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Maboko Centre de Santé (ks Tshikapa/ks Kabudila)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Spoir Centre de Santé (ks Tshikapa/ks Kabudila)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Kalupombe Centre de Sante (ks Tshikapa/ks Kalupombi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�5<\�B��7�1�','FOSA - ks Shamuana Centre de Sante (ks Tshikapa/ks Kalupombi)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Kasanji Centre de Santé (ks Tshikapa/ks Kasanji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�&<\�B��7�1�','FOSA - ks Kasanji Poste de Santé (ks Tshikapa/ks Kasanji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�e<\�B��7�1�','FOSA - ks kaseshi Poste de Santé (ks Tshikapa/ks Kashimba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�A<\�B��7�1�','FOSA - ks Kashimba Centre de Santé (ks Tshikapa/ks Kashimba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�~<\�B��7�1�','FOSA - ks Matepa Centre de Santé (ks Tshikapa/ks Kashimba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Milombe Centre de Santé (ks Tshikapa/ks Kashimba)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Beto Nabeto Centre de Santé (ks Tshikapa/ks Katanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�1<\�B��7�1�','FOSA - ks Betu Centre de Santé (ks Tshikapa/ks Katanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�l<\�B��7�1�','FOSA - ks Katanga Centre de Santé (ks Tshikapa/ks Katanga)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Bon Berger Centre de Santé (ks Tshikapa/ks Katshongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Watuvile Centre de Santé (ks Tshikapa/ks Katshongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Yuka Centre de Santé (ks Tshikapa/ks Katshongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�Z<\�B��7�1�','FOSA - ks Kibulungu Centre de Santé (ks Tshikapa/ks Kibulungu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Nguma Poste de santé (ks Tshikapa/ks Kibulungu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks St Kinzongo Centre de Santé (ks Tshikapa/ks Kibulungu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks CMK Centre de Santé (ks Tshikapa/ks Kizito)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�P<\�B��7�1�','FOSA - ks Lueji Centre de Santé (ks Tshikapa/ks Kizito)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Nelly Poste de Santé (ks Tshikapa/ks Kizito)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Rehobot Centre de Santé (ks Tshikapa/ks Kizito)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Embo Centre de Santé (ks Tshikapa/ks La Paix)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�9<\�B��7�1�','FOSA - ks Kuhuma Poste de santé (ks Tshikapa/ks La Paix)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�s<\�B��7�1�','FOSA - ks Luezi Centre de Santé (ks Tshikapa/ks La Paix)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Kanzaji Centre de Santé (ks Tshikapa/ks Malongo)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Masangu Centre de Santé (ks Tshikapa/ks Masangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\"<\�B��7�1�','FOSA - ks Shaloom Poste de Santé (ks Tshikapa/ks Masangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\\<\�B��7�1�','FOSA - ks Katshianga Centre de Santé (ks Tshikapa/ks Matshibola)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks La Grace Centre de Santé (ks Tshikapa/ks Matshibola)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Matshibola Centre de Santé (ks Tshikapa/ks Matshibola)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\n<\�B��7�1�','FOSA - ks Kamitabale Poste de Santé (ks Tshikapa/ks Muyeji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�D<\�B��7�1�','FOSA - ks Muyeji Centre de Santé (ks Tshikapa/ks Muyeji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�~<\�B��7�1�','FOSA - ks Shamungole Poste de Santé (ks Tshikapa/ks Muyeji)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Disu Dia Kalunga Poste de Santé (ks Tshikapa/ks Ngombe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Ngombe Centre de Santé de Référence (ks Tshikapa/ks Ngombe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�0<\�B��7�1�','FOSA - ks Shakombe Centre de Santé (ks Tshikapa/ks Ngombe)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�j<\�B��7�1�','FOSA - ks Buena Muntu Centre de Santé (ks Tshikapa/ks Tite)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks Ermeco Centre de Santé (ks Tshikapa/ks Tite)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Kamuba Centre de Santé (ks Tshikapa/ks Tite)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�<\�B��7�1�','FOSA - ks La Gloire Centre de Santé (ks Tshikapa/ks Tite)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�V<\�B��7�1�','FOSA - ks Tite Poste de santé (ks Tshikapa/ks Tite)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Tshikapa Centre de Santé (ks Tshikapa/ks Tite)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Yolo Centre de Santé (ks Tshikapa/ks Tite)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�	<\�B��7�1�','FOSA - ks Kalupombe Centre de Santé (ks Tshikapa/ks Tshisele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�G<\�B��7�1�','FOSA - ks Kayanda Centre de Santé de Référence (ks Tshikapa/ks Tshisele)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Bat Ben Bat Centre de Santé (ks Tshikapa/ks Tshitangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\��<\�B��7�1�','FOSA - ks Diko Centre de Santé (ks Tshikapa/ks Tshitangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�\�<\�B��7�1�','FOSA - ks Djokakuar Centre de Santé (ks Tshikapa/ks Tshitangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�1<\�B��7�1�','FOSA - ks Kenge Centre de Santé (ks Tshikapa/ks Tshitangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000),(_binary '�\�\�m<\�B��7�1�','FOSA - ks Monyo Centre de Santé (ks Tshikapa/ks Tshitangu)',NULL,1,1,0,0,0,1,0,0,1,0,NULL,2.0000,NULL,NULL,0.0000);
/*!40000 ALTER TABLE `depot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depot_distribution_permission`
--

DROP TABLE IF EXISTS `depot_distribution_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depot_distribution_permission` (
  `depot_uuid` binary(16) NOT NULL,
  `distribution_depot_uuid` binary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depot_distribution_permission`
--

LOCK TABLES `depot_distribution_permission` WRITE;
/*!40000 ALTER TABLE `depot_distribution_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `depot_distribution_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depot_permission`
--

DROP TABLE IF EXISTS `depot_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depot_permission` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` smallint unsigned NOT NULL,
  `depot_uuid` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `depot_permission_1` (`user_id`,`depot_uuid`),
  KEY `user_id` (`user_id`),
  KEY `depot_uuid` (`depot_uuid`),
  CONSTRAINT `depot_permission__depot` FOREIGN KEY (`depot_uuid`) REFERENCES `depot` (`uuid`),
  CONSTRAINT `depot_permission__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depot_permission`
--

LOCK TABLES `depot_permission` WRITE;
/*!40000 ALTER TABLE `depot_permission` DISABLE KEYS */;
INSERT INTO `depot_permission` VALUES (2,1,_binary '\��\Z;�\�B��7�1�'),(3,1,_binary '\��\�;�\�B��7�1�'),(4,1,_binary '\��6;�\�B��7�1�'),(5,1,_binary '\��y;�\�B��7�1�'),(6,1,_binary '\���;�\�B��7�1�'),(7,1,_binary '\��\�;�\�B��7�1�'),(8,1,_binary '\��6;�\�B��7�1�'),(9,1,_binary '\��s;�\�B��7�1�'),(10,1,_binary '\���;�\�B��7�1�'),(11,1,_binary '\��\�;�\�B��7�1�'),(12,1,_binary '\��$;�\�B��7�1�'),(13,1,_binary '\��`;�\�B��7�1�'),(14,1,_binary '\���;�\�B��7�1�'),(15,1,_binary '\��\�;�\�B��7�1�'),(16,1,_binary '\��I;�\�B��7�1�'),(17,1,_binary '\���;�\�B��7�1�'),(18,1,_binary '\��\�;�\�B��7�1�'),(19,1,_binary '\��\0;�\�B��7�1�'),(20,1,_binary '_:\�#;�\�B��7�1�'),(63,1,_binary '�\�\�<\�B��7�1�'),(387,1,_binary '�\�\�\Z<\�B��7�1�'),(388,1,_binary '�\�\�v<\�B��7�1�'),(64,1,_binary '�\�\�<\�B��7�1�'),(174,1,_binary '�\�\��<\�B��7�1�'),(795,1,_binary '�\�\�A<\�B��7�1�'),(386,1,_binary '�\�\��<\�B��7�1�'),(506,1,_binary '�\�\�\�<\�B��7�1�'),(777,1,_binary '�\�\�<\�B��7�1�'),(46,1,_binary '�\�\�B<\�B��7�1�'),(197,1,_binary '�\�\�<\�B��7�1�'),(234,1,_binary '�\�\�\�<\�B��7�1�'),(256,1,_binary '�\�\�<\�B��7�1�'),(524,1,_binary '�\�\�=<\�B��7�1�'),(157,1,_binary '�\�\�z<\�B��7�1�'),(668,1,_binary '�\�\�<\�B��7�1�'),(809,1,_binary '�\�\�\�<\�B��7�1�'),(248,1,_binary '�\�\�1<\�B��7�1�'),(280,1,_binary '�\�\�o<\�B��7�1�'),(640,1,_binary '�\�\�<\�B��7�1�'),(878,1,_binary '�\�\�\�<\�B��7�1�'),(99,1,_binary '�\�\�)<\�B��7�1�'),(346,1,_binary '�\�\�f<\�B��7�1�'),(761,1,_binary '�\�\��<\�B��7�1�'),(871,1,_binary '�\�\�\�<\�B��7�1�'),(390,1,_binary '�\�\�<\�B��7�1�'),(520,1,_binary '�\�\�Y<\�B��7�1�'),(781,1,_binary '�\�\��<\�B��7�1�'),(155,1,_binary '�\�\�\�<\�B��7�1�'),(579,1,_binary '�\�\�<\�B��7�1�'),(102,1,_binary '�\�\�N<\�B��7�1�'),(467,1,_binary '�\�\��<\�B��7�1�'),(630,1,_binary '�\�\�\�<\�B��7�1�'),(654,1,_binary '�\�\��<\�B��7�1�'),(656,1,_binary '�\�\�;<\�B��7�1�'),(462,1,_binary '�\�\�w<\�B��7�1�'),(568,1,_binary '�\�\��<\�B��7�1�'),(645,1,_binary '�\�\�\�<\�B��7�1�'),(657,1,_binary '�\��,<\�B��7�1�'),(87,1,_binary '�\��g<\�B��7�1�'),(108,1,_binary '�\���<\�B��7�1�'),(121,1,_binary '�\��\�<\�B��7�1�'),(498,1,_binary '�\��<\�B��7�1�'),(501,1,_binary '�\��Z<\�B��7�1�'),(599,1,_binary '�\���<\�B��7�1�'),(381,1,_binary '�\��\�<\�B��7�1�'),(682,1,_binary '�\��<\�B��7�1�'),(693,1,_binary '�\��N<\�B��7�1�'),(928,1,_binary '�\���<\�B��7�1�'),(224,1,_binary '�\��\�<\�B��7�1�'),(601,1,_binary '�\��<\�B��7�1�'),(794,1,_binary '�\��><\�B��7�1�'),(632,1,_binary '�\��|<\�B��7�1�'),(701,1,_binary '�\���<\�B��7�1�'),(740,1,_binary '�\��\�<\�B��7�1�'),(877,1,_binary '�\��3<\�B��7�1�'),(120,1,_binary '�\��n<\�B��7�1�'),(245,1,_binary '�\���<\�B��7�1�'),(575,1,_binary '�\��\�<\�B��7�1�'),(872,1,_binary '�\��$<\�B��7�1�'),(910,1,_binary '�\��b<\�B��7�1�'),(281,1,_binary '�\���<\�B��7�1�'),(282,1,_binary '�\��\�<\�B��7�1�'),(641,1,_binary '�\��<\�B��7�1�'),(58,1,_binary '�\�\0?<\�B��7�1�'),(375,1,_binary '�\�\0�<\�B��7�1�'),(66,1,_binary '�\�\0\�<\�B��7�1�'),(229,1,_binary '�\�+<\�B��7�1�'),(292,1,_binary '�\�h<\�B��7�1�'),(675,1,_binary '�\��<\�B��7�1�'),(137,1,_binary '�\�\�<\�B��7�1�'),(138,1,_binary '�\�\Z<\�B��7�1�'),(143,1,_binary '�\�U<\�B��7�1�'),(469,1,_binary '�\��<\�B��7�1�'),(141,1,_binary '�\�\�<\�B��7�1�'),(142,1,_binary '�\�<\�B��7�1�'),(144,1,_binary '�\�H<\�B��7�1�'),(151,1,_binary '�\��<\�B��7�1�'),(459,1,_binary '�\��<\�B��7�1�'),(663,1,_binary '�\��<\�B��7�1�'),(34,1,_binary '�\�5<\�B��7�1�'),(152,1,_binary '�\�q<\�B��7�1�'),(74,1,_binary '�\��<\�B��7�1�'),(276,1,_binary '�\�\�<\�B��7�1�'),(549,1,_binary '�\�1<\�B��7�1�'),(797,1,_binary '�\�k<\�B��7�1�'),(148,1,_binary '�\��<\�B��7�1�'),(239,1,_binary '�\�\�<\�B��7�1�'),(627,1,_binary '�\�<\�B��7�1�'),(869,1,_binary '�\�X<\�B��7�1�'),(905,1,_binary '�\��<\�B��7�1�'),(670,1,_binary '�\�\�<\�B��7�1�'),(671,1,_binary '�\�\n<\�B��7�1�'),(702,1,_binary '�\�E<\�B��7�1�'),(703,1,_binary '�\��<\�B��7�1�'),(704,1,_binary '�\��<\�B��7�1�'),(929,1,_binary '�\��<\�B��7�1�'),(536,1,_binary '�\�3<\�B��7�1�'),(570,1,_binary '�\�n<\�B��7�1�'),(718,1,_binary '�\��<\�B��7�1�'),(720,1,_binary '�\�\�<\�B��7�1�'),(73,1,_binary '�\�	!<\�B��7�1�'),(709,1,_binary '�\�	[<\�B��7�1�'),(868,1,_binary '�\�	�<\�B��7�1�'),(156,1,_binary '�\�	\�<\�B��7�1�'),(611,1,_binary '�\�\n	<\�B��7�1�'),(1005,1,_binary '�\�\nC<\�B��7�1�'),(39,1,_binary '�\�\n~<\�B��7�1�'),(215,1,_binary '�\�\n�<\�B��7�1�'),(110,1,_binary '�\�\n�<\�B��7�1�'),(128,1,_binary '�\�5<\�B��7�1�'),(129,1,_binary '�\�p<\�B��7�1�'),(184,1,_binary '�\��<\�B��7�1�'),(185,1,_binary '�\�\�<\�B��7�1�'),(214,1,_binary '�\�<\�B��7�1�'),(238,1,_binary '�\�X<\�B��7�1�'),(265,1,_binary '�\��<\�B��7�1�'),(275,1,_binary '�\�\�<\�B��7�1�'),(279,1,_binary '�\�\r	<\�B��7�1�'),(283,1,_binary '�\�\rE<\�B��7�1�'),(287,1,_binary '�\�\r<\�B��7�1�'),(290,1,_binary '�\�\r�<\�B��7�1�'),(540,1,_binary '�\�\r\�<\�B��7�1�'),(662,1,_binary '�\�/<\�B��7�1�'),(767,1,_binary '�\�k<\�B��7�1�'),(804,1,_binary '�\��<\�B��7�1�'),(811,1,_binary '�\�\�<\�B��7�1�'),(998,1,_binary '�\�\Z<\�B��7�1�'),(1006,1,_binary '�\�U<\�B��7�1�'),(59,1,_binary '�\��<\�B��7�1�'),(672,1,_binary '�\�\�<\�B��7�1�'),(775,1,_binary '�\�<\�B��7�1�'),(82,1,_binary '�\�A<\�B��7�1�'),(135,1,_binary '�\�}<\�B��7�1�'),(970,1,_binary '�\��<\�B��7�1�'),(95,1,_binary '�\�\�<\�B��7�1�'),(196,1,_binary '�\�.<\�B��7�1�'),(865,1,_binary '�\�i<\�B��7�1�'),(274,1,_binary '�\��<\�B��7�1�'),(298,1,_binary '�\�<\�B��7�1�'),(380,1,_binary '�\�T<\�B��7�1�'),(397,1,_binary '�\��<\�B��7�1�'),(316,1,_binary '�\�\�<\�B��7�1�'),(699,1,_binary '�\�<\�B��7�1�'),(848,1,_binary '�\�A<\�B��7�1�'),(115,1,_binary '�\�|<\�B��7�1�'),(338,1,_binary '�\��<\�B��7�1�'),(461,1,_binary '�\�\�<\�B��7�1�'),(646,1,_binary '�\�.<\�B��7�1�'),(405,1,_binary '�\�j<\�B��7�1�'),(875,1,_binary '�\��<\�B��7�1�'),(417,1,_binary '�\�\�<\�B��7�1�'),(856,1,_binary '�\�<\�B��7�1�'),(867,1,_binary '�\�V<\�B��7�1�'),(479,1,_binary '�\��<\�B��7�1�'),(451,1,_binary '�\�\�<\�B��7�1�'),(597,1,_binary '�\�<\�B��7�1�'),(842,1,_binary '�\�C<\�B��7�1�'),(433,1,_binary '�\�<\�B��7�1�'),(478,1,_binary '�\��<\�B��7�1�'),(628,1,_binary '�\�\�<\�B��7�1�'),(673,1,_binary '�\�0<\�B��7�1�'),(721,1,_binary '�\�j<\�B��7�1�'),(288,1,_binary '�\��<\�B��7�1�'),(819,1,_binary '�\�\�<\�B��7�1�'),(270,1,_binary '�\�<\�B��7�1�'),(859,1,_binary '�\�Z<\�B��7�1�'),(870,1,_binary '�\��<\�B��7�1�'),(896,1,_binary '�\�\�<\�B��7�1�'),(925,1,_binary '�\�\Z<\�B��7�1�'),(927,1,_binary '�\�\ZH<\�B��7�1�'),(41,1,_binary '�\�\Z�<\�B��7�1�'),(1004,1,_binary '�\�\Z�<\�B��7�1�'),(56,1,_binary '�\�\Z�<\�B��7�1�'),(946,1,_binary '�\�4<\�B��7�1�'),(75,1,_binary '�\�o<\�B��7�1�'),(631,1,_binary '�\��<\�B��7�1�'),(76,1,_binary '�\�\�<\�B��7�1�'),(571,1,_binary '�\�!<\�B��7�1�'),(563,1,_binary '�\�[<\�B��7�1�'),(728,1,_binary '�\��<\�B��7�1�'),(167,1,_binary '�\�\�<\�B��7�1�'),(186,1,_binary '�\�<\�B��7�1�'),(187,1,_binary '�\�N<\�B��7�1�'),(236,1,_binary '�\��<\�B��7�1�'),(1002,1,_binary '�\�\�<\�B��7�1�'),(242,1,_binary '�\�\0<\�B��7�1�'),(978,1,_binary '�\�<<\�B��7�1�'),(243,1,_binary '�\�y<\�B��7�1�'),(556,1,_binary '�\��<\�B��7�1�'),(291,1,_binary '�\�\�<\�B��7�1�'),(719,1,_binary '�\�+<\�B��7�1�'),(329,1,_binary '�\�f<\�B��7�1�'),(860,1,_binary '�\��<\�B��7�1�'),(336,1,_binary '�\�\�<\�B��7�1�'),(589,1,_binary '�\� <\�B��7�1�'),(360,1,_binary '�\� S<\�B��7�1�'),(474,1,_binary '�\� �<\�B��7�1�'),(475,1,_binary '�\� \�<\�B��7�1�'),(733,1,_binary '�\�!<\�B��7�1�'),(569,1,_binary '�\�!?<\�B��7�1�'),(801,1,_binary '�\�!z<\�B��7�1�'),(573,1,_binary '�\�!�<\�B��7�1�'),(593,1,_binary '�\�!\�<\�B��7�1�'),(594,1,_binary '�\�\"-<\�B��7�1�'),(648,1,_binary '�\�\"h<\�B��7�1�'),(653,1,_binary '�\�\"�<\�B��7�1�'),(165,1,_binary '�\�\"\�<\�B��7�1�'),(937,1,_binary '�\�#\Z<\�B��7�1�'),(294,1,_binary '�\�#U<\�B��7�1�'),(710,1,_binary '�\�#�<\�B��7�1�'),(966,1,_binary '�\�#\�<\�B��7�1�'),(54,1,_binary '�\�$�<\�B��7�1�'),(179,1,_binary '�\�%Z<\�B��7�1�'),(201,1,_binary '�\�%�<\�B��7�1�'),(861,1,_binary '�\�%\�<\�B��7�1�'),(211,1,_binary '�\�&<\�B��7�1�'),(198,1,_binary '�\�&L<\�B��7�1�'),(572,1,_binary '�\�&�<\�B��7�1�'),(843,1,_binary '�\�&\�<\�B��7�1�'),(311,1,_binary '�\�\'<\�B��7�1�'),(230,1,_binary '�\�\'=<\�B��7�1�'),(244,1,_binary '�\�\'x<\�B��7�1�'),(35,1,_binary '�\�\'�<\�B��7�1�'),(341,1,_binary '�\�\'\�<\�B��7�1�'),(45,1,_binary '�\�(-<\�B��7�1�'),(32,1,_binary '�\�(i<\�B��7�1�'),(232,1,_binary '�\�(�<\�B��7�1�'),(233,1,_binary '�\�(\�<\�B��7�1�'),(408,1,_binary '�\�) <\�B��7�1�'),(583,1,_binary '�\�)[<\�B��7�1�'),(428,1,_binary '�\�)�<\�B��7�1�'),(309,1,_binary '�\�)\�<\�B��7�1�'),(363,1,_binary '�\�*\r<\�B��7�1�'),(880,1,_binary '�\�*I<\�B��7�1�'),(36,1,_binary '�\�*�<\�B��7�1�'),(582,1,_binary '�\�*\�<\�B��7�1�'),(249,1,_binary '�\�*�<\�B��7�1�'),(48,1,_binary '�\�+:<\�B��7�1�'),(609,1,_binary '�\�+u<\�B��7�1�'),(134,1,_binary '�\�+�<\�B��7�1�'),(665,1,_binary '�\�+\�<\�B��7�1�'),(77,1,_binary '�\�-<\�B��7�1�'),(723,1,_binary '�\�-D<\�B��7�1�'),(750,1,_binary '�\�-�<\�B��7�1�'),(735,1,_binary '�\�-�<\�B��7�1�'),(754,1,_binary '�\�-�<\�B��7�1�'),(192,1,_binary '�\�.9<\�B��7�1�'),(454,1,_binary '�\�/<\�B��7�1�'),(949,1,_binary '�\�/R<\�B��7�1�'),(473,1,_binary '�\�/�<\�B��7�1�'),(963,1,_binary '�\�/\�<\�B��7�1�'),(816,1,_binary '�\�0<\�B��7�1�'),(984,1,_binary '�\�0@<\�B��7�1�'),(815,1,_binary '�\�0{<\�B��7�1�'),(303,1,_binary '�\�0�<\�B��7�1�'),(736,1,_binary '�\�0\�<\�B��7�1�'),(313,1,_binary '�\�10<\�B��7�1�'),(1008,1,_binary '�\�1o<\�B��7�1�'),(321,1,_binary '�\�1�<\�B��7�1�'),(349,1,_binary '�\�1\�<\�B��7�1�'),(497,1,_binary '�\�2!<\�B��7�1�'),(170,1,_binary '�\�2]<\�B��7�1�'),(350,1,_binary '�\�2�<\�B��7�1�'),(351,1,_binary '�\�2\�<\�B��7�1�'),(352,1,_binary '�\�3<\�B��7�1�'),(853,1,_binary '�\�3J<\�B��7�1�'),(885,1,_binary '�\�3�<\�B��7�1�'),(377,1,_binary '�\�3\�<\�B��7�1�'),(406,1,_binary '�\�4\0<\�B��7�1�'),(246,1,_binary '�\�5<\�B��7�1�'),(434,1,_binary '�\�5S<\�B��7�1�'),(89,1,_binary '�\�5�<\�B��7�1�'),(364,1,_binary '�\�5\�<\�B��7�1�'),(544,1,_binary '�\�6	<\�B��7�1�'),(552,1,_binary '�\�6F<\�B��7�1�'),(553,1,_binary '�\�7<\�B��7�1�'),(600,1,_binary '�\�7[<\�B��7�1�'),(658,1,_binary '�\�7�<\�B��7�1�'),(717,1,_binary '�\�8�<\�B��7�1�'),(734,1,_binary '�\�8\�<\�B��7�1�'),(747,1,_binary '�\�9&<\�B��7�1�'),(758,1,_binary '�\�9e<\�B��7�1�'),(823,1,_binary '�\�<s<\�B��7�1�'),(826,1,_binary '�\�<\�<\�B��7�1�'),(827,1,_binary '�\�=<\�B��7�1�'),(829,1,_binary '�\�=[<\�B��7�1�'),(962,1,_binary '�\�=�<\�B��7�1�'),(967,1,_binary '�\�=\�<\�B��7�1�'),(975,1,_binary '�\�><\�B��7�1�'),(93,1,_binary '�\�>R<\�B��7�1�'),(206,1,_binary '�\�>�<\�B��7�1�'),(112,1,_binary '�\�>\�<\�B��7�1�'),(831,1,_binary '�\�?<\�B��7�1�'),(306,1,_binary '�\�?J<\�B��7�1�'),(361,1,_binary '�\�?�<\�B��7�1�'),(813,1,_binary '�\�?\�<\�B��7�1�'),(817,1,_binary '�\�@�<\�B��7�1�'),(845,1,_binary '�\�@�<\�B��7�1�'),(345,1,_binary '�\�A5<\�B��7�1�'),(357,1,_binary '�\�Ar<\�B��7�1�'),(199,1,_binary '�\�A�<\�B��7�1�'),(371,1,_binary '�\�A\�<\�B��7�1�'),(374,1,_binary '�\�B$<\�B��7�1�'),(874,1,_binary '�\�B`<\�B��7�1�'),(992,1,_binary '�\�B�<\�B��7�1�'),(96,1,_binary '�\�B\�<\�B��7�1�'),(400,1,_binary '�\�C<\�B��7�1�'),(415,1,_binary '�\�CQ<\�B��7�1�'),(588,1,_binary '�\�C�<\�B��7�1�'),(423,1,_binary '�\�C\�<\�B��7�1�'),(438,1,_binary '�\�D<\�B��7�1�'),(439,1,_binary '�\�D@<\�B��7�1�'),(957,1,_binary '�\�D{<\�B��7�1�'),(971,1,_binary '�\�D�<\�B��7�1�'),(38,1,_binary '�\�D\�<\�B��7�1�'),(409,1,_binary '�\�E.<\�B��7�1�'),(555,1,_binary '�\�E}<\�B��7�1�'),(252,1,_binary '�\�E\�<\�B��7�1�'),(320,1,_binary '�\�F<\�B��7�1�'),(429,1,_binary '�\�F<<\�B��7�1�'),(437,1,_binary '�\�Fv<\�B��7�1�'),(564,1,_binary '�\�F�<\�B��7�1�'),(580,1,_binary '�\�F\�<\�B��7�1�'),(585,1,_binary '�\�G*<\�B��7�1�'),(586,1,_binary '�\�Gg<\�B��7�1�'),(983,1,_binary '�\�G�<\�B��7�1�'),(587,1,_binary '�\�G\�<\�B��7�1�'),(596,1,_binary '�\�H<\�B��7�1�'),(334,1,_binary '�\�HU<\�B��7�1�'),(643,1,_binary '�\�H�<\�B��7�1�'),(892,1,_binary '�\�H\�<\�B��7�1�'),(659,1,_binary '�\�I<\�B��7�1�'),(679,1,_binary '�\�IH<\�B��7�1�'),(335,1,_binary '�\�I�<\�B��7�1�'),(716,1,_binary '�\�I�<\�B��7�1�'),(886,1,_binary '�\�I�<\�B��7�1�'),(741,1,_binary '�\�J3<\�B��7�1�'),(753,1,_binary '�\�Jn<\�B��7�1�'),(431,1,_binary '�\�J�<\�B��7�1�'),(684,1,_binary '�\�J\�<\�B��7�1�'),(705,1,_binary '�\�K <\�B��7�1�'),(725,1,_binary '�\�KZ<\�B��7�1�'),(982,1,_binary '�\�K�<\�B��7�1�'),(974,1,_binary '�\�L\�<\�B��7�1�'),(830,1,_binary '�\�M<\�B��7�1�'),(858,1,_binary '�\�M?<\�B��7�1�'),(887,1,_binary '�\�M|<\�B��7�1�'),(952,1,_binary '�\�M�<\�B��7�1�'),(107,1,_binary '�\�N�<\�B��7�1�'),(194,1,_binary '�\�N\�<\�B��7�1�'),(253,1,_binary '�\�O2<\�B��7�1�'),(857,1,_binary '�\�Oo<\�B��7�1�'),(995,1,_binary '�\�O�<\�B��7�1�'),(122,1,_binary '�\�O\�<\�B��7�1�'),(169,1,_binary '�\�Q\r<\�B��7�1�'),(393,1,_binary '�\�Qm<\�B��7�1�'),(517,1,_binary '�\�Q�<\�B��7�1�'),(322,1,_binary '�\�Q\�<\�B��7�1�'),(933,1,_binary '�\�R\"<\�B��7�1�'),(175,1,_binary '�\�R]<\�B��7�1�'),(44,1,_binary '�\�R�<\�B��7�1�'),(208,1,_binary '�\�R\�<\�B��7�1�'),(227,1,_binary '�\�S<\�B��7�1�'),(49,1,_binary '�\�SY<\�B��7�1�'),(354,1,_binary '�\�S�<\�B��7�1�'),(935,1,_binary '�\�S\�<\�B��7�1�'),(94,1,_binary '�\�T	<\�B��7�1�'),(523,1,_binary '�\�TD<\�B��7�1�'),(525,1,_binary '�\�T<\�B��7�1�'),(123,1,_binary '�\�T�<\�B��7�1�'),(503,1,_binary '�\�T\�<\�B��7�1�'),(526,1,_binary '�\�U2<\�B��7�1�'),(652,1,_binary '�\�Um<\�B��7�1�'),(766,1,_binary '�\�U�<\�B��7�1�'),(42,1,_binary '�\�U\�<\�B��7�1�'),(499,1,_binary '�\�V<\�B��7�1�'),(533,1,_binary '�\�V[<\�B��7�1�'),(844,1,_binary '�\�V�<\�B��7�1�'),(223,1,_binary '�\�V\�<\�B��7�1�'),(457,1,_binary '�\�W<\�B��7�1�'),(965,1,_binary '�\�WL<\�B��7�1�'),(47,1,_binary '�\�W�<\�B��7�1�'),(507,1,_binary '�\�W�<\�B��7�1�'),(578,1,_binary '�\�W�<\�B��7�1�'),(715,1,_binary '�\�X5<\�B��7�1�'),(164,1,_binary '�\�Xo<\�B��7�1�'),(391,1,_binary '�\�X�<\�B��7�1�'),(655,1,_binary '�\�X\�<\�B��7�1�'),(173,1,_binary '�\�Y#<\�B��7�1�'),(226,1,_binary '�\�Y]<\�B��7�1�'),(500,1,_binary '�\�Y�<\�B��7�1�'),(915,1,_binary '�\�Y\�<\�B��7�1�'),(515,1,_binary '�\�Z<\�B��7�1�'),(889,1,_binary '�\�ZI<\�B��7�1�'),(990,1,_binary '�\�Z�<\�B��7�1�'),(37,1,_binary '�\�Z\�<\�B��7�1�'),(176,1,_binary '�\�Z�<\�B��7�1�'),(757,1,_binary '�\�[;<\�B��7�1�'),(514,1,_binary '�\�[v<\�B��7�1�'),(521,1,_binary '�\�[�<\�B��7�1�'),(532,1,_binary '�\�[\�<\�B��7�1�'),(895,1,_binary '�\�\\(<\�B��7�1�'),(319,1,_binary '�\�\\c<\�B��7�1�'),(327,1,_binary '�\�\\�<\�B��7�1�'),(402,1,_binary '�\�\\\�<\�B��7�1�'),(476,1,_binary '�\�]<\�B��7�1�'),(919,1,_binary '�\�]Q<\�B��7�1�'),(330,1,_binary '�\�]�<\�B��7�1�'),(382,1,_binary '�\�]\�<\�B��7�1�'),(356,1,_binary '�\�^\0<\�B��7�1�'),(372,1,_binary '�\�^:<\�B��7�1�'),(508,1,_binary '�\�^v<\�B��7�1�'),(379,1,_binary '�\�^�<\�B��7�1�'),(403,1,_binary '�\�^\�<\�B��7�1�'),(592,1,_binary '�\�_&<\�B��7�1�'),(897,1,_binary '�\�__<\�B��7�1�'),(450,1,_binary '�\�_�<\�B��7�1�'),(449,1,_binary '�\�_\�<\�B��7�1�'),(286,1,_binary '�\�`<\�B��7�1�'),(472,1,_binary '�\�`Q<\�B��7�1�'),(482,1,_binary '�\�`�<\�B��7�1�'),(483,1,_binary '�\�`\�<\�B��7�1�'),(502,1,_binary '�\�a<\�B��7�1�'),(376,1,_binary '�\�a?<\�B��7�1�'),(484,1,_binary '�\�az<\�B��7�1�'),(490,1,_binary '�\�a�<\�B��7�1�'),(509,1,_binary '�\�a\�<\�B��7�1�'),(513,1,_binary '�\�c\Z<\�B��7�1�'),(480,1,_binary '�\�cz<\�B��7�1�'),(486,1,_binary '�\�c�<\�B��7�1�'),(799,1,_binary '�\�c\�<\�B��7�1�'),(980,1,_binary '�\�d0<\�B��7�1�'),(496,1,_binary '�\�dm<\�B��7�1�'),(617,1,_binary '�\�d�<\�B��7�1�'),(619,1,_binary '�\�d\�<\�B��7�1�'),(613,1,_binary '�\�e#<\�B��7�1�'),(629,1,_binary '�\�e^<\�B��7�1�'),(942,1,_binary '�\�e�<\�B��7�1�'),(471,1,_binary '�\�e\�<\�B��7�1�'),(685,1,_binary '�\�f<\�B��7�1�'),(711,1,_binary '�\�fM<\�B��7�1�'),(296,1,_binary '�\�f�<\�B��7�1�'),(686,1,_binary '�\�f\�<\�B��7�1�'),(755,1,_binary '�\�g\0<\�B��7�1�'),(394,1,_binary '�\�g:<\�B��7�1�'),(432,1,_binary '�\�gu<\�B��7�1�'),(739,1,_binary '�\�g�<\�B��7�1�'),(257,1,_binary '�\�g\�<\�B��7�1�'),(756,1,_binary '�\�h&<\�B��7�1�'),(783,1,_binary '�\�hb<\�B��7�1�'),(846,1,_binary '�\�h�<\�B��7�1�'),(465,1,_binary '�\�h\�<\�B��7�1�'),(674,1,_binary '�\�i<\�B��7�1�'),(803,1,_binary '�\�iO<\�B��7�1�'),(453,1,_binary '�\�i�<\�B��7�1�'),(743,1,_binary '�\�i\�<\�B��7�1�'),(805,1,_binary '�\�i�<\�B��7�1�'),(808,1,_binary '�\�j:<\�B��7�1�'),(212,1,_binary '�\�jv<\�B��7�1�'),(836,1,_binary '�\�j�<\�B��7�1�'),(893,1,_binary '�\�j\�<\�B��7�1�'),(972,1,_binary '�\�k+<\�B��7�1�'),(328,1,_binary '�\�kf<\�B��7�1�'),(898,1,_binary '�\�k�<\�B��7�1�'),(310,1,_binary '�\�k\�<\�B��7�1�'),(907,1,_binary '�\�l<\�B��7�1�'),(912,1,_binary '�\�lS<\�B��7�1�'),(914,1,_binary '�\�l�<\�B��7�1�'),(964,1,_binary '�\�l\�<\�B��7�1�'),(595,1,_binary '�\�m<\�B��7�1�'),(778,1,_binary '�\�mB<\�B��7�1�'),(977,1,_binary '�\�m}<\�B��7�1�'),(481,1,_binary '�\�m�<\�B��7�1�'),(504,1,_binary '�\�m\�<\�B��7�1�'),(537,1,_binary '�\�n.<\�B��7�1�'),(883,1,_binary '�\�nl<\�B��7�1�'),(954,1,_binary '�\�n�<\�B��7�1�'),(979,1,_binary '�\�n\�<\�B��7�1�'),(833,1,_binary '�\�o<\�B��7�1�'),(50,1,_binary '�\�o\\<\�B��7�1�'),(62,1,_binary '�\�o�<\�B��7�1�'),(302,1,_binary '�\�o\�<\�B��7�1�'),(518,1,_binary '�\�p<\�B��7�1�'),(791,1,_binary '�\�pK<\�B��7�1�'),(55,1,_binary '�\�p�<\�B��7�1�'),(418,1,_binary '�\�p\�<\�B��7�1�'),(207,1,_binary '�\�p�<\�B��7�1�'),(182,1,_binary '�\�q9<\�B��7�1�'),(307,1,_binary '�\�qu<\�B��7�1�'),(308,1,_binary '�\�q�<\�B��7�1�'),(851,1,_binary '�\�q\�<\�B��7�1�'),(312,1,_binary '�\�r*<\�B��7�1�'),(136,1,_binary '�\�rf<\�B��7�1�'),(331,1,_binary '�\�r�<\�B��7�1�'),(396,1,_binary '�\�r\�<\�B��7�1�'),(332,1,_binary '�\�s<\�B��7�1�'),(888,1,_binary '�\�sQ<\�B��7�1�'),(333,1,_binary '�\�s�<\�B��7�1�'),(191,1,_binary '�\�s\�<\�B��7�1�'),(358,1,_binary '�\�t<\�B��7�1�'),(344,1,_binary '�\�u<\�B��7�1�'),(389,1,_binary '�\�u~<\�B��7�1�'),(488,1,_binary '�\�u�<\�B��7�1�'),(941,1,_binary '�\�u�<\�B��7�1�'),(489,1,_binary '�\�v3<\�B��7�1�'),(746,1,_binary '�\�vn<\�B��7�1�'),(228,1,_binary '�\�v�<\�B��7�1�'),(299,1,_binary '�\�v\�<\�B��7�1�'),(558,1,_binary '�\�w%<\�B��7�1�'),(559,1,_binary '�\�wa<\�B��7�1�'),(560,1,_binary '�\�w�<\�B��7�1�'),(708,1,_binary '�\�w\�<\�B��7�1�'),(574,1,_binary '�\�x<\�B��7�1�'),(818,1,_binary '�\�xO<\�B��7�1�'),(410,1,_binary '�\�x�<\�B��7�1�'),(561,1,_binary '�\�x\�<\�B��7�1�'),(577,1,_binary '�\�y<\�B��7�1�'),(304,1,_binary '�\�y?<\�B��7�1�'),(584,1,_binary '�\�y{<\�B��7�1�'),(864,1,_binary '�\�y�<\�B��7�1�'),(339,1,_binary '�\�z\�<\�B��7�1�'),(612,1,_binary '�\�{<\�B��7�1�'),(951,1,_binary '�\�{]<\�B��7�1�'),(749,1,_binary '�\�{�<\�B��7�1�'),(737,1,_binary '�\�{\�<\�B��7�1�'),(788,1,_binary '�\�|<\�B��7�1�'),(789,1,_binary '�\�|T<\�B��7�1�'),(731,1,_binary '�\�}1<\�B��7�1�'),(838,1,_binary '�\�~H<\�B��7�1�'),(950,1,_binary '�\�~�<\�B��7�1�'),(626,1,_binary '�\�~�<\�B��7�1�'),(906,1,_binary '�\�~�<\�B��7�1�'),(916,1,_binary '�\�<<\�B��7�1�'),(917,1,_binary '�Ā<\�B��7�1�'),(787,1,_binary '�ĀV<\�B��7�1�'),(968,1,_binary '�Ā�<\�B��7�1�'),(69,1,_binary '�Ā\�<\�B��7�1�'),(70,1,_binary '�ā	<\�B��7�1�'),(603,1,_binary '�āE<\�B��7�1�'),(647,1,_binary '�ā�<\�B��7�1�'),(71,1,_binary '�ā�<\�B��7�1�'),(203,1,_binary '�ā\�<\�B��7�1�'),(337,1,_binary '�Ă2<\�B��7�1�'),(793,1,_binary '�Ăm<\�B��7�1�'),(104,1,_binary '�Ă�<\�B��7�1�'),(426,1,_binary '�Ă\�<\�B��7�1�'),(534,1,_binary '�ă<\�B��7�1�'),(78,1,_binary '�ă]<\�B��7�1�'),(189,1,_binary '�ă�<\�B��7�1�'),(190,1,_binary '�ă\�<\�B��7�1�'),(217,1,_binary '�Ą<\�B��7�1�'),(487,1,_binary '�ĄJ<\�B��7�1�'),(695,1,_binary '�Ą�<\�B��7�1�'),(782,1,_binary '�Ą�<\�B��7�1�'),(832,1,_binary '�Ą�<\�B��7�1�'),(216,1,_binary '�ą8<\�B��7�1�'),(218,1,_binary '�ąs<\�B��7�1�'),(378,1,_binary '�ą�<\�B��7�1�'),(262,1,_binary '�ą\�<\�B��7�1�'),(263,1,_binary '�Ć$<\�B��7�1�'),(271,1,_binary '�Ć^<\�B��7�1�'),(608,1,_binary '�Ć�<\�B��7�1�'),(163,1,_binary '�Ć\�<\�B��7�1�'),(301,1,_binary '�ć<\�B��7�1�'),(427,1,_binary '�ćN<\�B��7�1�'),(315,1,_binary '�ć�<\�B��7�1�'),(443,1,_binary '�ć\�<\�B��7�1�'),(796,1,_binary '�ć�<\�B��7�1�'),(289,1,_binary '�Ĉ:<\�B��7�1�'),(323,1,_binary '�Ĉt<\�B��7�1�'),(605,1,_binary '�Ĉ�<\�B��7�1�'),(786,1,_binary '�Ĉ\�<\�B��7�1�'),(913,1,_binary '�ĉ$<\�B��7�1�'),(365,1,_binary '�ĉ_<\�B��7�1�'),(493,1,_binary '�Ċy<\�B��7�1�'),(494,1,_binary '�Ċ\�<\�B��7�1�'),(530,1,_binary '�ċ<\�B��7�1�'),(852,1,_binary '�ċR<\�B��7�1�'),(924,1,_binary '�ċ�<\�B��7�1�'),(29,1,_binary '�ċ\�<\�B��7�1�'),(522,1,_binary '�Č<\�B��7�1�'),(606,1,_binary '�Č@<\�B��7�1�'),(636,1,_binary '�Č{<\�B��7�1�'),(637,1,_binary '�Č�<\�B��7�1�'),(879,1,_binary '�Č\�<\�B��7�1�'),(111,1,_binary '�č,<\�B��7�1�'),(161,1,_binary '�čg<\�B��7�1�'),(404,1,_binary '�č�<\�B��7�1�'),(460,1,_binary '�č\�<\�B��7�1�'),(689,1,_binary '�Ď<\�B��7�1�'),(1001,1,_binary '�ĎT<\�B��7�1�'),(445,1,_binary '�Ď�<\�B��7�1�'),(557,1,_binary '�Ď\�<\�B��7�1�'),(638,1,_binary '�ď<\�B��7�1�'),(690,1,_binary '�ď@<\�B��7�1�'),(359,1,_binary '�ď}<\�B��7�1�'),(634,1,_binary '�ď�<\�B��7�1�'),(691,1,_binary '�ď\�<\�B��7�1�'),(696,1,_binary '�Đ.<\�B��7�1�'),(697,1,_binary '�Đh<\�B��7�1�'),(698,1,_binary '�Đ�<\�B��7�1�'),(616,1,_binary '�Đ\�<\�B��7�1�'),(635,1,_binary '�đ<\�B��7�1�'),(692,1,_binary '�đV<\�B��7�1�'),(768,1,_binary '�đ�<\�B��7�1�'),(873,1,_binary '�đ\�<\�B��7�1�'),(105,1,_binary '�Ē<\�B��7�1�'),(614,1,_binary '�ĒC<\�B��7�1�'),(615,1,_binary '�Ē<\�B��7�1�'),(707,1,_binary '�Ē�<\�B��7�1�'),(792,1,_binary '�Ē\�<\�B��7�1�'),(837,1,_binary '�ē2<\�B��7�1�'),(953,1,_binary '�ēl<\�B��7�1�'),(277,1,_binary '�ē�<\�B��7�1�'),(825,1,_binary '�ē\�<\�B��7�1�'),(834,1,_binary '�Ĕ<\�B��7�1�'),(922,1,_binary '�ĔX<\�B��7�1�'),(158,1,_binary '�Ĕ�<\�B��7�1�'),(261,1,_binary '�Ĕ\�<\�B��7�1�'),(455,1,_binary '�ĕ<\�B��7�1�'),(911,1,_binary '�ĕG<\�B��7�1�'),(820,1,_binary '�ĕ�<\�B��7�1�'),(899,1,_binary '�ĕ�<\�B��7�1�'),(904,1,_binary '�ĕ\�<\�B��7�1�'),(960,1,_binary '�Ė2<\�B��7�1�'),(421,1,_binary '�Ėm<\�B��7�1�'),(529,1,_binary '�Ė�<\�B��7�1�'),(622,1,_binary '�Ė\�<\�B��7�1�'),(890,1,_binary '�ė!<\�B��7�1�'),(997,1,_binary '�ė\\<\�B��7�1�'),(80,1,_binary '�ė�<\�B��7�1�'),(81,1,_binary '�ė\�<\�B��7�1�'),(272,1,_binary '�Ę<\�B��7�1�'),(385,1,_binary '�ĘJ<\�B��7�1�'),(528,1,_binary '�Ę�<\�B��7�1�'),(60,1,_binary '�Ę\�<\�B��7�1�'),(97,1,_binary '�Ę�<\�B��7�1�'),(98,1,_binary '�ę9<\�B��7�1�'),(116,1,_binary '�ęu<\�B��7�1�'),(126,1,_binary '�ę�<\�B��7�1�'),(209,1,_binary '�ę\�<\�B��7�1�'),(101,1,_binary '�Ě)<\�B��7�1�'),(127,1,_binary '�Ěb<\�B��7�1�'),(938,1,_binary '�Ě�<\�B��7�1�'),(153,1,_binary '�Ě\�<\�B��7�1�'),(159,1,_binary '�ě<\�B��7�1�'),(986,1,_binary '�ěP<\�B��7�1�'),(162,1,_binary '�Ĝk<\�B��7�1�'),(219,1,_binary '�Ĝ\�<\�B��7�1�'),(222,1,_binary '�ĝ<\�B��7�1�'),(117,1,_binary '�ĝE<\�B��7�1�'),(220,1,_binary '�ĝ�<\�B��7�1�'),(269,1,_binary '�ĝ�<\�B��7�1�'),(221,1,_binary '�ĝ�<\�B��7�1�'),(267,1,_binary '�Ğ3<\�B��7�1�'),(903,1,_binary '�Ğn<\�B��7�1�'),(273,1,_binary '�Ğ�<\�B��7�1�'),(610,1,_binary '�Ğ\�<\�B��7�1�'),(278,1,_binary '�ğ<\�B��7�1�'),(293,1,_binary '�ğ\\<\�B��7�1�'),(688,1,_binary '�ğ�<\�B��7�1�'),(324,1,_binary '�ğ\�<\�B��7�1�'),(541,1,_binary '�Ġ\r<\�B��7�1�'),(847,1,_binary '�ĠH<\�B��7�1�'),(538,1,_binary '�Ġ�<\�B��7�1�'),(103,1,_binary '�Ġ\�<\�B��7�1�'),(676,1,_binary '�ġ<\�B��7�1�'),(681,1,_binary '�ġ=<\�B��7�1�'),(485,1,_binary '�ġx<\�B��7�1�'),(774,1,_binary '�ġ�<\�B��7�1�'),(988,1,_binary '�ġ\�<\�B��7�1�'),(802,1,_binary '�Ģ&<\�B��7�1�'),(812,1,_binary '�Ģa<\�B��7�1�'),(131,1,_binary '�Ģ�<\�B��7�1�'),(814,1,_binary '�Ģ\�<\�B��7�1�'),(854,1,_binary '�ģ<\�B��7�1�'),(920,1,_binary '�ģM<\�B��7�1�'),(146,1,_binary '�ģ�<\�B��7�1�'),(660,1,_binary '�ģ\�<\�B��7�1�'),(760,1,_binary '�ģ�<\�B��7�1�'),(849,1,_binary '�Ĥ8<\�B��7�1�'),(862,1,_binary '�Ĥr<\�B��7�1�'),(1000,1,_binary '�Ĥ�<\�B��7�1�'),(798,1,_binary '�Ĥ\�<\�B��7�1�'),(923,1,_binary '�ĥ$<\�B��7�1�'),(987,1,_binary '�ĥ^<\�B��7�1�'),(989,1,_binary '�ĥ�<\�B��7�1�'),(623,1,_binary '�ĥ\�<\�B��7�1�'),(930,1,_binary '�Ħ<\�B��7�1�'),(160,1,_binary '�ĦH<\�B��7�1�'),(166,1,_binary '�Ħ�<\�B��7�1�'),(193,1,_binary '�Ħ�<\�B��7�1�'),(200,1,_binary '�Ħ�<\�B��7�1�'),(527,1,_binary '�ħ6<\�B��7�1�'),(727,1,_binary '�ħq<\�B��7�1�'),(456,1,_binary '�ħ�<\�B��7�1�'),(519,1,_binary '�ħ\�<\�B��7�1�'),(650,1,_binary '�Ĩ!<\�B��7�1�'),(763,1,_binary '�Ĩ[<\�B��7�1�'),(88,1,_binary '�Ĩ�<\�B��7�1�'),(204,1,_binary '�Ĩ\�<\�B��7�1�'),(516,1,_binary '�ĩ\r<\�B��7�1�'),(535,1,_binary '�ĩH<\�B��7�1�'),(633,1,_binary '�ĩ�<\�B��7�1�'),(866,1,_binary '�ĩ�<\�B��7�1�'),(23,1,_binary '�ĩ�<\�B��7�1�'),(297,1,_binary '�Ī2<\�B��7�1�'),(395,1,_binary '�Īn<\�B��7�1�'),(604,1,_binary '�Ī�<\�B��7�1�'),(113,1,_binary '�Ī\�<\�B��7�1�'),(436,1,_binary '�ī<\�B��7�1�'),(590,1,_binary '�īX<\�B��7�1�'),(994,1,_binary '�ī�<\�B��7�1�'),(24,1,_binary '�ī\�<\�B��7�1�'),(205,1,_binary '�Ĭ<\�B��7�1�'),(752,1,_binary '�ĬB<\�B��7�1�'),(824,1,_binary '�Ĭ|<\�B��7�1�'),(373,1,_binary '�Ĭ�<\�B��7�1�'),(539,1,_binary '�Ĭ\�<\�B��7�1�'),(25,1,_binary '�ĭ+<\�B��7�1�'),(31,1,_binary '�ĭe<\�B��7�1�'),(119,1,_binary '�ĭ�<\�B��7�1�'),(759,1,_binary '�Į�<\�B��7�1�'),(726,1,_binary '�į<\�B��7�1�'),(976,1,_binary '�įW<\�B��7�1�'),(440,1,_binary '�į�<\�B��7�1�'),(452,1,_binary '�į\�<\�B��7�1�'),(751,1,_binary '�İ<\�B��7�1�'),(145,1,_binary '�İA<\�B��7�1�'),(183,1,_binary '�İ{<\�B��7�1�'),(424,1,_binary '�İ�<\�B��7�1�'),(855,1,_binary '�İ\�<\�B��7�1�'),(92,1,_binary '�ı,<\�B��7�1�'),(441,1,_binary '�ıg<\�B��7�1�'),(900,1,_binary '�ı�<\�B��7�1�'),(251,1,_binary '�ı\�<\�B��7�1�'),(764,1,_binary '�Ĳ<\�B��7�1�'),(841,1,_binary '�ĲT<\�B��7�1�'),(944,1,_binary '�Ĳ�<\�B��7�1�'),(776,1,_binary '�Ĳ\�<\�B��7�1�'),(840,1,_binary '�ĳ<\�B��7�1�'),(894,1,_binary '�ĳ@<\�B��7�1�'),(470,1,_binary '�ĳy<\�B��7�1�'),(724,1,_binary '�ĳ�<\�B��7�1�'),(779,1,_binary '�ĳ\�<\�B��7�1�'),(178,1,_binary '�Ĵ)<\�B��7�1�'),(745,1,_binary '�Ĵd<\�B��7�1�'),(931,1,_binary '�Ĵ�<\�B��7�1�'),(26,1,_binary '�Ĵ\�<\�B��7�1�'),(591,1,_binary '�ĵ<\�B��7�1�'),(27,1,_binary '�ĵR<\�B��7�1�'),(109,1,_binary '�ĵ�<\�B��7�1�'),(254,1,_binary '�ĵ\�<\�B��7�1�'),(300,1,_binary '�Ķ<\�B��7�1�'),(943,1,_binary '�Ķ=<\�B��7�1�'),(231,1,_binary '�Ķz<\�B��7�1�'),(241,1,_binary '�Ķ�<\�B��7�1�'),(247,1,_binary '�Ķ\�<\�B��7�1�'),(732,1,_binary '�ķ)<\�B��7�1�'),(839,1,_binary '�ķb<\�B��7�1�'),(28,1,_binary '�ķ�<\�B��7�1�'),(383,1,_binary '�ķ\�<\�B��7�1�'),(416,1,_binary '�ĸ<\�B��7�1�'),(850,1,_binary '�ĸN<\�B��7�1�'),(1009,1,_binary '�ĸ�<\�B��7�1�'),(53,1,_binary '�ĸ\�<\�B��7�1�'),(305,1,_binary '�ĸ�<\�B��7�1�'),(67,1,_binary '�Ĺ7<\�B��7�1�'),(936,1,_binary '�Ĺq<\�B��7�1�'),(85,1,_binary '�Ĺ�<\�B��7�1�'),(86,1,_binary '�Ĺ\�<\�B��7�1�'),(139,1,_binary '�ĺ$<\�B��7�1�'),(678,1,_binary '�ĺ_<\�B��7�1�'),(683,1,_binary '�ĺ�<\�B��7�1�'),(84,1,_binary '�ĺ\�<\�B��7�1�'),(140,1,_binary '�Ļ\r<\�B��7�1�'),(40,1,_binary '�ĻH<\�B��7�1�'),(147,1,_binary '�Ļ�<\�B��7�1�'),(993,1,_binary '�Ļ�<\�B��7�1�'),(149,1,_binary '�Ļ�<\�B��7�1�'),(150,1,_binary '�ļ6<\�B��7�1�'),(266,1,_binary '�ļp<\�B��7�1�'),(268,1,_binary '�ļ�<\�B��7�1�'),(642,1,_binary '�ļ\�<\�B��7�1�'),(284,1,_binary '�Ľ<\�B��7�1�'),(340,1,_binary '�ĽY<\�B��7�1�'),(973,1,_binary '�Ľ�<\�B��7�1�'),(342,1,_binary '�Ľ\�<\�B��7�1�'),(51,1,_binary '�ľ<\�B��7�1�'),(366,1,_binary '�ľE<\�B��7�1�'),(367,1,_binary '�ľ�<\�B��7�1�'),(368,1,_binary '�ľ�<\�B��7�1�'),(369,1,_binary '�ľ\�<\�B��7�1�'),(607,1,_binary '�Ŀ-<\�B��7�1�'),(620,1,_binary '�Ŀh<\�B��7�1�'),(921,1,_binary '�Ŀ�<\�B��7�1�'),(285,1,_binary '�\��\�<\�B��7�1�'),(621,1,_binary '�\��\'<\�B��7�1�'),(554,1,_binary '�\��d<\�B��7�1�'),(639,1,_binary '�\���<\�B��7�1�'),(706,1,_binary '�\��\�<\�B��7�1�'),(83,1,_binary '�\�\�<\�B��7�1�'),(729,1,_binary '�\�\�Q<\�B��7�1�'),(730,1,_binary '�\�<\�B��7�1�'),(61,1,_binary '�\�\�\�<\�B��7�1�'),(762,1,_binary '�\�\�<\�B��7�1�'),(177,1,_binary '�\�\�?<\�B��7�1�'),(769,1,_binary '�\�\�z<\�B��7�1�'),(772,1,_binary '�\�õ<\�B��7�1�'),(773,1,_binary '�\�\�\�<\�B��7�1�'),(926,1,_binary '�\�\�*<\�B��7�1�'),(770,1,_binary '�\�\�f<\�B��7�1�'),(771,1,_binary '�\�Ġ<\�B��7�1�'),(52,1,_binary '�\�\�\�<\�B��7�1�'),(828,1,_binary '�\�\�<\�B��7�1�'),(891,1,_binary '�\�\�O<\�B��7�1�'),(250,1,_binary '�\�Ŋ<\�B��7�1�'),(863,1,_binary '�\�\�\�<\�B��7�1�'),(188,1,_binary '�\�\��<\�B��7�1�'),(958,1,_binary '�\�\�;<\�B��7�1�'),(65,1,_binary '�\�\�w<\�B��7�1�'),(68,1,_binary '�\�Ƴ<\�B��7�1�'),(712,1,_binary '�\�\�\�<\�B��7�1�'),(785,1,_binary '�\�\�*<\�B��7�1�'),(948,1,_binary '�\�\�f<\�B��7�1�'),(79,1,_binary '�\�Ǫ<\�B��7�1�'),(680,1,_binary '�\�\�\�<\�B��7�1�'),(384,1,_binary '�\�\�#<\�B��7�1�'),(822,1,_binary '�\�\�]<\�B��7�1�'),(21,1,_binary '�\�Ȗ<\�B��7�1�'),(57,1,_binary '�\�\�\�<\�B��7�1�'),(225,1,_binary '�\�\�<\�B��7�1�'),(399,1,_binary '�\�\�E<\�B��7�1�'),(961,1,_binary '�\�ɀ<\�B��7�1�'),(401,1,_binary '�\�ɻ<\�B��7�1�'),(425,1,_binary '�\�\�\�<\�B��7�1�'),(687,1,_binary '�\�\�5<\�B��7�1�'),(154,1,_binary '�\�\�o<\�B��7�1�'),(264,1,_binary '�\�ʪ<\�B��7�1�'),(130,1,_binary '�\�\�\�<\�B��7�1�'),(407,1,_binary '�\�\�<\�B��7�1�'),(448,1,_binary '�\�\�Z<\�B��7�1�'),(495,1,_binary '�\�˔<\�B��7�1�'),(543,1,_binary '�\�\�\�<\�B��7�1�'),(624,1,_binary '�\�\�<\�B��7�1�'),(625,1,_binary '�\�\�E<\�B��7�1�'),(981,1,_binary '�\�̀<\�B��7�1�'),(446,1,_binary '�\�̺<\�B��7�1�'),(581,1,_binary '�\�\�\�<\�B��7�1�'),(666,1,_binary '�\�\�/<\�B��7�1�'),(810,1,_binary '�\�\�j<\�B��7�1�'),(821,1,_binary '�\�ͧ<\�B��7�1�'),(722,1,_binary '�\�\�\�<\�B��7�1�'),(780,1,_binary '�\�\�<\�B��7�1�'),(618,1,_binary '�\�\�W<\�B��7�1�'),(742,1,_binary '�\�Α<\�B��7�1�'),(133,1,_binary '�\�\�\�<\�B��7�1�'),(412,1,_binary '�\�\�<\�B��7�1�'),(748,1,_binary '�\�\�A<\�B��7�1�'),(969,1,_binary '�\�\�~<\�B��7�1�'),(343,1,_binary '�\�Ϲ<\�B��7�1�'),(447,1,_binary '�\�\�\�<\�B��7�1�'),(694,1,_binary '�\�\�.<\�B��7�1�'),(240,1,_binary '�\�\�i<\�B��7�1�'),(260,1,_binary '�\�Ф<\�B��7�1�'),(511,1,_binary '�\�\�\�<\�B��7�1�'),(118,1,_binary '�\�\��<\�B��7�1�'),(295,1,_binary '�\�\�Z<\�B��7�1�'),(531,1,_binary '�\�Ҙ<\�B��7�1�'),(784,1,_binary '�\�\�\�<\�B��7�1�'),(881,1,_binary '�\�\�<\�B��7�1�'),(667,1,_binary '�\�\�M<\�B��7�1�'),(947,1,_binary '�\�ӈ<\�B��7�1�'),(325,1,_binary '�\�\�\�<\�B��7�1�'),(326,1,_binary '�\�\��<\�B��7�1�'),(398,1,_binary '�\�\�9<\�B��7�1�'),(669,1,_binary '�\�\�s<\�B��7�1�'),(959,1,_binary '�\�Ԯ<\�B��7�1�'),(314,1,_binary '�\�\�\�<\�B��7�1�'),(835,1,_binary '�\�\�#<\�B��7�1�'),(918,1,_binary '�\�\�_<\�B��7�1�'),(442,1,_binary '�\�՚<\�B��7�1�'),(566,1,_binary '�\�\�\�<\�B��7�1�'),(677,1,_binary '�\�\�<\�B��7�1�'),(414,1,_binary '�\�\�K<\�B��7�1�'),(464,1,_binary '�\�օ<\�B��7�1�'),(468,1,_binary '�\�\��<\�B��7�1�'),(477,1,_binary '�\�\��<\�B��7�1�'),(598,1,_binary '�\�\�7<\�B��7�1�'),(545,1,_binary '�\�\�q<\�B��7�1�'),(546,1,_binary '�\�׬<\�B��7�1�'),(744,1,_binary '�\�\�\�<\�B��7�1�'),(124,1,_binary '�\�\�#<\�B��7�1�'),(125,1,_binary '�\�\�^<\�B��7�1�'),(567,1,_binary '�\�ؙ<\�B��7�1�'),(422,1,_binary '�\�\�\�<\�B��7�1�'),(542,1,_binary '�\�\�<\�B��7�1�'),(661,1,_binary '�\�\�E<\�B��7�1�'),(106,1,_binary '�\�\�<\�B��7�1�'),(255,1,_binary '�\�ٻ<\�B��7�1�'),(664,1,_binary '�\�\�\�<\�B��7�1�'),(884,1,_binary '�\�\�0<\�B��7�1�'),(991,1,_binary '�\�\�j<\�B��7�1�'),(738,1,_binary '�\�ڤ<\�B��7�1�'),(43,1,_binary '�\�\�\�<\�B��7�1�'),(576,1,_binary '�\�\�<\�B��7�1�'),(806,1,_binary '�\�\�V<\�B��7�1�'),(30,1,_binary '�\�ۓ<\�B��7�1�'),(547,1,_binary '�\�\�\�<\�B��7�1�'),(548,1,_binary '�\�\�<\�B��7�1�'),(985,1,_binary '�\�\�@<\�B��7�1�'),(180,1,_binary '�\�\�{<\�B��7�1�'),(195,1,_binary '�\�ܵ<\�B��7�1�'),(171,1,_binary '�\�\�\�<\�B��7�1�'),(355,1,_binary '�\�\�,<\�B��7�1�'),(512,1,_binary '�\�\�=<\�B��7�1�'),(876,1,_binary '�\�\�y<\�B��7�1�'),(939,1,_binary '�\�޵<\�B��7�1�'),(33,1,_binary '�\�\�\�<\�B��7�1�'),(168,1,_binary '�\�\�\�<\�B��7�1�'),(258,1,_binary '�\�\�\0<\�B��7�1�'),(259,1,_binary '�\�\�<\�B��7�1�'),(714,1,_binary '�\�\�K<\�B��7�1�'),(22,1,_binary '�\�\�<\�B��7�1�'),(317,1,_binary '�\�\�\�<\�B��7�1�'),(550,1,_binary '�\�\��<\�B��7�1�'),(945,1,_binary '�\�\�\�<\�B��7�1�'),(956,1,_binary '�\�\�<\�B��7�1�'),(318,1,_binary '�\�\�2<\�B��7�1�'),(551,1,_binary '�\�\�m<\�B��7�1�'),(100,1,_binary '�\�\�<\�B��7�1�'),(353,1,_binary '�\�\�\�<\�B��7�1�'),(463,1,_binary '�\�\�!<\�B��7�1�'),(999,1,_binary '�\�\��<\�B��7�1�'),(181,1,_binary '�\�\�4<\�B��7�1�'),(492,1,_binary '�\�\�F<\�B��7�1�'),(602,1,_binary '�\�\�<\�B��7�1�'),(932,1,_binary '�\�\�<\�B��7�1�'),(347,1,_binary '�\�\��<\�B��7�1�'),(908,1,_binary '�\�\�5<\�B��7�1�'),(411,1,_binary '�\�\�\�<\�B��7�1�'),(413,1,_binary '�\�\�&<\�B��7�1�'),(419,1,_binary '�\�\�e<\�B��7�1�'),(420,1,_binary '�\�\�A<\�B��7�1�'),(649,1,_binary '�\�\�~<\�B��7�1�'),(700,1,_binary '�\�\�<\�B��7�1�'),(90,1,_binary '�\�\�\�<\�B��7�1�'),(91,1,_binary '�\�\�1<\�B��7�1�'),(430,1,_binary '�\�\�l<\�B��7�1�'),(114,1,_binary '�\�\��<\�B��7�1�'),(996,1,_binary '�\�\�\�<\�B��7�1�'),(1007,1,_binary '�\�\�<\�B��7�1�'),(466,1,_binary '�\�\�Z<\�B��7�1�'),(807,1,_binary '�\�\�<\�B��7�1�'),(934,1,_binary '�\�\�\�<\�B��7�1�'),(172,1,_binary '�\�\�<\�B��7�1�'),(562,1,_binary '�\�\�P<\�B��7�1�'),(790,1,_binary '�\�\�<\�B��7�1�'),(882,1,_binary '�\�\�\�<\�B��7�1�'),(235,1,_binary '�\�\��<\�B��7�1�'),(491,1,_binary '�\�\�9<\�B��7�1�'),(565,1,_binary '�\�\�s<\�B��7�1�'),(392,1,_binary '�\�\�<\�B��7�1�'),(644,1,_binary '�\�\�\�<\�B��7�1�'),(902,1,_binary '�\�\�\"<\�B��7�1�'),(435,1,_binary '�\�\�\\<\�B��7�1�'),(510,1,_binary '�\�\�<\�B��7�1�'),(651,1,_binary '�\�\�\�<\�B��7�1�'),(362,1,_binary '�\�\�\n<\�B��7�1�'),(765,1,_binary '�\�\�D<\�B��7�1�'),(909,1,_binary '�\�\�~<\�B��7�1�'),(210,1,_binary '�\�\�<\�B��7�1�'),(800,1,_binary '�\�\�\�<\�B��7�1�'),(901,1,_binary '�\�\�0<\�B��7�1�'),(132,1,_binary '�\�\�j<\�B��7�1�'),(237,1,_binary '�\�\�<\�B��7�1�'),(370,1,_binary '�\�\�\�<\�B��7�1�'),(505,1,_binary '�\�\�<\�B��7�1�'),(940,1,_binary '�\�\�V<\�B��7�1�'),(955,1,_binary '�\�\��<\�B��7�1�'),(1003,1,_binary '�\�\�\�<\�B��7�1�'),(348,1,_binary '�\�\�	<\�B��7�1�'),(444,1,_binary '�\�\�G<\�B��7�1�'),(72,1,_binary '�\�\��<\�B��7�1�'),(202,1,_binary '�\�\��<\�B��7�1�'),(213,1,_binary '�\�\�\�<\�B��7�1�'),(458,1,_binary '�\�\�1<\�B��7�1�'),(713,1,_binary '�\�\�m<\�B��7�1�'),(1,2,_binary '_:\�#;�\�B��7�1�');
/*!40000 ALTER TABLE `depot_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discharge_type`
--

DROP TABLE IF EXISTS `discharge_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discharge_type` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `discharge_type_1` (`id`,`label`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discharge_type`
--

LOCK TABLES `discharge_type` WRITE;
/*!40000 ALTER TABLE `discharge_type` DISABLE KEYS */;
INSERT INTO `discharge_type` VALUES (1,'PATIENT_RECORDS.DISCHARGE.REGULAR'),(2,'PATIENT_RECORDS.DISCHARGE.ON_PATIENT_WILL'),(3,'PATIENT_RECORDS.DISCHARGE.EMERGENCY'),(4,'PATIENT_RECORDS.DISCHARGE.SERVICE_CHANGE'),(5,'PATIENT_RECORDS.DISCHARGE.DEATH'),(6,'PATIENT_RECORDS.DISCHARGE.EVASION'),(7,'PATIENT_RECORDS.DISCHARGE.DISCHARGE_BUT_ON_BED'),(8,'PATIENT_RECORDS.DISCHARGE.STATUQUO_CLINIC'),(9,'PATIENT_RECORDS.DISCHARGE.TRANSFER');
/*!40000 ALTER TABLE `discharge_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventory_uuid` binary(16) NOT NULL,
  `account_id` int unsigned NOT NULL,
  `value` decimal(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `discount_1` (`label`),
  UNIQUE KEY `discount_2` (`account_id`,`inventory_uuid`),
  KEY `inventory_uuid` (`inventory_uuid`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `discount__account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `discount__inventory` FOREIGN KEY (`inventory_uuid`) REFERENCES `inventory` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_map`
--

DROP TABLE IF EXISTS `document_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_map` (
  `uuid` binary(16) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_map`
--

LOCK TABLES `document_map` WRITE;
/*!40000 ALTER TABLE `document_map` DISABLE KEYS */;
INSERT INTO `document_map` VALUES (_binary '\�\�\�\�tL��\�\�.$','SM.13.1'),(_binary '	�E\�DI/�\�\�\�\n\�\'','SM.8.2'),(_binary '8IIN=@یxF��;_','SM.8.5'),(_binary ')��H�A&��\�Y2�','SM.13.6'),(_binary '`\�\�s>Q\�U\�H:�ޣ','VO.PCIMA.1'),(_binary '�>�gvE&�ݫ\�yn\�','SM.8.3'),(_binary '�\���B\�\�\���7�1�','VO.PCIMA.2');
/*!40000 ALTER TABLE `document_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation` (
  `uuid` binary(16) NOT NULL,
  `reference` int unsigned NOT NULL AUTO_INCREMENT,
  `project_id` smallint unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date` date NOT NULL,
  `donor_id` int NOT NULL,
  PRIMARY KEY (`reference`),
  UNIQUE KEY `donation_uuid` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation`
--

LOCK TABLES `donation` WRITE;
/*!40000 ALTER TABLE `donation` DISABLE KEYS */;
/*!40000 ALTER TABLE `donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor`
--

LOCK TABLES `donor` WRITE;
/*!40000 ALTER TABLE `donor` DISABLE KEYS */;
/*!40000 ALTER TABLE `donor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `uuid` binary(16) NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_embauche` datetime DEFAULT NULL,
  `grade_uuid` binary(16) NOT NULL,
  `nb_spouse` int DEFAULT '0',
  `nb_enfant` int DEFAULT '0',
  `individual_salary` float DEFAULT '0',
  `bank` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fonction_id` tinyint unsigned DEFAULT NULL,
  `service_uuid` binary(16) DEFAULT NULL,
  `creditor_uuid` binary(16) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT NULL,
  `patient_uuid` binary(16) DEFAULT NULL,
  `is_medical` tinyint(1) DEFAULT '0',
  `reference` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `employee_1` (`code`),
  UNIQUE KEY `employee_2` (`patient_uuid`),
  KEY `fonction_id` (`fonction_id`),
  KEY `service_uuid` (`service_uuid`),
  KEY `creditor_uuid` (`creditor_uuid`),
  KEY `grade_uuid` (`grade_uuid`),
  KEY `patient_uuid` (`patient_uuid`),
  CONSTRAINT `employee__creditor` FOREIGN KEY (`creditor_uuid`) REFERENCES `creditor` (`uuid`),
  CONSTRAINT `employee__fonction` FOREIGN KEY (`fonction_id`) REFERENCES `fonction` (`id`),
  CONSTRAINT `employee__grade` FOREIGN KEY (`grade_uuid`) REFERENCES `grade` (`uuid`),
  CONSTRAINT `employee__patient` FOREIGN KEY (`patient_uuid`) REFERENCES `patient` (`uuid`),
  CONSTRAINT `employee__service` FOREIGN KEY (`service_uuid`) REFERENCES `service` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `employee_before_insert` BEFORE INSERT ON `employee` FOR EACH ROW SET NEW.reference = (SELECT IF(NEW.reference, NEW.reference, IFNULL(MAX(employee.reference) + 1, 1)) FROM employee) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `employee_entity_map` AFTER INSERT ON `employee` FOR EACH ROW BEGIN
  INSERT INTO entity_map
    SELECT new.creditor_uuid, CONCAT_WS('.', 'EM', enterprise.abbr, new.reference) FROM enterprise ON DUPLICATE KEY UPDATE text=text;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `employee_advantage`
--

DROP TABLE IF EXISTS `employee_advantage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_advantage` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `employee_uuid` binary(16) NOT NULL,
  `rubric_payroll_id` int unsigned NOT NULL,
  `value` float DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `employee_uuid` (`employee_uuid`),
  KEY `rubric_payroll_id` (`rubric_payroll_id`),
  CONSTRAINT `employee_advantage__employee` FOREIGN KEY (`employee_uuid`) REFERENCES `employee` (`uuid`),
  CONSTRAINT `employee_advantage__rubric_payroll` FOREIGN KEY (`rubric_payroll_id`) REFERENCES `rubric_payroll` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_advantage`
--

LOCK TABLES `employee_advantage` WRITE;
/*!40000 ALTER TABLE `employee_advantage` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_advantage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enterprise`
--

DROP TABLE IF EXISTS `enterprise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enterprise` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbr` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` binary(16) DEFAULT NULL,
  `logo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` tinyint unsigned NOT NULL,
  `po_box` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helpdesk` text COLLATE utf8mb4_unicode_ci,
  `gain_account_id` int unsigned DEFAULT NULL,
  `loss_account_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `enterprise_1` (`name`),
  KEY `location_id` (`location_id`),
  KEY `currency_id` (`currency_id`),
  KEY `gain_account_id` (`gain_account_id`),
  KEY `loss_account_id` (`loss_account_id`),
  CONSTRAINT `enterprise__currency` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  CONSTRAINT `enterprise__gain_account` FOREIGN KEY (`gain_account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `enterprise__location` FOREIGN KEY (`location_id`) REFERENCES `village` (`uuid`),
  CONSTRAINT `enterprise__loss_account` FOREIGN KEY (`loss_account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enterprise`
--

LOCK TABLES `enterprise` WRITE;
/*!40000 ALTER TABLE `enterprise` DISABLE KEYS */;
INSERT INTO `enterprise` VALUES (1,'PCIMA','PCIMA',NULL,NULL,NULL,_binary '*�gG������/̛',NULL,2,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `enterprise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enterprise_setting`
--

DROP TABLE IF EXISTS `enterprise_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enterprise_setting` (
  `enterprise_id` smallint unsigned NOT NULL,
  `enable_price_lock` tinyint(1) NOT NULL DEFAULT '1',
  `enable_prepayments` tinyint(1) NOT NULL DEFAULT '1',
  `enable_password_validation` tinyint(1) NOT NULL DEFAULT '1',
  `enable_balance_on_invoice_receipt` tinyint(1) NOT NULL DEFAULT '0',
  `enable_barcodes` tinyint(1) NOT NULL DEFAULT '1',
  `enable_auto_email_report` tinyint(1) NOT NULL DEFAULT '0',
  `enable_index_payment_system` tinyint(1) NOT NULL DEFAULT '0',
  `base_index_growth_rate` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`enterprise_id`),
  CONSTRAINT `enterprise_setting__enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enterprise_setting`
--

LOCK TABLES `enterprise_setting` WRITE;
/*!40000 ALTER TABLE `enterprise_setting` DISABLE KEYS */;
INSERT INTO `enterprise_setting` VALUES (1,1,1,1,0,1,0,0,0);
/*!40000 ALTER TABLE `enterprise_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity`
--

DROP TABLE IF EXISTS `entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity` (
  `uuid` binary(16) NOT NULL,
  `display_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type_id` smallint unsigned NOT NULL,
  `reference` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reference`),
  UNIQUE KEY `entity_uuid` (`uuid`),
  UNIQUE KEY `display_name` (`display_name`),
  KEY `entity_type_id` (`entity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity`
--

LOCK TABLES `entity` WRITE;
/*!40000 ALTER TABLE `entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_group`
--

DROP TABLE IF EXISTS `entity_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity_group` (
  `uuid` binary(16) NOT NULL,
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `label` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_group`
--

LOCK TABLES `entity_group` WRITE;
/*!40000 ALTER TABLE `entity_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_group_entity`
--

DROP TABLE IF EXISTS `entity_group_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity_group_entity` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `entity_uuid` binary(16) NOT NULL,
  `entity_group_uuid` binary(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_group_entity`
--

LOCK TABLES `entity_group_entity` WRITE;
/*!40000 ALTER TABLE `entity_group_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_group_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_map`
--

DROP TABLE IF EXISTS `entity_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity_map` (
  `uuid` binary(16) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_map`
--

LOCK TABLES `entity_map` WRITE;
/*!40000 ALTER TABLE `entity_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_type`
--

DROP TABLE IF EXISTS `entity_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity_type` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation_key` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `label` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_type`
--

LOCK TABLES `entity_type` WRITE;
/*!40000 ALTER TABLE `entity_type` DISABLE KEYS */;
INSERT INTO `entity_type` VALUES (1,'person','ENTITY.TYPE.PERSON','2021-11-05 15:11:54','2021-11-05 15:11:54'),(2,'service','ENTITY.TYPE.SERVICE','2021-11-05 15:11:54','2021-11-05 15:11:54'),(3,'office','ENTITY.TYPE.OFFICE','2021-11-05 15:11:54','2021-11-05 15:11:54'),(4,'enterprise','ENTITY.TYPE.ENTERPRISE','2021-11-05 15:11:54','2021-11-05 15:11:54');
/*!40000 ALTER TABLE `entity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_rate`
--

DROP TABLE IF EXISTS `exchange_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exchange_rate` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `enterprise_id` smallint unsigned NOT NULL,
  `currency_id` tinyint unsigned NOT NULL,
  `rate` decimal(19,8) unsigned NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `enterprise_id` (`enterprise_id`),
  KEY `currency_id` (`currency_id`),
  KEY `rate` (`rate`),
  KEY `date` (`date`),
  CONSTRAINT `exchange_rate__currency` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  CONSTRAINT `exchange_rate__enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_rate`
--

LOCK TABLES `exchange_rate` WRITE;
/*!40000 ALTER TABLE `exchange_rate` DISABLE KEYS */;
INSERT INTO `exchange_rate` VALUES (1,1,1,2030.00000000,'2021-11-05 16:41:40'),(2,1,3,89.00000000,'2021-11-05 16:41:55'),(3,1,3,0.85000000,'2021-11-11 15:13:39');
/*!40000 ALTER TABLE `exchange_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_indicator`
--

DROP TABLE IF EXISTS `finance_indicator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finance_indicator` (
  `uuid` binary(16) NOT NULL,
  `total_revenue` int DEFAULT '0',
  `total_subsidies` int DEFAULT '0',
  `total_drugs_sale` int DEFAULT '0',
  `total_expenses` int DEFAULT '0',
  `total_other_charge` int DEFAULT '0',
  `total_drugs_purchased` int DEFAULT '0',
  `total_staff_charge` int DEFAULT '0',
  `total_operating_charge` int DEFAULT '0',
  `total_depreciation` int DEFAULT '0',
  `total_debts` int DEFAULT '0',
  `total_cash` int DEFAULT '0',
  `total_stock_value` int DEFAULT '0',
  `total_staff` int DEFAULT '0',
  `indicator_uuid` binary(16) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `finance_indicator__indicator` (`indicator_uuid`),
  CONSTRAINT `finance_indicator__indicator` FOREIGN KEY (`indicator_uuid`) REFERENCES `indicator` (`uuid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_indicator`
--

LOCK TABLES `finance_indicator` WRITE;
/*!40000 ALTER TABLE `finance_indicator` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_indicator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fiscal_year`
--

DROP TABLE IF EXISTS `fiscal_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fiscal_year` (
  `enterprise_id` smallint unsigned NOT NULL,
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `number_of_months` mediumint unsigned NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `previous_fiscal_year_id` mediumint unsigned DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_id` smallint unsigned NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fiscal_year_1` (`label`),
  UNIQUE KEY `fiscal_year_2` (`enterprise_id`,`start_date`),
  KEY `enterprise_id` (`enterprise_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `fiscal_year__enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`),
  CONSTRAINT `fiscal_year__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fiscal_year`
--

LOCK TABLES `fiscal_year` WRITE;
/*!40000 ALTER TABLE `fiscal_year` DISABLE KEYS */;
INSERT INTO `fiscal_year` VALUES (1,1,12,'2021','2021-01-01','2021-12-31',NULL,0,'2021-11-05 15:41:13',NULL,1,NULL),(1,2,12,'2022','2022-01-01','2022-12-31',1,0,'2021-11-05 15:41:28',NULL,1,NULL);
/*!40000 ALTER TABLE `fiscal_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flux`
--

DROP TABLE IF EXISTS `flux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flux` (
  `id` int NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flux`
--

LOCK TABLES `flux` WRITE;
/*!40000 ALTER TABLE `flux` DISABLE KEYS */;
INSERT INTO `flux` VALUES (1,'STOCK_FLUX.FROM_PURCHASE'),(2,'STOCK_FLUX.FROM_OTHER_DEPOT'),(3,'STOCK_FLUX.FROM_ADJUSTMENT'),(4,'STOCK_FLUX.FROM_PATIENT'),(5,'STOCK_FLUX.FROM_SERVICE'),(6,'STOCK_FLUX.FROM_DONATION'),(7,'STOCK_FLUX.FROM_LOSS'),(8,'STOCK_FLUX.TO_OTHER_DEPOT'),(9,'STOCK_FLUX.TO_PATIENT'),(10,'STOCK_FLUX.TO_SERVICE'),(11,'STOCK_FLUX.TO_LOSS'),(12,'STOCK_FLUX.TO_ADJUSTMENT'),(13,'STOCK_FLUX.FROM_INTEGRATION'),(14,'STOCK_FLUX.INVENTORY_RESET'),(15,'STOCK_FLUX.INVENTORY_ADJUSTMENT'),(16,'STOCK_FLUX.AGGREGATE_CONSUMPTION');
/*!40000 ALTER TABLE `flux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fonction` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `fonction_txt` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fonction_1` (`fonction_txt`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fonction`
--

LOCK TABLES `fonction` WRITE;
/*!40000 ALTER TABLE `fonction` DISABLE KEYS */;
INSERT INTO `fonction` VALUES (1,'Infirmier'),(2,'Medecin Directeur');
/*!40000 ALTER TABLE `fonction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_ledger`
--

DROP TABLE IF EXISTS `general_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `general_ledger` (
  `uuid` binary(16) NOT NULL,
  `project_id` smallint unsigned NOT NULL,
  `fiscal_year_id` mediumint unsigned DEFAULT NULL,
  `period_id` mediumint unsigned DEFAULT NULL,
  `trans_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_id_reference_number` mediumint unsigned NOT NULL,
  `trans_date` datetime NOT NULL,
  `record_uuid` binary(16) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` int unsigned NOT NULL,
  `debit` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000',
  `credit` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000',
  `debit_equiv` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000',
  `credit_equiv` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000',
  `currency_id` tinyint unsigned NOT NULL,
  `entity_uuid` binary(16) DEFAULT NULL,
  `reference_uuid` binary(16) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `transaction_type_id` tinyint unsigned DEFAULT NULL,
  `user_id` smallint unsigned NOT NULL,
  `cost_center_id` mediumint unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`),
  KEY `project_id` (`project_id`),
  KEY `fiscal_year_id` (`fiscal_year_id`),
  KEY `period_id` (`period_id`),
  KEY `currency_id` (`currency_id`),
  KEY `user_id` (`user_id`),
  KEY `cost_center_id` (`cost_center_id`),
  KEY `trans_date` (`trans_date`),
  KEY `trans_id` (`trans_id`),
  KEY `record_uuid` (`record_uuid`),
  KEY `reference_uuid` (`reference_uuid`),
  KEY `entity_uuid` (`entity_uuid`),
  KEY `account_id` (`account_id`),
  KEY `trans_id_reference_number` (`trans_id_reference_number`),
  CONSTRAINT `general_ledger__account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `general_ledger__cost_center_1` FOREIGN KEY (`cost_center_id`) REFERENCES `cost_center` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `general_ledger__currency` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `general_ledger__fiscal_year` FOREIGN KEY (`fiscal_year_id`) REFERENCES `fiscal_year` (`id`),
  CONSTRAINT `general_ledger__period` FOREIGN KEY (`period_id`) REFERENCES `period` (`id`),
  CONSTRAINT `general_ledger__project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `general_ledger__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_ledger`
--

LOCK TABLES `general_ledger` WRITE;
/*!40000 ALTER TABLE `general_ledger` DISABLE KEYS */;
/*!40000 ALTER TABLE `general_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `uuid` binary(16) NOT NULL,
  `code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_salary` decimal(19,4) unsigned DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `grade_2` (`text`),
  UNIQUE KEY `grade_1` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holiday`
--

DROP TABLE IF EXISTS `holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `holiday` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `employee_uuid` binary(16) NOT NULL,
  `percentage` float DEFAULT '0',
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateFrom` date NOT NULL,
  `dateTo` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `holiday_1` (`employee_uuid`,`dateFrom`,`dateTo`),
  KEY `employee_uuid` (`employee_uuid`),
  CONSTRAINT `holiday__employee` FOREIGN KEY (`employee_uuid`) REFERENCES `employee` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holiday`
--

LOCK TABLES `holiday` WRITE;
/*!40000 ALTER TABLE `holiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holiday_paiement`
--

DROP TABLE IF EXISTS `holiday_paiement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `holiday_paiement` (
  `holiday_id` int unsigned NOT NULL,
  `holiday_nbdays` int unsigned NOT NULL,
  `holiday_percentage` float DEFAULT '0',
  `paiement_uuid` binary(16) NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(19,4) unsigned DEFAULT NULL,
  KEY `paiement_uuid` (`paiement_uuid`),
  KEY `holiday_id` (`holiday_id`),
  CONSTRAINT `holiday_paiement__holiday` FOREIGN KEY (`holiday_id`) REFERENCES `holiday` (`id`),
  CONSTRAINT `holiday_paiement__paiment` FOREIGN KEY (`paiement_uuid`) REFERENCES `paiement` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holiday_paiement`
--

LOCK TABLES `holiday_paiement` WRITE;
/*!40000 ALTER TABLE `holiday_paiement` DISABLE KEYS */;
/*!40000 ALTER TABLE `holiday_paiement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitalization_indicator`
--

DROP TABLE IF EXISTS `hospitalization_indicator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitalization_indicator` (
  `uuid` binary(16) NOT NULL,
  `total_day_realized` int DEFAULT '0',
  `total_beds` int DEFAULT '0',
  `total_hospitalized_patient` int DEFAULT '0',
  `total_external_patient` int DEFAULT '0',
  `total_death` int DEFAULT '0',
  `indicator_uuid` binary(16) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `hosp_indicator__indicator` (`indicator_uuid`),
  CONSTRAINT `hosp_indicator__indicator` FOREIGN KEY (`indicator_uuid`) REFERENCES `indicator` (`uuid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitalization_indicator`
--

LOCK TABLES `hospitalization_indicator` WRITE;
/*!40000 ALTER TABLE `hospitalization_indicator` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospitalization_indicator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icd10`
--

DROP TABLE IF EXISTS `icd10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `icd10` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `icd10_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=12709 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icd10`
--

LOCK TABLES `icd10` WRITE;
/*!40000 ALTER TABLE `icd10` DISABLE KEYS */;
/*!40000 ALTER TABLE `icd10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicator`
--

DROP TABLE IF EXISTS `indicator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indicator` (
  `uuid` binary(16) NOT NULL,
  `service_uuid` binary(16) DEFAULT NULL,
  `status_id` smallint unsigned NOT NULL,
  `period_id` mediumint unsigned NOT NULL,
  `user_id` smallint unsigned NOT NULL,
  `type_id` smallint unsigned NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `unique_indicator_1` (`service_uuid`,`period_id`),
  KEY `indicator__period` (`period_id`),
  KEY `indicator__user` (`user_id`),
  KEY `indicator__indicator_status` (`status_id`),
  KEY `indicator__indicator_type` (`type_id`),
  CONSTRAINT `indicator__indicator_status` FOREIGN KEY (`status_id`) REFERENCES `indicator_status` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `indicator__indicator_type` FOREIGN KEY (`type_id`) REFERENCES `indicator_type` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `indicator__period` FOREIGN KEY (`period_id`) REFERENCES `period` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `indicator__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicator`
--

LOCK TABLES `indicator` WRITE;
/*!40000 ALTER TABLE `indicator` DISABLE KEYS */;
/*!40000 ALTER TABLE `indicator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicator_status`
--

DROP TABLE IF EXISTS `indicator_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indicator_status` (
  `id` smallint unsigned NOT NULL,
  `text` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translate_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicator_status`
--

LOCK TABLES `indicator_status` WRITE;
/*!40000 ALTER TABLE `indicator_status` DISABLE KEYS */;
INSERT INTO `indicator_status` VALUES (1,'incomplete','FORM.LABELS.INCOMPLETE'),(2,'complete','FORM.LABELS.COMPLETE'),(3,'validated','FORM.LABELS.VALIDATED');
/*!40000 ALTER TABLE `indicator_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicator_type`
--

DROP TABLE IF EXISTS `indicator_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indicator_type` (
  `id` smallint unsigned NOT NULL,
  `text` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translate_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicator_type`
--

LOCK TABLES `indicator_type` WRITE;
/*!40000 ALTER TABLE `indicator_type` DISABLE KEYS */;
INSERT INTO `indicator_type` VALUES (1,'hospitalization','DASHBOARD.HOSPITALIZATION'),(2,'staff','DASHBOARD.STAFF'),(3,'finance','DASHBOARD.FINANCE');
/*!40000 ALTER TABLE `indicator_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `enterprise_id` smallint unsigned NOT NULL,
  `uuid` binary(16) NOT NULL,
  `code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,4) unsigned NOT NULL DEFAULT '0.0000',
  `default_quantity` int unsigned NOT NULL DEFAULT '1',
  `group_uuid` binary(16) NOT NULL,
  `unit_id` smallint unsigned DEFAULT NULL,
  `unit_weight` mediumint DEFAULT '0',
  `unit_volume` mediumint DEFAULT '0',
  `stock` int unsigned NOT NULL DEFAULT '0',
  `stock_max` int unsigned NOT NULL DEFAULT '0',
  `stock_min` int unsigned NOT NULL DEFAULT '0',
  `type_id` tinyint unsigned NOT NULL DEFAULT '0',
  `consumable` tinyint(1) NOT NULL DEFAULT '0',
  `sellable` tinyint(1) NOT NULL DEFAULT '1',
  `note` text COLLATE utf8mb4_unicode_ci,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `delay` decimal(10,4) unsigned NOT NULL DEFAULT '1.0000' COMMENT 'Delivery time',
  `purchase_interval` decimal(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT 'Purchase Order Interval',
  `last_purchase` date DEFAULT NULL COMMENT 'This element allows to store the date of the last purchase order of the product in order to allow the calculation without making much of the average ordering INTerval',
  `num_purchase` int unsigned NOT NULL DEFAULT '0' COMMENT 'Number of purchase orders',
  `num_delivery` int unsigned NOT NULL DEFAULT '0' COMMENT 'Number of stock delivery',
  `importance` smallint DEFAULT NULL COMMENT 'Inventory level of importance : 1 -> LOW, 2 -> MID, 3 -> HIGH',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `inventory_1` (`group_uuid`,`text`),
  UNIQUE KEY `inventory_2` (`code`),
  KEY `enterprise_id` (`enterprise_id`),
  KEY `group_uuid` (`group_uuid`),
  KEY `unit_id` (`unit_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `inventory__enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`),
  CONSTRAINT `inventory__enventory_unit` FOREIGN KEY (`unit_id`) REFERENCES `inventory_unit` (`id`),
  CONSTRAINT `inventory__inventory_group` FOREIGN KEY (`group_uuid`) REFERENCES `inventory_group` (`uuid`),
  CONSTRAINT `inventory__inventory_type` FOREIGN KEY (`type_id`) REFERENCES `inventory_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,_binary '\�ƫuG��ѐ�\�\�\��','0002','F-100',70.5900,1,_binary '6�\�`fI������]\�m',19,0,0,0,0,0,1,1,1,NULL,0,1.0000,0.0000,NULL,0,0,NULL,'2021-11-05 15:50:15',NULL),(1,_binary '\�ᖥ��F\�	8-\Zc�','0003','F-75',60.1200,1,_binary '6�\�`fI������]\�m',19,0,0,0,0,0,1,1,1,NULL,0,1.0000,0.0000,NULL,0,0,NULL,'2021-11-05 15:51:18',NULL),(1,_binary '�\��\�YL�R\�F>y+\�','0001','Plumpy’Nut',38.7500,1,_binary '6�\�`fI������]\�m',19,0,0,0,0,0,1,1,1,NULL,0,1.0000,0.0000,NULL,0,0,NULL,'2021-11-05 15:48:14',NULL);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_group`
--

DROP TABLE IF EXISTS `inventory_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_group` (
  `uuid` binary(16) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_account` mediumint unsigned DEFAULT NULL,
  `cogs_account` mediumint unsigned DEFAULT NULL,
  `stock_account` mediumint unsigned DEFAULT NULL,
  `donation_account` mediumint unsigned DEFAULT NULL,
  `unique_item` tinyint(1) DEFAULT '0',
  `tracking_consumption` tinyint(1) DEFAULT '1',
  `tracking_expiration` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `inventory_group_1` (`name`),
  UNIQUE KEY `inventory_group_2` (`code`),
  KEY `sales_account` (`sales_account`),
  KEY `cogs_account` (`cogs_account`),
  KEY `stock_account` (`stock_account`),
  KEY `donation_account` (`donation_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_group`
--

LOCK TABLES `inventory_group` WRITE;
/*!40000 ALTER TABLE `inventory_group` DISABLE KEYS */;
INSERT INTO `inventory_group` VALUES (_binary '6�\�`fI������]\�m','PCIMA','0001',1137,751,401,NULL,0,1,1);
/*!40000 ALTER TABLE `inventory_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_log`
--

DROP TABLE IF EXISTS `inventory_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_log` (
  `uuid` binary(16) NOT NULL,
  `inventory_uuid` binary(16) NOT NULL,
  `log_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` json DEFAULT NULL,
  `user_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `inventory_uuid` (`inventory_uuid`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `inventory_log__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_log`
--

LOCK TABLES `inventory_log` WRITE;
/*!40000 ALTER TABLE `inventory_log` DISABLE KEYS */;
INSERT INTO `inventory_log` VALUES (_binary '��I=�q\�\�Īq�',_binary '\�ᖥ��F\�	8-\Zc�','2021-11-05 15:51:18','{\"last\": {}, \"action\": \"CREATION\", \"current\": {\"code\": \"0003\", \"text\": \"F-75\", \"price\": 60.12, \"action\": \"CREATION\", \"type_id\": 1, \"unit_id\": 19, \"consumable\": 1, \"group_uuid\": \"3695E960661F499DA6F9BAB4965DE86D\", \"inventoryType\": {\"text\": \"Article\"}, \"inventoryUnit\": {\"text\": \"Carton\"}, \"inventoryGroup\": {\"name\": \"PCIMA\"}, \"default_quantity\": 1}}',1),(_binary 'F�k|�I%�7�7��C\�',_binary '\�ƫuG��ѐ�\�\�\��','2021-11-05 15:50:15','{\"last\": {}, \"action\": \"CREATION\", \"current\": {\"code\": \"0002\", \"text\": \"F-100\", \"price\": 70.59, \"action\": \"CREATION\", \"type_id\": 1, \"unit_id\": 19, \"consumable\": 1, \"group_uuid\": \"3695E960661F499DA6F9BAB4965DE86D\", \"inventoryType\": {\"text\": \"Article\"}, \"inventoryUnit\": {\"text\": \"Carton\"}, \"inventoryGroup\": {\"name\": \"PCIMA\"}, \"default_quantity\": 1}}',1),(_binary 'Z1gJG@ˋ*\�ݺ�\�',_binary '�\��\�YL�R\�F>y+\�','2021-11-05 15:48:14','{\"last\": {}, \"action\": \"CREATION\", \"current\": {\"code\": \"0001\", \"text\": \"Plumpy’Nut\", \"price\": 38.75, \"action\": \"CREATION\", \"type_id\": 1, \"unit_id\": 19, \"consumable\": 1, \"group_uuid\": \"3695E960661F499DA6F9BAB4965DE86D\", \"inventoryType\": {\"text\": \"Article\"}, \"inventoryUnit\": {\"text\": \"Carton\"}, \"inventoryGroup\": {\"name\": \"PCIMA\"}, \"default_quantity\": 1}}',1);
/*!40000 ALTER TABLE `inventory_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_tag`
--

DROP TABLE IF EXISTS `inventory_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_tag` (
  `inventory_uuid` binary(16) NOT NULL,
  `tag_uuid` binary(16) NOT NULL,
  KEY `inventory_uuid` (`inventory_uuid`),
  KEY `tag_uuid` (`tag_uuid`),
  CONSTRAINT `inventory_tag_ibfk_1` FOREIGN KEY (`inventory_uuid`) REFERENCES `inventory` (`uuid`),
  CONSTRAINT `inventory_tag_ibfk_2` FOREIGN KEY (`tag_uuid`) REFERENCES `tags` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_tag`
--

LOCK TABLES `inventory_tag` WRITE;
/*!40000 ALTER TABLE `inventory_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_type`
--

DROP TABLE IF EXISTS `inventory_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_type` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inventory_type_1` (`text`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_type`
--

LOCK TABLES `inventory_type` WRITE;
/*!40000 ALTER TABLE `inventory_type` DISABLE KEYS */;
INSERT INTO `inventory_type` VALUES (1,'Article'),(2,'Assembly'),(3,'Service');
/*!40000 ALTER TABLE `inventory_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_unit`
--

DROP TABLE IF EXISTS `inventory_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_unit` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `abbr` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inventory_unit_1` (`text`),
  UNIQUE KEY `inventory_unit_2` (`abbr`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_unit`
--

LOCK TABLES `inventory_unit` WRITE;
/*!40000 ALTER TABLE `inventory_unit` DISABLE KEYS */;
INSERT INTO `inventory_unit` VALUES (1,'Act','Act'),(2,'Pal','Pallet'),(3,'Pill','Pillule'),(4,'Box','Box'),(5,'Lot','Lot'),(6,'amp','ampoule'),(7,'bags','bags'),(8,'btl','bouteille'),(9,'cap','capsule'),(10,'flc','flacon'),(11,'jar','jar'),(12,'ltr','littre'),(13,'pce','piece'),(14,'sch','sachet'),(15,'tab','tablette'),(16,'tub','tube'),(17,'vial','vial'),(18,'unité','unité'),(19,'Carton','Carton');
/*!40000 ALTER TABLE `inventory_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `project_id` smallint unsigned NOT NULL,
  `reference` int unsigned NOT NULL DEFAULT '0',
  `uuid` binary(16) NOT NULL,
  `cost` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000',
  `debtor_uuid` binary(16) NOT NULL,
  `service_uuid` binary(16) DEFAULT NULL,
  `user_id` smallint unsigned NOT NULL,
  `date` datetime NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reversed` tinyint NOT NULL DEFAULT '0',
  `edited` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `posted` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `invoice_1` (`project_id`,`reference`),
  KEY `reference` (`reference`),
  KEY `project_id` (`project_id`),
  KEY `debtor_uuid` (`debtor_uuid`),
  KEY `service_uuid` (`service_uuid`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `invoice__debtor` FOREIGN KEY (`debtor_uuid`) REFERENCES `debtor` (`uuid`),
  CONSTRAINT `invoice__project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `invoice__service` FOREIGN KEY (`service_uuid`) REFERENCES `service` (`uuid`),
  CONSTRAINT `invoice__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `invoice_reference` BEFORE INSERT ON `invoice` FOR EACH ROW SET NEW.reference = (SELECT IF(NEW.reference, NEW.reference, IFNULL(MAX(invoice.reference) + 1, 1)) FROM invoice WHERE invoice.project_id = new.project_id) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `invoice_document_map` AFTER INSERT ON `invoice` FOR EACH ROW BEGIN
  INSERT INTO document_map
    SELECT new.uuid, CONCAT_WS('.', 'IV', project.abbr, new.reference) FROM project WHERE project.id = new.project_id ON DUPLICATE KEY UPDATE text=text;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `invoice_invoicing_fee`
--

DROP TABLE IF EXISTS `invoice_invoicing_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_invoicing_fee` (
  `invoice_uuid` binary(16) NOT NULL,
  `value` decimal(10,4) NOT NULL,
  `invoicing_fee_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`invoice_uuid`,`invoicing_fee_id`),
  KEY `invoice_uuid` (`invoice_uuid`),
  KEY `invoicing_fee_id` (`invoicing_fee_id`),
  CONSTRAINT `invoice_invoicing_fee__invoice` FOREIGN KEY (`invoice_uuid`) REFERENCES `invoice` (`uuid`) ON DELETE CASCADE,
  CONSTRAINT `invoice_invoicing_fee__invoicing_fee` FOREIGN KEY (`invoicing_fee_id`) REFERENCES `invoicing_fee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_invoicing_fee`
--

LOCK TABLES `invoice_invoicing_fee` WRITE;
/*!40000 ALTER TABLE `invoice_invoicing_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_invoicing_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_item`
--

DROP TABLE IF EXISTS `invoice_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_item` (
  `invoice_uuid` binary(16) NOT NULL,
  `uuid` binary(16) NOT NULL,
  `inventory_uuid` binary(16) NOT NULL,
  `quantity` int unsigned NOT NULL,
  `inventory_price` decimal(19,4) DEFAULT NULL,
  `transaction_price` decimal(19,4) NOT NULL,
  `debit` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `credit` decimal(19,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `invoice_item_1` (`invoice_uuid`,`inventory_uuid`),
  KEY `invoice_uuid` (`invoice_uuid`),
  KEY `inventory_uuid` (`inventory_uuid`),
  CONSTRAINT `invoice_item__inventory` FOREIGN KEY (`inventory_uuid`) REFERENCES `inventory` (`uuid`),
  CONSTRAINT `invoice_item__invoice` FOREIGN KEY (`invoice_uuid`) REFERENCES `invoice` (`uuid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_item`
--

LOCK TABLES `invoice_item` WRITE;
/*!40000 ALTER TABLE `invoice_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_subsidy`
--

DROP TABLE IF EXISTS `invoice_subsidy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_subsidy` (
  `invoice_uuid` binary(16) NOT NULL,
  `value` decimal(10,4) NOT NULL,
  `subsidy_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`invoice_uuid`,`value`),
  UNIQUE KEY `invoice_subsidy_1` (`invoice_uuid`,`subsidy_id`),
  KEY `invoice_uuid` (`invoice_uuid`),
  KEY `subsidy_id` (`subsidy_id`),
  CONSTRAINT `invoice_subsidy__invoice` FOREIGN KEY (`invoice_uuid`) REFERENCES `invoice` (`uuid`) ON DELETE CASCADE,
  CONSTRAINT `invoice_subsidy__subsidy` FOREIGN KEY (`subsidy_id`) REFERENCES `subsidy` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_subsidy`
--

LOCK TABLES `invoice_subsidy` WRITE;
/*!40000 ALTER TABLE `invoice_subsidy` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_subsidy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicing_fee`
--

DROP TABLE IF EXISTS `invoicing_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoicing_fee` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(10,4) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoicing_fee_1` (`label`),
  UNIQUE KEY `invoicing_fee_2` (`account_id`,`label`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `invoicing_fee__account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicing_fee`
--

LOCK TABLES `invoicing_fee` WRITE;
/*!40000 ALTER TABLE `invoicing_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoicing_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` tinyint unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale_key` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `language_1` (`name`),
  UNIQUE KEY `language_2` (`key`),
  UNIQUE KEY `locale_key` (`locale_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'Francais','fr','fr-be'),(2,'English','en','en-us');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lot`
--

DROP TABLE IF EXISTS `lot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lot` (
  `uuid` binary(16) NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `unit_cost` decimal(19,4) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `expiration_date` date NOT NULL,
  `inventory_uuid` binary(16) NOT NULL,
  `is_assigned` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `inventory_uuid` (`inventory_uuid`),
  CONSTRAINT `lot__inventory` FOREIGN KEY (`inventory_uuid`) REFERENCES `inventory` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lot`
--

LOCK TABLES `lot` WRITE;
/*!40000 ALTER TABLE `lot` DISABLE KEYS */;
INSERT INTO `lot` VALUES (_binary 'D*vA �\�	�.Ԟ�','00D37RCLRXP2',1,38.7500,'112021','2023-03-22',_binary '�\��\�YL�R\�F>y+\�',0),(_binary 'yG�UAEġ�N�\�\�]F','01GA83J8E655',1,60.1200,'61206','2022-06-30',_binary '\�ᖥ��F\�	8-\Zc�',0),(_binary '\n/\�c\�G\r��3g7�%','016ZTNKGWBY7',1,38.7500,'112021','2023-03-22',_binary '�\��\�YL�R\�F>y+\�',0),(_binary 'N.\rZ:H�\�\�#\�\n','01SHEUO7TPBT',1,60.1200,'ABA','2023-11-11',_binary '\�ᖥ��F\�	8-\Zc�',0),(_binary '\�\��NA2�\�S�k�\�','00TS5WHJ4EAG',1,38.7500,'112021','2023-03-22',_binary '�\��\�YL�R\�F>y+\�',0),(_binary '%xlƠIӅ\�\���\�3','01BT9X2TRGFD',1,70.5900,'61208','2022-06-30',_binary '\�ƫuG��ѐ�\�\�\��',0),(_binary ')�3\�O�H����Ě���','00SELHINH7RF',1,38.7500,'112021','2023-03-22',_binary '�\��\�YL�R\�F>y+\�',0),(_binary '1\�?�\�DI���au�_\�','016LK7HPJOZ3',1,38.7500,'112021','2023-03-22',_binary '�\��\�YL�R\�F>y+\�',0),(_binary '4\�&UI\r��[!	CCk','01NURKRYYJHA',1,60.1200,'ABA','2023-11-11',_binary '\�ᖥ��F\�	8-\Zc�',0),(_binary 'F\�\�\�}A\�|\�6�','015R35EFACQT',1,38.7500,'112021','2023-03-22',_binary '�\��\�YL�R\�F>y+\�',0),(_binary 'G�\\\��M·��H_b\�q','01UDYX69ML7S',1,60.1200,'ABA','2023-11-11',_binary '\�ᖥ��F\�	8-\Zc�',0),(_binary 'b�R\��N\n�#i�\�Au','0180PW60X5NC',1,70.5900,'61208','2022-06-30',_binary '\�ƫuG��ѐ�\�\�\��',0),(_binary 'h�#�ӐO6�\�Q�&1�','01DA1PORWPJY',1,70.5900,'61208','2022-06-30',_binary '\�ƫuG��ѐ�\�\�\��',0),(_binary '�;L��|H%������','01OOB45O2TF4',1,60.1200,'ABA','2023-11-11',_binary '\�ᖥ��F\�	8-\Zc�',0),(_binary '��V��lE�\�f\�IT�\�','00DKWAB2V5TK',1,38.7500,'112021','2023-03-22',_binary '�\��\�YL�R\�F>y+\�',0),(_binary '�\�tA\�pH��y$I\�ȀF','00R5WQI950PS',1,38.7500,'112021','2023-03-22',_binary '�\��\�YL�R\�F>y+\�',0),(_binary '�9@�p\�Nu���R01@','01ZXQYK32DMH',1,60.1200,'ABA','2023-11-11',_binary '\�ᖥ��F\�	8-\Zc�',0),(_binary '�>�\���I&��2�yN�{','01FGHHFQBR3W',1,60.1200,'61206','2022-06-30',_binary '\�ᖥ��F\�	8-\Zc�',0),(_binary 'ɭ\0�\\D���\�;F7\�\n','0194XDBHPRL2',1,70.5900,'61208','2022-06-30',_binary '\�ƫuG��ѐ�\�\�\��',0),(_binary '\�T\�#z6@چ55\�(��','01AZZK6FIH9Q',1,70.5900,'61208','2022-06-30',_binary '\�ƫuG��ѐ�\�\�\��',0),(_binary '\�\�SN!iF\Z�s<\�\�\�\�','01FFTOMBROYW',1,70.5900,'61208','2022-06-30',_binary '\�ƫuG��ѐ�\�\�\��',0),(_binary '\�m�!\�Cݨ)h��1','00X496ZC7OM0',1,38.7500,'112021','2023-03-22',_binary '�\��\�YL�R\�F>y+\�',0),(_binary '\�kv�e�H�\�#h�T�\n','01FOBHELIIW8',1,60.1200,'61206','2022-06-30',_binary '\�ᖥ��F\�	8-\Zc�',0),(_binary '\����!<Hw�Hb\��J�','01BIMTJBFO99',1,70.5900,'61208','2022-06-30',_binary '\�ƫuG��ѐ�\�\�\��',0),(_binary '�m\0�E\�Ḷq\�,K�7t','00CX3D3WYF3H',1,38.7500,'112021','2023-03-22',_binary '�\��\�YL�R\�F>y+\�',0);
/*!40000 ALTER TABLE `lot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lot_tag`
--

DROP TABLE IF EXISTS `lot_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lot_tag` (
  `lot_uuid` binary(16) NOT NULL,
  `tag_uuid` binary(16) NOT NULL,
  KEY `lot_uuid` (`lot_uuid`),
  KEY `tag_uuid` (`tag_uuid`),
  CONSTRAINT `lot_tag_ibfk_1` FOREIGN KEY (`lot_uuid`) REFERENCES `lot` (`uuid`),
  CONSTRAINT `lot_tag_ibfk_2` FOREIGN KEY (`tag_uuid`) REFERENCES `tags` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lot_tag`
--

LOCK TABLES `lot_tag` WRITE;
/*!40000 ALTER TABLE `lot_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `lot_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_sheet`
--

DROP TABLE IF EXISTS `medical_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_sheet` (
  `survey_data_uuid` binary(16) DEFAULT NULL,
  `patient_uuid` binary(16) DEFAULT NULL,
  KEY `medical_sheet__survey_data` (`survey_data_uuid`),
  KEY `medical_sheet__patient` (`patient_uuid`),
  CONSTRAINT `medical_sheet__patient` FOREIGN KEY (`patient_uuid`) REFERENCES `patient` (`uuid`),
  CONSTRAINT `medical_sheet__survey_data` FOREIGN KEY (`survey_data_uuid`) REFERENCES `survey_data` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_sheet`
--

LOCK TABLES `medical_sheet` WRITE;
/*!40000 ALTER TABLE `medical_sheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offday`
--

DROP TABLE IF EXISTS `offday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offday` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `percent_pay` float DEFAULT '100',
  PRIMARY KEY (`id`),
  UNIQUE KEY `offday_1` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offday`
--

LOCK TABLES `offday` WRITE;
/*!40000 ALTER TABLE `offday` DISABLE KEYS */;
/*!40000 ALTER TABLE `offday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offday_paiement`
--

DROP TABLE IF EXISTS `offday_paiement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offday_paiement` (
  `offday_id` int unsigned NOT NULL,
  `offday_percentage` float DEFAULT '0',
  `paiement_uuid` binary(16) NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(19,4) unsigned DEFAULT NULL,
  KEY `paiement_uuid` (`paiement_uuid`),
  KEY `offday_id` (`offday_id`),
  CONSTRAINT `offday_paiement__offday` FOREIGN KEY (`offday_id`) REFERENCES `offday` (`id`),
  CONSTRAINT `offday_paiement__paiment` FOREIGN KEY (`paiement_uuid`) REFERENCES `paiement` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offday_paiement`
--

LOCK TABLES `offday_paiement` WRITE;
/*!40000 ALTER TABLE `offday_paiement` DISABLE KEYS */;
/*!40000 ALTER TABLE `offday_paiement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paiement`
--

DROP TABLE IF EXISTS `paiement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paiement` (
  `uuid` binary(16) NOT NULL,
  `employee_uuid` binary(16) NOT NULL,
  `payroll_configuration_id` int unsigned NOT NULL,
  `currency_id` tinyint unsigned DEFAULT NULL,
  `paiement_date` date DEFAULT NULL,
  `total_day` int unsigned DEFAULT '0',
  `working_day` int unsigned DEFAULT '0',
  `basic_salary` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `daily_salary` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `base_taxable` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `gross_salary` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `net_salary` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `amount_paid` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `status_id` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `paiement_1` (`employee_uuid`,`payroll_configuration_id`),
  KEY `employee_uuid` (`employee_uuid`),
  KEY `payroll_configuration_id` (`payroll_configuration_id`),
  KEY `currency_id` (`currency_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `paiement__currency` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  CONSTRAINT `paiement__employee` FOREIGN KEY (`employee_uuid`) REFERENCES `employee` (`uuid`),
  CONSTRAINT `paiement__pay_status` FOREIGN KEY (`status_id`) REFERENCES `paiement_status` (`id`),
  CONSTRAINT `paiement__payroll_configuration` FOREIGN KEY (`payroll_configuration_id`) REFERENCES `payroll_configuration` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paiement`
--

LOCK TABLES `paiement` WRITE;
/*!40000 ALTER TABLE `paiement` DISABLE KEYS */;
/*!40000 ALTER TABLE `paiement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paiement_status`
--

DROP TABLE IF EXISTS `paiement_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paiement_status` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `paiement_status` (`id`,`text`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paiement_status`
--

LOCK TABLES `paiement_status` WRITE;
/*!40000 ALTER TABLE `paiement_status` DISABLE KEYS */;
INSERT INTO `paiement_status` VALUES (1,'PAYROLL_STATUS.WAITING_FOR_CONFIGURATION'),(2,'PAYROLL_STATUS.CONFIGURED'),(3,'PAYROLL_STATUS.WAITING_FOR_PAYMENT'),(4,'PAYROLL_STATUS.PARTIALLY_PAID'),(5,'PAYROLL_STATUS.PAID');
/*!40000 ALTER TABLE `paiement_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `uuid` binary(16) NOT NULL,
  `project_id` smallint unsigned NOT NULL,
  `reference` int unsigned NOT NULL DEFAULT '0',
  `debtor_uuid` binary(16) NOT NULL,
  `display_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `dob_unknown_date` tinyint(1) NOT NULL DEFAULT '0',
  `father_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employer` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_profession` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_employer` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin_location_id` binary(16) NOT NULL,
  `current_location_id` binary(16) NOT NULL,
  `registration_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `hospital_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` smallint unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `health_zone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health_area` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `patient_2` (`project_id`,`reference`),
  UNIQUE KEY `patient_1` (`hospital_no`),
  KEY `reference` (`reference`),
  KEY `project_id` (`project_id`),
  KEY `debtor_uuid` (`debtor_uuid`),
  KEY `origin_location_id` (`origin_location_id`),
  KEY `current_location_id` (`current_location_id`),
  KEY `registration_date` (`registration_date`),
  KEY `dob` (`dob`),
  KEY `sex` (`sex`),
  KEY `patient__user` (`user_id`),
  FULLTEXT KEY `display_name` (`display_name`),
  CONSTRAINT `patient__current_location` FOREIGN KEY (`current_location_id`) REFERENCES `village` (`uuid`) ON UPDATE CASCADE,
  CONSTRAINT `patient__debtor` FOREIGN KEY (`debtor_uuid`) REFERENCES `debtor` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient__origin_location` FOREIGN KEY (`origin_location_id`) REFERENCES `village` (`uuid`) ON UPDATE CASCADE,
  CONSTRAINT `patient__project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `patient__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `patient_reference` BEFORE INSERT ON `patient` FOR EACH ROW SET NEW.reference = (SELECT IF(NEW.reference, NEW.reference, IFNULL(MAX(patient.reference) + 1, 1)) FROM patient WHERE patient.project_id = new.project_id) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `patient_entity_map` AFTER INSERT ON `patient` FOR EACH ROW BEGIN

  
  INSERT INTO entity_map
    SELECT new.uuid, CONCAT_WS('.', 'PA', project.abbr, new.reference) FROM project WHERE project.id = new.project_id ON DUPLICATE KEY UPDATE text=text;

  
  

  
  
  INSERT INTO entity_map
    SELECT new.debtor_uuid, CONCAT_WS('.', 'PA', project.abbr, new.reference) FROM project WHERE project.id = new.project_id ON DUPLICATE KEY UPDATE text=text;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `patient_assignment`
--

DROP TABLE IF EXISTS `patient_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_assignment` (
  `uuid` binary(16) NOT NULL,
  `patient_group_uuid` binary(16) NOT NULL,
  `patient_uuid` binary(16) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `patient_group_uuid` (`patient_group_uuid`),
  KEY `patient_uuid` (`patient_uuid`),
  CONSTRAINT `patient_assignment__patient` FOREIGN KEY (`patient_uuid`) REFERENCES `patient` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient_assignment__patient_group` FOREIGN KEY (`patient_group_uuid`) REFERENCES `patient_group` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_assignment`
--

LOCK TABLES `patient_assignment` WRITE;
/*!40000 ALTER TABLE `patient_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_document`
--

DROP TABLE IF EXISTS `patient_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_document` (
  `uuid` binary(16) NOT NULL,
  `patient_uuid` binary(16) NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mimetype` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int unsigned NOT NULL,
  `user_id` smallint unsigned NOT NULL,
  KEY `patient_uuid` (`patient_uuid`),
  KEY `patient_document__user` (`user_id`),
  CONSTRAINT `patient_document__patient` FOREIGN KEY (`patient_uuid`) REFERENCES `patient` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient_document__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_document`
--

LOCK TABLES `patient_document` WRITE;
/*!40000 ALTER TABLE `patient_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_group`
--

DROP TABLE IF EXISTS `patient_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_group` (
  `uuid` binary(16) NOT NULL,
  `enterprise_id` smallint unsigned NOT NULL,
  `price_list_uuid` binary(16) DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `patient_group_1` (`name`),
  KEY `enterprise_id` (`enterprise_id`),
  KEY `price_list_uuid` (`price_list_uuid`),
  CONSTRAINT `patient_group__enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`),
  CONSTRAINT `patient_group__pricelist` FOREIGN KEY (`price_list_uuid`) REFERENCES `price_list` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_group`
--

LOCK TABLES `patient_group` WRITE;
/*!40000 ALTER TABLE `patient_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_group_invoicing_fee`
--

DROP TABLE IF EXISTS `patient_group_invoicing_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_group_invoicing_fee` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `patient_group_uuid` binary(16) NOT NULL,
  `invoicing_fee_id` smallint unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `patient_group_uuid` (`patient_group_uuid`),
  KEY `invoicing_fee_id` (`invoicing_fee_id`),
  CONSTRAINT `patient_group_inv_fee__iv_fee` FOREIGN KEY (`invoicing_fee_id`) REFERENCES `invoicing_fee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient_group_inv_fee__patient_group` FOREIGN KEY (`patient_group_uuid`) REFERENCES `patient_group` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_group_invoicing_fee`
--

LOCK TABLES `patient_group_invoicing_fee` WRITE;
/*!40000 ALTER TABLE `patient_group_invoicing_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_group_invoicing_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_group_subsidy`
--

DROP TABLE IF EXISTS `patient_group_subsidy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_group_subsidy` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `patient_group_uuid` binary(16) NOT NULL,
  `subsidy_id` smallint unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `patient_group_uuid` (`patient_group_uuid`),
  KEY `subsidy_id` (`subsidy_id`),
  CONSTRAINT `patient_group_subsidy__patient_group` FOREIGN KEY (`patient_group_uuid`) REFERENCES `patient_group` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient_group_subsidy__subsidy` FOREIGN KEY (`subsidy_id`) REFERENCES `subsidy` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_group_subsidy`
--

LOCK TABLES `patient_group_subsidy` WRITE;
/*!40000 ALTER TABLE `patient_group_subsidy` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_group_subsidy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_hospitalization`
--

DROP TABLE IF EXISTS `patient_hospitalization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_hospitalization` (
  `uuid` binary(16) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `patient_visit_uuid` binary(16) NOT NULL,
  `patient_uuid` binary(16) NOT NULL,
  `room_uuid` binary(16) NOT NULL,
  `bed_id` smallint unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`),
  KEY `patient_hosp__patient_visit` (`patient_visit_uuid`),
  KEY `patient_hosp__patient` (`patient_uuid`),
  KEY `patient_hosp__room` (`room_uuid`),
  KEY `patient_hosp__bed` (`bed_id`),
  CONSTRAINT `patient_hosp__bed` FOREIGN KEY (`bed_id`) REFERENCES `bed` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `patient_hosp__patient` FOREIGN KEY (`patient_uuid`) REFERENCES `patient` (`uuid`) ON UPDATE CASCADE,
  CONSTRAINT `patient_hosp__patient_visit` FOREIGN KEY (`patient_visit_uuid`) REFERENCES `patient_visit` (`uuid`) ON UPDATE CASCADE,
  CONSTRAINT `patient_hosp__room` FOREIGN KEY (`room_uuid`) REFERENCES `room` (`uuid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_hospitalization`
--

LOCK TABLES `patient_hospitalization` WRITE;
/*!40000 ALTER TABLE `patient_hospitalization` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_hospitalization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_visit`
--

DROP TABLE IF EXISTS `patient_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_visit` (
  `uuid` binary(16) NOT NULL,
  `patient_uuid` binary(16) NOT NULL,
  `start_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_date` datetime DEFAULT NULL,
  `start_notes` text COLLATE utf8mb4_unicode_ci,
  `end_notes` text COLLATE utf8mb4_unicode_ci,
  `start_diagnosis_id` int unsigned DEFAULT NULL,
  `end_diagnosis_id` int unsigned DEFAULT NULL,
  `hospitalized` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` smallint unsigned NOT NULL,
  `last_service_uuid` binary(16) NOT NULL,
  `discharge_type_id` smallint unsigned DEFAULT NULL,
  `inside_health_zone` tinyint(1) DEFAULT NULL,
  `is_pregnant` tinyint(1) DEFAULT '0',
  `is_refered` tinyint(1) DEFAULT '0',
  `is_new_case` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `patient_visit_1` (`patient_uuid`,`start_date`,`end_date`),
  KEY `patient_uuid` (`patient_uuid`),
  KEY `user_id` (`user_id`),
  KEY `start_diagnosis_id` (`start_diagnosis_id`),
  KEY `end_diagnosis_id` (`end_diagnosis_id`),
  KEY `last_service_uuid` (`last_service_uuid`),
  KEY `discharge_type_id` (`discharge_type_id`),
  CONSTRAINT `patient_visit__end_diagnosis` FOREIGN KEY (`end_diagnosis_id`) REFERENCES `icd10` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `patient_visit__patient` FOREIGN KEY (`patient_uuid`) REFERENCES `patient` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient_visit__start_diagnosis` FOREIGN KEY (`start_diagnosis_id`) REFERENCES `icd10` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `patient_visit__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_visit`
--

LOCK TABLES `patient_visit` WRITE;
/*!40000 ALTER TABLE `patient_visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_visit_service`
--

DROP TABLE IF EXISTS `patient_visit_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_visit_service` (
  `uuid` binary(16) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `patient_visit_uuid` binary(16) NOT NULL,
  `service_uuid` binary(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`),
  KEY `patient_visit_service__patient_visit` (`patient_visit_uuid`),
  KEY `patient_visit_service__service` (`service_uuid`),
  CONSTRAINT `patient_visit_service__patient_visit` FOREIGN KEY (`patient_visit_uuid`) REFERENCES `patient_visit` (`uuid`) ON UPDATE CASCADE,
  CONSTRAINT `patient_visit_service__service` FOREIGN KEY (`service_uuid`) REFERENCES `service` (`uuid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_visit_service`
--

LOCK TABLES `patient_visit_service` WRITE;
/*!40000 ALTER TABLE `patient_visit_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_visit_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_configuration`
--

DROP TABLE IF EXISTS `payroll_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payroll_configuration` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateFrom` date NOT NULL,
  `dateTo` date NOT NULL,
  `config_rubric_id` int unsigned NOT NULL,
  `config_accounting_id` int unsigned NOT NULL,
  `config_weekend_id` int unsigned NOT NULL,
  `config_employee_id` int unsigned NOT NULL,
  `config_ipr_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payroll_configuration` (`label`),
  KEY `payroll_conf__conf_rubric` (`config_rubric_id`),
  KEY `payroll_conf__conf_account` (`config_accounting_id`),
  KEY `payroll_conf__conf_weekend` (`config_weekend_id`),
  KEY `payroll_conf__conf_employee` (`config_employee_id`),
  CONSTRAINT `payroll_conf__conf_account` FOREIGN KEY (`config_accounting_id`) REFERENCES `config_accounting` (`id`),
  CONSTRAINT `payroll_conf__conf_employee` FOREIGN KEY (`config_employee_id`) REFERENCES `config_employee` (`id`),
  CONSTRAINT `payroll_conf__conf_rubric` FOREIGN KEY (`config_rubric_id`) REFERENCES `config_rubric` (`id`),
  CONSTRAINT `payroll_conf__conf_weekend` FOREIGN KEY (`config_weekend_id`) REFERENCES `weekend_config` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_configuration`
--

LOCK TABLES `payroll_configuration` WRITE;
/*!40000 ALTER TABLE `payroll_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `period`
--

DROP TABLE IF EXISTS `period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `period` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `fiscal_year_id` mediumint unsigned NOT NULL,
  `number` smallint unsigned NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `translate_key` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `period_1` (`start_date`,`end_date`),
  KEY `fiscal_year_id` (`fiscal_year_id`),
  CONSTRAINT `period__fiscal_year` FOREIGN KEY (`fiscal_year_id`) REFERENCES `fiscal_year` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period`
--

LOCK TABLES `period` WRITE;
/*!40000 ALTER TABLE `period` DISABLE KEYS */;
INSERT INTO `period` VALUES (20210,1,0,NULL,NULL,0,NULL,NULL),(20220,2,0,NULL,NULL,0,NULL,NULL),(202101,1,1,'2021-01-01','2021-01-31',0,'TABLE.COLUMNS.DATE_MONTH.JANUARY','2021'),(202102,1,2,'2021-02-01','2021-02-28',0,'TABLE.COLUMNS.DATE_MONTH.FEBRUARY','2021'),(202103,1,3,'2021-03-01','2021-03-31',0,'TABLE.COLUMNS.DATE_MONTH.MARCH','2021'),(202104,1,4,'2021-04-01','2021-04-30',0,'TABLE.COLUMNS.DATE_MONTH.APRIL','2021'),(202105,1,5,'2021-05-01','2021-05-31',0,'TABLE.COLUMNS.DATE_MONTH.MAY','2021'),(202106,1,6,'2021-06-01','2021-06-30',0,'TABLE.COLUMNS.DATE_MONTH.JUNE','2021'),(202107,1,7,'2021-07-01','2021-07-31',0,'TABLE.COLUMNS.DATE_MONTH.JULY','2021'),(202108,1,8,'2021-08-01','2021-08-31',0,'TABLE.COLUMNS.DATE_MONTH.AUGUST','2021'),(202109,1,9,'2021-09-01','2021-09-30',0,'TABLE.COLUMNS.DATE_MONTH.SEPTEMBER','2021'),(202110,1,10,'2021-10-01','2021-10-31',0,'TABLE.COLUMNS.DATE_MONTH.OCTOBER','2021'),(202111,1,11,'2021-11-01','2021-11-30',0,'TABLE.COLUMNS.DATE_MONTH.NOVEMBER','2021'),(202112,1,12,'2021-12-01','2021-12-31',0,'TABLE.COLUMNS.DATE_MONTH.DECEMBER','2021'),(202113,1,13,NULL,NULL,0,NULL,NULL),(202201,2,1,'2022-01-01','2022-01-31',0,'TABLE.COLUMNS.DATE_MONTH.JANUARY','2022'),(202202,2,2,'2022-02-01','2022-02-28',0,'TABLE.COLUMNS.DATE_MONTH.FEBRUARY','2022'),(202203,2,3,'2022-03-01','2022-03-31',0,'TABLE.COLUMNS.DATE_MONTH.MARCH','2022'),(202204,2,4,'2022-04-01','2022-04-30',0,'TABLE.COLUMNS.DATE_MONTH.APRIL','2022'),(202205,2,5,'2022-05-01','2022-05-31',0,'TABLE.COLUMNS.DATE_MONTH.MAY','2022'),(202206,2,6,'2022-06-01','2022-06-30',0,'TABLE.COLUMNS.DATE_MONTH.JUNE','2022'),(202207,2,7,'2022-07-01','2022-07-31',0,'TABLE.COLUMNS.DATE_MONTH.JULY','2022'),(202208,2,8,'2022-08-01','2022-08-31',0,'TABLE.COLUMNS.DATE_MONTH.AUGUST','2022'),(202209,2,9,'2022-09-01','2022-09-30',0,'TABLE.COLUMNS.DATE_MONTH.SEPTEMBER','2022'),(202210,2,10,'2022-10-01','2022-10-31',0,'TABLE.COLUMNS.DATE_MONTH.OCTOBER','2022'),(202211,2,11,'2022-11-01','2022-11-30',0,'TABLE.COLUMNS.DATE_MONTH.NOVEMBER','2022'),(202212,2,12,'2022-12-01','2022-12-31',0,'TABLE.COLUMNS.DATE_MONTH.DECEMBER','2022'),(202213,2,13,NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `period_total`
--

DROP TABLE IF EXISTS `period_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `period_total` (
  `enterprise_id` smallint unsigned NOT NULL,
  `fiscal_year_id` mediumint unsigned NOT NULL,
  `period_id` mediumint unsigned NOT NULL,
  `account_id` int unsigned NOT NULL,
  `credit` decimal(19,4) unsigned DEFAULT NULL,
  `debit` decimal(19,4) unsigned DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`enterprise_id`,`fiscal_year_id`,`period_id`,`account_id`),
  KEY `fiscal_year_id` (`fiscal_year_id`),
  KEY `account_id` (`account_id`),
  KEY `enterprise_id` (`enterprise_id`),
  KEY `period_id` (`period_id`),
  CONSTRAINT `period_total__account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `period_total__enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`),
  CONSTRAINT `period_total__fiscal_year` FOREIGN KEY (`fiscal_year_id`) REFERENCES `fiscal_year` (`id`),
  CONSTRAINT `period_total__period` FOREIGN KEY (`period_id`) REFERENCES `period` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period_total`
--

LOCK TABLES `period_total` WRITE;
/*!40000 ALTER TABLE `period_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `period_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `unit_id` smallint unsigned NOT NULL,
  `user_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_1` (`unit_id`,`user_id`),
  KEY `unit_id` (`unit_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `permission__unit` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posting_journal`
--

DROP TABLE IF EXISTS `posting_journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posting_journal` (
  `uuid` binary(16) NOT NULL,
  `project_id` smallint unsigned NOT NULL,
  `fiscal_year_id` mediumint unsigned DEFAULT NULL,
  `period_id` mediumint unsigned DEFAULT NULL,
  `trans_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_id_reference_number` mediumint unsigned NOT NULL,
  `trans_date` datetime NOT NULL,
  `record_uuid` binary(16) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `account_id` int unsigned NOT NULL,
  `debit` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `credit` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `debit_equiv` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `credit_equiv` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `currency_id` tinyint unsigned NOT NULL,
  `entity_uuid` binary(16) DEFAULT NULL,
  `reference_uuid` binary(16) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `transaction_type_id` tinyint unsigned DEFAULT NULL,
  `user_id` smallint unsigned NOT NULL,
  `cost_center_id` mediumint unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`),
  KEY `project_id` (`project_id`),
  KEY `fiscal_year_id` (`fiscal_year_id`),
  KEY `period_id` (`period_id`),
  KEY `currency_id` (`currency_id`),
  KEY `user_id` (`user_id`),
  KEY `cost_center_id` (`cost_center_id`),
  KEY `trans_date` (`trans_date`),
  KEY `trans_id` (`trans_id`),
  KEY `record_uuid` (`record_uuid`),
  KEY `reference_uuid` (`reference_uuid`),
  KEY `entity_uuid` (`entity_uuid`),
  KEY `account_id` (`account_id`),
  KEY `trans_id_reference_number` (`trans_id_reference_number`),
  CONSTRAINT `pg__account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `pg__cost_center_1` FOREIGN KEY (`cost_center_id`) REFERENCES `cost_center` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `pg__currency` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `pg__fiscal_year` FOREIGN KEY (`fiscal_year_id`) REFERENCES `fiscal_year` (`id`),
  CONSTRAINT `pg__period` FOREIGN KEY (`period_id`) REFERENCES `period` (`id`),
  CONSTRAINT `pg__project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `pg__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posting_journal`
--

LOCK TABLES `posting_journal` WRITE;
/*!40000 ALTER TABLE `posting_journal` DISABLE KEYS */;
INSERT INTO `posting_journal` VALUES (_binary '`\��>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of F-100 (01BT9X2TRGFD)',401,70.5900,0.0000,70.5900,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\��>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of F-100 (0180PW60X5NC)',401,70.5900,0.0000,70.5900,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\�L>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of F-100 (01DA1PORWPJY)',401,70.5900,0.0000,70.5900,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\��>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of F-100 (0194XDBHPRL2)',401,70.5900,0.0000,70.5900,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\�C>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of F-100 (01AZZK6FIH9Q)',401,70.5900,0.0000,70.5900,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\�\�>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of F-100 (01FFTOMBROYW)',401,70.5900,0.0000,70.5900,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\�{>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of F-100 (01BIMTJBFO99)',401,70.5900,0.0000,70.5900,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\�	>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of F-75 (01GA83J8E655)',401,60.1200,0.0000,60.1200,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\��>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of F-75 (01FGHHFQBR3W)',401,60.1200,0.0000,60.1200,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\�\Z2>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of F-75 (01FOBHELIIW8)',401,60.1200,0.0000,60.1200,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\��>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of Plumpy’Nut (00D37RCLRXP2)',401,38.7500,0.0000,38.7500,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\�N>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of Plumpy’Nut (016ZTNKGWBY7)',401,38.7500,0.0000,38.7500,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\�\�>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of Plumpy’Nut (00TS5WHJ4EAG)',401,38.7500,0.0000,38.7500,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\� e>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of Plumpy’Nut (00SELHINH7RF)',401,38.7500,0.0000,38.7500,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\�!�>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of Plumpy’Nut (016LK7HPJOZ3)',401,38.7500,0.0000,38.7500,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\�#�>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of Plumpy’Nut (015R35EFACQT)',401,38.7500,0.0000,38.7500,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\�%>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of Plumpy’Nut (00DKWAB2V5TK)',401,38.7500,0.0000,38.7500,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\�&�>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of Plumpy’Nut (00R5WQI950PS)',401,38.7500,0.0000,38.7500,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\�(6>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of Plumpy’Nut (00X496ZC7OM0)',401,38.7500,0.0000,38.7500,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\�)�>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','PCIMA - 1 Carton of Plumpy’Nut (00CX3D3WYF3H)',401,38.7500,0.0000,38.7500,0.0000,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '`\�+P>Q\�U\�H:�ޣ',1,1,202111,'PCIMA1',1,'2021-11-05 16:52:54',_binary '`\�\�s>Q\�U\�H:�ޣ','RECEPTION DES PRODUITS CORUS - PCIMA',751,0.0000,1061.9900,0.0000,1061.9900,2,NULL,_binary '\�\�\�\�tL��\�\�.$',NULL,14,1,NULL,'2021-11-05 15:59:38',NULL),(_binary '�\�+RB\�\�\���7�1�',1,1,202111,'PCIMA2',2,'2021-11-11 10:34:11',_binary '�\���B\�\�\���7�1�','PCIMA - 1 Carton of F-75 (01ZXQYK32DMH)',401,60.1200,0.0000,60.1200,0.0000,2,NULL,_binary ')��H�A&��\�Y2�',NULL,14,1,NULL,'2021-11-11 09:37:32',NULL),(_binary '�\�k:B\�\�\���7�1�',1,1,202111,'PCIMA2',2,'2021-11-11 10:34:11',_binary '�\���B\�\�\���7�1�','PCIMA - 1 Carton of F-75 (01SHEUO7TPBT)',401,60.1200,0.0000,60.1200,0.0000,2,NULL,_binary ')��H�A&��\�Y2�',NULL,14,1,NULL,'2021-11-11 09:37:32',NULL),(_binary '�\�m�B\�\�\���7�1�',1,1,202111,'PCIMA2',2,'2021-11-11 10:34:11',_binary '�\���B\�\�\���7�1�','PCIMA - 1 Carton of F-75 (01OOB45O2TF4)',401,60.1200,0.0000,60.1200,0.0000,2,NULL,_binary ')��H�A&��\�Y2�',NULL,14,1,NULL,'2021-11-11 09:37:32',NULL),(_binary '�\�o�B\�\�\���7�1�',1,1,202111,'PCIMA2',2,'2021-11-11 10:34:11',_binary '�\���B\�\�\���7�1�','PCIMA - 1 Carton of F-75 (01NURKRYYJHA)',401,60.1200,0.0000,60.1200,0.0000,2,NULL,_binary ')��H�A&��\�Y2�',NULL,14,1,NULL,'2021-11-11 09:37:32',NULL),(_binary '�\�q�B\�\�\���7�1�',1,1,202111,'PCIMA2',2,'2021-11-11 10:34:11',_binary '�\���B\�\�\���7�1�','PCIMA - 1 Carton of F-75 (01UDYX69ML7S)',401,60.1200,0.0000,60.1200,0.0000,2,NULL,_binary ')��H�A&��\�Y2�',NULL,14,1,NULL,'2021-11-11 09:37:32',NULL),(_binary '�\�v�B\�\�\���7�1�',1,1,202111,'PCIMA2',2,'2021-11-11 10:34:11',_binary '�\���B\�\�\���7�1�','Entrée de stock par intégration',751,0.0000,300.6000,0.0000,300.6000,2,NULL,_binary ')��H�A&��\�Y2�',NULL,14,1,NULL,'2021-11-11 09:37:32',NULL);
/*!40000 ALTER TABLE `posting_journal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_list`
--

DROP TABLE IF EXISTS `price_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_list` (
  `uuid` binary(16) NOT NULL,
  `enterprise_id` smallint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `prices_1` (`label`),
  KEY `enterprise_id` (`enterprise_id`),
  CONSTRAINT `price_list__enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_list`
--

LOCK TABLES `price_list` WRITE;
/*!40000 ALTER TABLE `price_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `price_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_list_item`
--

DROP TABLE IF EXISTS `price_list_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_list_item` (
  `uuid` binary(16) NOT NULL,
  `inventory_uuid` binary(16) NOT NULL,
  `price_list_uuid` binary(16) NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_percentage` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `price_list_item_2` (`price_list_uuid`,`inventory_uuid`),
  KEY `price_list_uuid` (`price_list_uuid`),
  KEY `inventory_uuid` (`inventory_uuid`),
  CONSTRAINT `price_list_item__inventory` FOREIGN KEY (`inventory_uuid`) REFERENCES `inventory` (`uuid`) ON DELETE CASCADE,
  CONSTRAINT `price_list_item__price_list` FOREIGN KEY (`price_list_uuid`) REFERENCES `price_list` (`uuid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_list_item`
--

LOCK TABLES `price_list_item` WRITE;
/*!40000 ALTER TABLE `price_list_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `price_list_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbr` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enterprise_id` smallint unsigned NOT NULL,
  `zs_id` int DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_1` (`name`),
  UNIQUE KEY `project_2` (`abbr`),
  KEY `enterprise_id` (`enterprise_id`),
  CONSTRAINT `project__enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'PCIMA','PCIMA',1,NULL,0);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_permission`
--

DROP TABLE IF EXISTS `project_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_permission` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` smallint unsigned NOT NULL,
  `project_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_permission_1` (`user_id`,`project_id`),
  KEY `user_id` (`user_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `project_permission__project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `project_permission__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_permission`
--

LOCK TABLES `project_permission` WRITE;
/*!40000 ALTER TABLE `project_permission` DISABLE KEYS */;
INSERT INTO `project_permission` VALUES (1,1,1),(2,2,1);
/*!40000 ALTER TABLE `project_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `province` (
  `uuid` binary(16) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_uuid` binary(16) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `country_uuid` (`country_uuid`),
  CONSTRAINT `province__country` FOREIGN KEY (`country_uuid`) REFERENCES `country` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (_binary '�\�B>J\�U\�H:�ޣ','Bas-Uele',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�CO>J\�U\�H:�ޣ','Équateur',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�C�>J\�U\�H:�ޣ','Haut-Katanga',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�D�>J\�U\�H:�ޣ','Haut-Lomami',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�E >J\�U\�H:�ޣ','Ituri',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�E�>J\�U\�H:�ޣ','Kasaï',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�F#>J\�U\�H:�ޣ','Kasaï-Central',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�F�>J\�U\�H:�ޣ','Kasaï-Oriental',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�G�>J\�U\�H:�ޣ','Kongo-Centra',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�H>J\�U\�H:�ޣ','Kwango',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�H�>J\�U\�H:�ޣ','Kwilu',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�I/>J\�U\�H:�ޣ','Lomami',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�I�>J\�U\�H:�ޣ','Lualaba',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�J4>J\�U\�H:�ޣ','Mai-Ndombe',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�J�>J\�U\�H:�ޣ','Maniema',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�K3>J\�U\�H:�ޣ','Mongala',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�K�>J\�U\�H:�ޣ','Nord-Kivu',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�L,>J\�U\�H:�ޣ','Nord-Ubangi',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�L�>J\�U\�H:�ޣ','Sankuru',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�M#>J\�U\�H:�ޣ','Sud-Kivu',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�M�>J\�U\�H:�ޣ','Sud-Ubangi',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�N>J\�U\�H:�ޣ','Tanganyika',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�N�>J\�U\�H:�ޣ','Tshopo',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '�\�O>J\�U\�H:�ޣ','Tshuapa',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_'),(_binary '\��ti~XE˸|\���>\�\�','Kinshasa',_binary '\�\�0�\\\�H0�0\�\0\�\�\Z_');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `uuid` binary(16) NOT NULL,
  `project_id` smallint unsigned NOT NULL,
  `reference` int unsigned NOT NULL DEFAULT '0',
  `cost` decimal(19,8) unsigned NOT NULL DEFAULT '0.00000000',
  `shipping_handling` decimal(19,8) unsigned NOT NULL DEFAULT '0.00000000',
  `currency_id` tinyint unsigned NOT NULL,
  `supplier_uuid` binary(16) DEFAULT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_id` smallint unsigned NOT NULL,
  `payment_method` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `edited` tinyint(1) NOT NULL DEFAULT '0',
  `status_id` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `purchase_1` (`project_id`,`reference`),
  KEY `project_id` (`project_id`),
  KEY `reference` (`reference`),
  KEY `supplier_uuid` (`supplier_uuid`),
  KEY `user_id` (`user_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `purchase__project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `purchase__status` FOREIGN KEY (`status_id`) REFERENCES `purchase_status` (`id`),
  CONSTRAINT `purchase__supplier` FOREIGN KEY (`supplier_uuid`) REFERENCES `supplier` (`uuid`),
  CONSTRAINT `purchase__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `purchase_reference` BEFORE INSERT ON `purchase` FOR EACH ROW SET NEW.reference = (SELECT IF(NEW.reference, NEW.reference, IFNULL(MAX(purchase.reference) + 1, 1)) FROM purchase WHERE purchase.project_id = new.project_id) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `purchase_document_map` AFTER INSERT ON `purchase` FOR EACH ROW BEGIN
  INSERT INTO document_map
    SELECT new.uuid, CONCAT_WS('.', 'PO', project.abbr, new.reference) FROM project WHERE project.id = new.project_id ON DUPLICATE KEY UPDATE text=text;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `purchase_item`
--

DROP TABLE IF EXISTS `purchase_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_item` (
  `uuid` binary(16) NOT NULL,
  `purchase_uuid` binary(16) NOT NULL,
  `inventory_uuid` binary(16) NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `unit_price` decimal(19,8) unsigned NOT NULL DEFAULT '0.00000000',
  `total` decimal(19,8) unsigned DEFAULT '0.00000000',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `purchase_item_1` (`purchase_uuid`,`inventory_uuid`),
  KEY `purchase_uuid` (`purchase_uuid`),
  KEY `inventory_uuid` (`inventory_uuid`),
  CONSTRAINT `purchase_item__inventory` FOREIGN KEY (`inventory_uuid`) REFERENCES `inventory` (`uuid`),
  CONSTRAINT `purchase_item__purchase` FOREIGN KEY (`purchase_uuid`) REFERENCES `purchase` (`uuid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_item`
--

LOCK TABLES `purchase_item` WRITE;
/*!40000 ALTER TABLE `purchase_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_status`
--

DROP TABLE IF EXISTS `purchase_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_status` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `purchase_status` (`id`,`text`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_status`
--

LOCK TABLES `purchase_status` WRITE;
/*!40000 ALTER TABLE `purchase_status` DISABLE KEYS */;
INSERT INTO `purchase_status` VALUES (1,'PURCHASES.STATUS.WAITING_CONFIRMATION'),(2,'PURCHASES.STATUS.CONFIRMED'),(3,'PURCHASES.STATUS.RECEIVED'),(4,'PURCHASES.STATUS.PARTIALLY_RECEIVED'),(5,'PURCHASES.STATUS.CANCELLED'),(6,'PURCHASES.STATUS.EXCESSIVE_RECEIVED_QUANTITY');
/*!40000 ALTER TABLE `purchase_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference`
--

DROP TABLE IF EXISTS `reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reference` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `is_report` tinyint(1) DEFAULT NULL,
  `ref` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `position` int unsigned DEFAULT NULL,
  `reference_group_id` tinyint unsigned DEFAULT NULL,
  `section_resultat_id` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference`
--

LOCK TABLES `reference` WRITE;
/*!40000 ALTER TABLE `reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_cost_center`
--

DROP TABLE IF EXISTS `reference_cost_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reference_cost_center` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `cost_center_id` mediumint unsigned NOT NULL,
  `account_reference_id` mediumint unsigned NOT NULL,
  `is_cost` tinyint unsigned DEFAULT '0',
  `is_variable` tinyint unsigned DEFAULT '0',
  `is_turnover` tinyint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `reference_cost_center_1` (`account_reference_id`),
  KEY `cost_center_id` (`cost_center_id`),
  KEY `account_reference_id` (`account_reference_id`),
  CONSTRAINT `reference_cost_center__account_ref` FOREIGN KEY (`account_reference_id`) REFERENCES `account_reference` (`id`),
  CONSTRAINT `reference_cost_center__cost_center` FOREIGN KEY (`cost_center_id`) REFERENCES `cost_center` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_cost_center`
--

LOCK TABLES `reference_cost_center` WRITE;
/*!40000 ALTER TABLE `reference_cost_center` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_cost_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_group`
--

DROP TABLE IF EXISTS `reference_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reference_group` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `reference_group` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `position` int unsigned DEFAULT NULL,
  `section_bilan_id` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `section_bilan_id` (`section_bilan_id`),
  CONSTRAINT `reference_group__section_bilan` FOREIGN KEY (`section_bilan_id`) REFERENCES `section_bilan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_group`
--

LOCK TABLES `reference_group` WRITE;
/*!40000 ALTER TABLE `reference_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `report_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,'cashflow','TREE.CASHFLOW'),(2,'accounts_chart','REPORT.CHART_OF_ACCOUNTS'),(3,'income_expense','REPORT.PROFIT_AND_LOSS'),(4,'balance_report','REPORT.BALANCE'),(5,'aged_debtors','TREE.AGED_DEBTORS'),(6,'account_report','REPORT.REPORT_ACCOUNTS.TITLE'),(7,'cashflow_by_service','TREE.CASHFLOW_BY_SERVICE'),(8,'open_debtors','REPORT.OPEN_DEBTORS.TITLE'),(9,'aged_creditors','TREE.AGED_CREDITORS'),(10,'balance_sheet_report','REPORT.BALANCE_SHEET.TITLE'),(11,'cash_report','REPORT.CASH_REPORT.TITLE'),(12,'inventory_report','REPORT.STOCK.TITLE'),(13,'stock_sheet','REPORT.STOCK.INVENTORY_REPORT'),(14,'operating','TREE.OPERATING_ACCOUNT'),(15,'stock_exit','REPORT.STOCK.EXIT_REPORT'),(16,'annual_clients_report','REPORT.CLIENTS.TITLE'),(17,'employee_standing','REPORT.EMPLOYEE_STANDING.TITLE'),(18,'patient_standing','REPORT.PATIENT_STANDING.TITLE'),(19,'ohada_balance_sheet_report','REPORT.OHADA.BALANCE_SHEET'),(20,'account_reference','REPORT.ACCOUNT_REFERENCE.TITLE'),(21,'account_report_multiple','REPORT.REPORT_ACCOUNTS_MULTIPLE.TITLE'),(22,'unpaid_invoice_payments','REPORT.UNPAID_INVOICE_PAYMENTS_REPORT.TITLE'),(23,'income_expense_by_month','REPORT.PROFIT_AND_LOSS_BY_MONTH'),(24,'stock_value','TREE.STOCK_VALUE'),(25,'ohada_profit_loss','TREE.OHADA_RESULT_ACCOUNT'),(26,'income_expense_by_year','REPORT.PROFIT_AND_LOSS_BY_YEAR'),(27,'cost_center','REPORT.COST_CENTER.TITLE'),(28,'break_even','TREE.BREAK_EVEN_REPORT'),(29,'break_even_cost_center','TREE.BREAK_EVEN_COST_CENTER_REPORT'),(30,'indicators_report','TREE.INDICATORS_REPORT'),(31,'visit_report','PATIENT_RECORDS.REPORT.VISITS'),(32,'stock_entry','REPORT.STOCK.ENTRY_REPORT'),(33,'monthly_balance','REPORT.MONTHLY_BALANCE.TITLE'),(34,'debtor_summary','REPORT.DEBTOR_SUMMARY.TITLE'),(35,'client_debts','REPORT.CLIENT_SUMMARY.TITLE'),(36,'client_support','REPORT.CLIENT_SUPPORT.TITLE'),(37,'analysis_auxiliary_cashboxes','REPORT.ANALYSIS_AUX_CASHBOXES.TITLE'),(38,'realized_profit','REPORT.REALIZED_PROFIT.TITLE'),(39,'recovery_capacity','REPORT.RECOVERY_CAPACITY.TITLE'),(40,'system_usage_stat','REPORT.SYSTEM_USAGE_STAT.TITLE'),(41,'data_kit','TREE.DATA_KIT_REPORT'),(42,'configurable_analysis_report','REPORT.CONFIGURABLE_ANALYSIS_REPORT.TITLE'),(43,'purchase_order_analysis','REPORT.PURCHASE_ORDER_ANALYSIS.TITLE'),(44,'inventory_changes','REPORT.INVENTORY_CHANGE.TITLE'),(45,'monthly_consumption_report','REPORT.MONTHLY_CONSUMPTION.TITLE'),(46,'stock_consumption_graph_report','REPORT.STOCK_CONSUMPTION_GRAPH_REPORT.TITLE'),(47,'invoiced_received_stock','REPORT.COMPARE_INVOICED_RECEIVED.TITLE'),(48,'invoiceRegistryReport','Invoice Registry as report'),(49,'stock_movement_report','REPORT.STOCK_MOVEMENT_REPORT.TITLE'),(50,'stock_expiration_report','REPORT.STOCK_EXPIRATION_REPORT.TITLE'),(51,'stock_changes','REPORT.STOCK_CHANGES.TITLE'),(52,'aggregated_stock_consumption','REPORT.AGGREGATED_STOCK_CONSUMPTION.TITLE'),(53,'rumer_report','REPORT.RUMER.TITLE'),(54,'purchase_prices','REPORT.PURCHASE_PRICES.TITLE'),(55,'cost_center_step_down','TREE.COST_CENTER_STEPDOWN'),(56,'lost_stock_report','TREE.LOST_STOCK_REPORT'),(57,'cost_center_accounts','TREE.COST_CENTER_ACCOUNTS_REPORT'),(58,'cost_center_income_and_expense','TREE.COST_CENTER_INCOME_EXPENSE_REPORT');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `uuid` binary(16) NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (_binary 'O�\��\�\�FP�\�\0���׵','Depot Manager'),(_binary '\�IN\�>K\�U\�H:�ޣ','Administrateur');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_actions`
--

DROP TABLE IF EXISTS `role_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_actions` (
  `uuid` binary(16) NOT NULL,
  `role_uuid` binary(16) NOT NULL,
  `actions_id` int unsigned NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `role_actions__action` (`actions_id`),
  KEY `role_actions__role` (`role_uuid`),
  CONSTRAINT `role_actions__action` FOREIGN KEY (`actions_id`) REFERENCES `actions` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `role_actions__role` FOREIGN KEY (`role_uuid`) REFERENCES `role` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_actions`
--

LOCK TABLES `role_actions` WRITE;
/*!40000 ALTER TABLE `role_actions` DISABLE KEYS */;
INSERT INTO `role_actions` VALUES (_binary '\�J�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',1),(_binary '\�J	>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',2),(_binary '\�J	\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',3),(_binary '\�J\n�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',4),(_binary '\�JO>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',5),(_binary '\�J\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',6),(_binary '\�J�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',7),(_binary '\�J\r(>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',8);
/*!40000 ALTER TABLE `role_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_unit`
--

DROP TABLE IF EXISTS `role_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_unit` (
  `uuid` binary(16) NOT NULL,
  `role_uuid` binary(16) NOT NULL,
  `unit_id` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `role_unit__role` (`role_uuid`),
  KEY `role_unit__unit` (`unit_id`),
  CONSTRAINT `role_unit__role` FOREIGN KEY (`role_uuid`) REFERENCES `role` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_unit__unit` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_unit`
--

LOCK TABLES `role_unit` WRITE;
/*!40000 ALTER TABLE `role_unit` DISABLE KEYS */;
INSERT INTO `role_unit` VALUES (_binary '\�C9t\�@\����\�',_binary 'O�\��\�\�FP�\�\0���׵',160),(_binary '	�g�\�jF\�>	��\�',_binary 'O�\��\�\�FP�\�\0���׵',292),(_binary 'i[�\r�O\n�9�\���i',_binary 'O�\��\�\�FP�\�\0���׵',282),(_binary '�+\�\�D��\�16�FT',_binary 'O�\��\�\�FP�\�\0���׵',304),(_binary '.N��L~M���K��\�',_binary 'O�\��\�\�FP�\�\0���׵',182),(_binary 'L[0\�\�\�F?��O\�v�]',_binary 'O�\��\�\�FP�\�\0���׵',197),(_binary 'Nlu�BE��;��\�/�5',_binary 'O�\��\�\�FP�\�\0���׵',213),(_binary 'R�d{�S@���\�\�CQ�\�',_binary 'O�\��\�\�FP�\�\0���׵',267),(_binary 'dQ\�c�/H`��w+\\\�',_binary 'O�\��\�\�FP�\�\0���׵',164),(_binary '��l\�H\ZL��V:�;�G>',_binary 'O�\��\�\�FP�\�\0���׵',294),(_binary '��܂�Jɠ�g\�\��\��',_binary 'O�\��\�\�FP�\�\0���׵',288),(_binary '��\����G!�\\P?:\��',_binary 'O�\��\�\�FP�\�\0���׵',240),(_binary '\�K�EEHO\�\�`T:�\�\�',_binary 'O�\��\�\�FP�\�\0���׵',165),(_binary '\�IiC>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',206),(_binary '\�Ij\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',214),(_binary '\�Ik�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',290),(_binary '\�Ila>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',292),(_binary '\�Im>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',268),(_binary '\�Im�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',291),(_binary '\�InP>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',289),(_binary '\�In\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',288),(_binary '\�Io�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',240),(_binary '\�Iq>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',6),(_binary '\�Iq�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',191),(_binary '\�Ir\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',205),(_binary '\�ItP>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',207),(_binary '\�It�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',226),(_binary '\�Iu�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',152),(_binary '\�Iv9>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',170),(_binary '\�Iwg>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',209),(_binary '\�Ix\0>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',1),(_binary '\�Iyu>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',168),(_binary '\�Iz>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',151),(_binary '\�Iz\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',296),(_binary '\�I{\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',293),(_binary '\�I}U>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',299),(_binary '\�I}�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',248),(_binary '\�I~�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',199),(_binary '\�I\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',150),(_binary '\�I�]>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',147),(_binary '\�I�V>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',149),(_binary '\�I�\n>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',18),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',105),(_binary '\�I�N>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',145),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',304),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',259),(_binary '\�I�0>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',246),(_binary '\�I�a>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',247),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',270),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',137),(_binary '\�I�&>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',264),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',263),(_binary '\�I�R>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',298),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',302),(_binary '\�I�|>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',303),(_binary '\�I�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',146),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',233),(_binary '\�I�<>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',254),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',258),(_binary '\�I�f>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',257),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',261),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',284),(_binary '\�I�%>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',107),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',245),(_binary '\�I�Q>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',20),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',256),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',294),(_binary '\�I�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',61),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',62),(_binary '\�I�H>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',201),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',203),(_binary '\�I�s>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',2),(_binary '\�I�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',241),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',243),(_binary '\�I�9>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',242),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',204),(_binary '\�I�w>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',219),(_binary '\�I�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',218),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',286),(_binary '\�I�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',255),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',5),(_binary '\�I�^>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',281),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',237),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',13),(_binary '\�I�;>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',10),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',183),(_binary '\�I�z>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',186),(_binary '\�I�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',12),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',280),(_binary '\�I�^>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',235),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',283),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',57),(_binary '\�I�<>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',236),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',208),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',251),(_binary '\�I�(>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',234),(_binary '\�I�]>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',238),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',269),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',266),(_binary '\�I�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',140),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',138),(_binary '\�I�u>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',139),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',287),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',3),(_binary '\�I�<>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',135),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',189),(_binary '\�I�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',184),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',297),(_binary '\�I�G>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',26),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',300),(_binary '\�I�^>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',244),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',267),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',200),(_binary '\�I�F>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',253),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',187),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',157),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',192),(_binary '\�I�7>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',29),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',16),(_binary '\�I�|>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',14),(_binary '\�I�!>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',15),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',202),(_binary '\�I�g>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',194),(_binary '\�I�\n>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',190),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',185),(_binary '\�I�P>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',9),(_binary '\�I�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',21),(_binary '\�I��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',211),(_binary '\�I\�+>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',216),(_binary '\�I\�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',180),(_binary '\�I\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',155),(_binary '\�IŦ>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',154),(_binary '\�I\�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',265),(_binary '\�Iȷ>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',301),(_binary '\�Iɵ>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',156),(_binary '\�Iʺ>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',285),(_binary '\�I\�w>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',249),(_binary '\�I\�\">K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',271),(_binary '\�I\��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',19),(_binary '\�I\�d>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',153),(_binary '\�I\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',195),(_binary '\�Iΰ>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',0),(_binary '\�I\�g>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',295),(_binary '\�I\�\r>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',48),(_binary '\�I\�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',134),(_binary '\�I\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',252),(_binary '\�Iҫ>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',160),(_binary '\�I\�X>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',167),(_binary '\�I\��>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',225),(_binary '\�Iԟ>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',165),(_binary '\�I\�8>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',164),(_binary '\�I\�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',197),(_binary '\�I\�t>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',163),(_binary '\�I\�\r>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',161),(_binary '\�Iר>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',162),(_binary '\�I\�B>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',181),(_binary '\�I\�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',282),(_binary '\�Iف>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',262),(_binary '\�I\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',182),(_binary '\�Iڹ>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',213),(_binary '\�I\�Y>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',82),(_binary '\�I\�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',260),(_binary '\�Iܒ>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',250),(_binary '\�I\�2>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',217),(_binary '\�I\�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',188),(_binary '\�I\�l>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',143),(_binary '\�I\�	>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',210),(_binary '\�Iߩ>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',4),(_binary '\�I\�M>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',229),(_binary '\�I\�\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',239),(_binary '\�I\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',141),(_binary '\�I\�!>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',228),(_binary '\�I\�>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',227),(_binary '\�I\�[>K\�U\�H:�ޣ',_binary '\�IN\�>K\�U\�H:�ޣ',193),(_binary '\�((��D��_ڛ�\�`',_binary 'O�\��\�\�FP�\�\0���׵',269),(_binary '\��s\�B���m\�\�\�\��',_binary 'O�\��\�\�FP�\�\0���׵',289),(_binary '\�1\��G���\��!�',_binary 'O�\��\�\�FP�\�\0���׵',162),(_binary '\�\��J�B\���\�\�;\�',_binary 'O�\��\�\�FP�\�\0���׵',161),(_binary '\�N��/I������$\�\�',_binary 'O�\��\�\�FP�\�\0���׵',181),(_binary '�m���\�Gc����P7�',_binary 'O�\��\�\�FP�\�\0���׵',268),(_binary '���f\�-K��\�\�yHU\�\�',_binary 'O�\��\�\�FP�\�\0���׵',163);
/*!40000 ALTER TABLE `role_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `uuid` binary(16) NOT NULL,
  `label` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `ward_uuid` binary(16) NOT NULL,
  `room_type_id` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `room_label_0` (`label`,`ward_uuid`),
  KEY `room__ward` (`ward_uuid`),
  KEY `room__room_type` (`room_type_id`),
  CONSTRAINT `room__room_type` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`id`),
  CONSTRAINT `room__ward` FOREIGN KEY (`ward_uuid`) REFERENCES `ward` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_type` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubric_paiement`
--

DROP TABLE IF EXISTS `rubric_paiement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rubric_paiement` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `paiement_uuid` binary(16) NOT NULL,
  `rubric_payroll_id` int unsigned NOT NULL,
  `value` float DEFAULT '0',
  `posted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rubric_paiement_1` (`paiement_uuid`,`rubric_payroll_id`),
  KEY `paiement_uuid` (`paiement_uuid`),
  KEY `rubric_payroll_id` (`rubric_payroll_id`),
  CONSTRAINT `rubric_paiement__paiement` FOREIGN KEY (`paiement_uuid`) REFERENCES `paiement` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rubric_paiement__rubric_payroll` FOREIGN KEY (`rubric_payroll_id`) REFERENCES `rubric_payroll` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubric_paiement`
--

LOCK TABLES `rubric_paiement` WRITE;
/*!40000 ALTER TABLE `rubric_paiement` DISABLE KEYS */;
/*!40000 ALTER TABLE `rubric_paiement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubric_payroll`
--

DROP TABLE IF EXISTS `rubric_payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rubric_payroll` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_employee` tinyint(1) DEFAULT '0',
  `is_percent` tinyint(1) DEFAULT '0',
  `is_discount` tinyint(1) DEFAULT '0',
  `is_tax` tinyint(1) DEFAULT '0',
  `is_social_care` tinyint(1) DEFAULT '0',
  `is_defined_employee` tinyint(1) DEFAULT '0',
  `is_membership_fee` tinyint(1) DEFAULT '0',
  `debtor_account_id` int unsigned DEFAULT NULL,
  `expense_account_id` int unsigned DEFAULT NULL,
  `is_ipr` tinyint(1) DEFAULT '0',
  `is_associated_employee` tinyint(1) DEFAULT '0',
  `is_seniority_bonus` tinyint(1) DEFAULT '0',
  `is_family_allowances` tinyint(1) DEFAULT '0',
  `is_monetary_value` tinyint(1) DEFAULT '1',
  `position` tinyint(1) DEFAULT '0',
  `is_indice` tinyint(1) DEFAULT '0',
  `indice_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indice_to_grap` tinyint(1) DEFAULT '0',
  `value` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rubric_payroll_1` (`label`),
  UNIQUE KEY `rubric_payroll_2` (`abbr`),
  KEY `debtor_account_id` (`debtor_account_id`),
  KEY `expense_account_id` (`expense_account_id`),
  CONSTRAINT `rubric_payroll__debtor_account` FOREIGN KEY (`debtor_account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `rubric_payroll__expense_account` FOREIGN KEY (`expense_account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubric_payroll`
--

LOCK TABLES `rubric_payroll` WRITE;
/*!40000 ALTER TABLE `rubric_payroll` DISABLE KEYS */;
/*!40000 ALTER TABLE `rubric_payroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubric_payroll_item`
--

DROP TABLE IF EXISTS `rubric_payroll_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rubric_payroll_item` (
  `uuid` binary(16) NOT NULL,
  `rubric_payroll_id` int unsigned NOT NULL,
  `item_id` int unsigned NOT NULL,
  UNIQUE KEY `uniq_item` (`rubric_payroll_id`,`item_id`),
  KEY `rubric_pay_item__rubric_pay2` (`item_id`),
  CONSTRAINT `rubric_pay_item__rubric_pay1` FOREIGN KEY (`rubric_payroll_id`) REFERENCES `rubric_payroll` (`id`),
  CONSTRAINT `rubric_pay_item__rubric_pay2` FOREIGN KEY (`item_id`) REFERENCES `rubric_payroll` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubric_payroll_item`
--

LOCK TABLES `rubric_payroll_item` WRITE;
/*!40000 ALTER TABLE `rubric_payroll_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `rubric_payroll_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_report`
--

DROP TABLE IF EXISTS `saved_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saved_report` (
  `uuid` binary(16) NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_id` tinyint unsigned NOT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `user_id` (`user_id`),
  KEY `report_id` (`report_id`),
  CONSTRAINT `saved_report__report` FOREIGN KEY (`report_id`) REFERENCES `report` (`id`),
  CONSTRAINT `saved_report__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_report`
--

LOCK TABLES `saved_report` WRITE;
/*!40000 ALTER TABLE `saved_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_bilan`
--

DROP TABLE IF EXISTS `section_bilan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_bilan` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8mb4_unicode_ci,
  `is_actif` tinyint(1) DEFAULT NULL,
  `position` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_bilan`
--

LOCK TABLES `section_bilan` WRITE;
/*!40000 ALTER TABLE `section_bilan` DISABLE KEYS */;
/*!40000 ALTER TABLE `section_bilan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_resultat`
--

DROP TABLE IF EXISTS `section_resultat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_resultat` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8mb4_unicode_ci,
  `position` int unsigned DEFAULT NULL,
  `is_charge` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_resultat`
--

LOCK TABLES `section_resultat` WRITE;
/*!40000 ALTER TABLE `section_resultat` DISABLE KEYS */;
/*!40000 ALTER TABLE `section_resultat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sector` (
  `uuid` binary(16) NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_uuid` binary(16) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `province_id` (`province_uuid`),
  CONSTRAINT `sector__province` FOREIGN KEY (`province_uuid`) REFERENCES `province` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (_binary '\�\�\�\�O ��m\��14P','Lukunga',_binary '\��ti~XE˸|\���>\�\�');
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `uuid` binary(16) NOT NULL,
  `enterprise_id` smallint unsigned NOT NULL,
  `project_id` smallint unsigned NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hidden` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `service_1` (`name`),
  KEY `enterprise_id` (`enterprise_id`),
  CONSTRAINT `service__enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_cost_center`
--

DROP TABLE IF EXISTS `service_cost_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_cost_center` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `cost_center_id` mediumint unsigned NOT NULL,
  `service_uuid` binary(16) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `service_cost_center_1` (`service_uuid`),
  KEY `cost_center_id` (`cost_center_id`),
  KEY `service_uuid` (`service_uuid`),
  CONSTRAINT `service_cost_center__cost_center` FOREIGN KEY (`cost_center_id`) REFERENCES `cost_center` (`id`) ON DELETE CASCADE,
  CONSTRAINT `service_cost_center__service` FOREIGN KEY (`service_uuid`) REFERENCES `service` (`uuid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_cost_center`
--

LOCK TABLES `service_cost_center` WRITE;
/*!40000 ALTER TABLE `service_cost_center` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_cost_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_indicator`
--

DROP TABLE IF EXISTS `staff_indicator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_indicator` (
  `uuid` binary(16) NOT NULL,
  `total_doctors` int DEFAULT '0',
  `total_nurses` int DEFAULT '0',
  `total_caregivers` int DEFAULT '0',
  `total_staff` int DEFAULT '0',
  `total_external_visit` int DEFAULT '0',
  `total_visit` int DEFAULT '0',
  `total_surgery_by_doctor` int DEFAULT '0',
  `total_day_realized` int DEFAULT '0',
  `total_hospitalized_patient` int DEFAULT '0',
  `indicator_uuid` binary(16) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `staff_indicator__indicator` (`indicator_uuid`),
  CONSTRAINT `staff_indicator__indicator` FOREIGN KEY (`indicator_uuid`) REFERENCES `indicator` (`uuid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_indicator`
--

LOCK TABLES `staff_indicator` WRITE;
/*!40000 ALTER TABLE `staff_indicator` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_indicator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffing_function_indice`
--

DROP TABLE IF EXISTS `staffing_function_indice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffing_function_indice` (
  `uuid` binary(16) NOT NULL,
  `value` decimal(19,4) NOT NULL,
  `fonction_id` tinyint unsigned NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `fonction_id_uniq` (`fonction_id`),
  CONSTRAINT `staffing_function_indice__fct` FOREIGN KEY (`fonction_id`) REFERENCES `fonction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffing_function_indice`
--

LOCK TABLES `staffing_function_indice` WRITE;
/*!40000 ALTER TABLE `staffing_function_indice` DISABLE KEYS */;
INSERT INTO `staffing_function_indice` VALUES (_binary '�\�nJ{YH\�,���\�\�',60.0000,1),(_binary '�\�!>J\�U\�H:�ޣ',125.0000,2);
/*!40000 ALTER TABLE `staffing_function_indice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffing_grade_indice`
--

DROP TABLE IF EXISTS `staffing_grade_indice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffing_grade_indice` (
  `uuid` binary(16) NOT NULL,
  `value` decimal(19,4) NOT NULL,
  `grade_uuid` binary(16) NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `grade_uuid_uniq` (`grade_uuid`),
  CONSTRAINT `staffing_grade_indice__grade` FOREIGN KEY (`grade_uuid`) REFERENCES `grade` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffing_grade_indice`
--

LOCK TABLES `staffing_grade_indice` WRITE;
/*!40000 ALTER TABLE `staffing_grade_indice` DISABLE KEYS */;
/*!40000 ALTER TABLE `staffing_grade_indice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffing_indice`
--

DROP TABLE IF EXISTS `staffing_indice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffing_indice` (
  `uuid` binary(16) NOT NULL,
  `employee_uuid` binary(16) NOT NULL,
  `grade_uuid` binary(16) NOT NULL,
  `fonction_id` tinyint unsigned DEFAULT NULL,
  `grade_indice` decimal(19,4) NOT NULL,
  `function_indice` decimal(19,4) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `staffing_indice__employee` (`employee_uuid`),
  KEY `staffing_indice__fonction` (`fonction_id`),
  KEY `staffing_indice__grade` (`grade_uuid`),
  CONSTRAINT `staffing_indice__employee` FOREIGN KEY (`employee_uuid`) REFERENCES `employee` (`uuid`),
  CONSTRAINT `staffing_indice__fonction` FOREIGN KEY (`fonction_id`) REFERENCES `fonction` (`id`),
  CONSTRAINT `staffing_indice__grade` FOREIGN KEY (`grade_uuid`) REFERENCES `grade` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffing_indice`
--

LOCK TABLES `staffing_indice` WRITE;
/*!40000 ALTER TABLE `staffing_indice` DISABLE KEYS */;
/*!40000 ALTER TABLE `staffing_indice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffing_indice_parameters`
--

DROP TABLE IF EXISTS `staffing_indice_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffing_indice_parameters` (
  `uuid` binary(16) NOT NULL,
  `pay_envelope` decimal(19,4) NOT NULL,
  `working_days` tinyint unsigned NOT NULL,
  `payroll_configuration_id` int unsigned NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `payroll_config_id` (`payroll_configuration_id`),
  CONSTRAINT `staffing_indice_param__payrall_config` FOREIGN KEY (`payroll_configuration_id`) REFERENCES `payroll_configuration` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffing_indice_parameters`
--

LOCK TABLES `staffing_indice_parameters` WRITE;
/*!40000 ALTER TABLE `staffing_indice_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `staffing_indice_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stage_payment_indice`
--

DROP TABLE IF EXISTS `stage_payment_indice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stage_payment_indice` (
  `uuid` binary(16) NOT NULL,
  `employee_uuid` binary(16) NOT NULL,
  `payroll_configuration_id` int unsigned NOT NULL,
  `currency_id` tinyint unsigned DEFAULT NULL,
  `rubric_id` int unsigned NOT NULL,
  `rubric_value` decimal(19,4) NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `paiement_1` (`employee_uuid`,`rubric_id`,`payroll_configuration_id`),
  KEY `employee_uuid` (`employee_uuid`),
  KEY `payroll_configuration_id` (`payroll_configuration_id`),
  KEY `currency_id` (`currency_id`),
  KEY `stage_pay_indice__rubric` (`rubric_id`),
  CONSTRAINT `stage_pay_indice__currency` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  CONSTRAINT `stage_pay_indice__employee` FOREIGN KEY (`employee_uuid`) REFERENCES `employee` (`uuid`),
  CONSTRAINT `stage_pay_indice__payroll_config` FOREIGN KEY (`payroll_configuration_id`) REFERENCES `payroll_configuration` (`id`),
  CONSTRAINT `stage_pay_indice__rubric` FOREIGN KEY (`rubric_id`) REFERENCES `rubric_payroll` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage_payment_indice`
--

LOCK TABLES `stage_payment_indice` WRITE;
/*!40000 ALTER TABLE `stage_payment_indice` DISABLE KEYS */;
/*!40000 ALTER TABLE `stage_payment_indice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `status_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_style` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'in_progress','FORM.LABELS.STATUS_TYPE.IN_PROGRESS','label label-default'),(2,'done','FORM.LABELS.STATUS_TYPE.DONE','label label-primary'),(3,'partially','FORM.LABELS.STATUS_TYPE.PARTIALLY','label label-warning'),(4,'draft','FORM.LABELS.STATUS_TYPE.DRAFT','label label-info'),(5,'cancelled','FORM.LABELS.STATUS_TYPE.CANCELLED','label label-danger'),(6,'completed','FORM.LABELS.STATUS_TYPE.COMPLETED','label label-success'),(7,'excessive','FORM.LABELS.STATUS_TYPE.EXCESSIVE_RECEIVED_QUANTITY','label label-danger');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_adjustment_log`
--

DROP TABLE IF EXISTS `stock_adjustment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_adjustment_log` (
  `movement_uuid` binary(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `old_quantity` int NOT NULL DEFAULT '0',
  `new_quantity` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`movement_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_adjustment_log`
--

LOCK TABLES `stock_adjustment_log` WRITE;
/*!40000 ALTER TABLE `stock_adjustment_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_adjustment_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_assign`
--

DROP TABLE IF EXISTS `stock_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_assign` (
  `uuid` binary(16) NOT NULL,
  `lot_uuid` binary(16) NOT NULL,
  `entity_uuid` binary(16) NOT NULL,
  `depot_uuid` binary(16) NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8mb4_unicode_ci,
  `user_id` smallint unsigned NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`),
  KEY `lot_uuid` (`lot_uuid`),
  KEY `entity_uuid` (`entity_uuid`),
  KEY `depot_uuid` (`depot_uuid`),
  CONSTRAINT `stock_assign__depot` FOREIGN KEY (`depot_uuid`) REFERENCES `depot` (`uuid`),
  CONSTRAINT `stock_assign__entity` FOREIGN KEY (`entity_uuid`) REFERENCES `entity` (`uuid`),
  CONSTRAINT `stock_assign__lot` FOREIGN KEY (`lot_uuid`) REFERENCES `lot` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_assign`
--

LOCK TABLES `stock_assign` WRITE;
/*!40000 ALTER TABLE `stock_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_movement`
--

DROP TABLE IF EXISTS `stock_movement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_movement` (
  `uuid` binary(16) NOT NULL,
  `document_uuid` binary(16) NOT NULL,
  `depot_uuid` binary(16) NOT NULL,
  `lot_uuid` binary(16) NOT NULL,
  `entity_uuid` binary(16) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `flux_id` int NOT NULL,
  `date` datetime NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `unit_cost` decimal(19,4) unsigned NOT NULL,
  `is_exit` tinyint(1) NOT NULL,
  `user_id` smallint unsigned NOT NULL,
  `reference` int unsigned NOT NULL,
  `invoice_uuid` binary(16) DEFAULT NULL,
  `stock_requisition_uuid` binary(16) DEFAULT NULL,
  `period_id` mediumint unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`),
  KEY `document_uuid` (`document_uuid`),
  KEY `depot_uuid` (`depot_uuid`),
  KEY `lot_uuid` (`lot_uuid`),
  KEY `flux_id` (`flux_id`),
  KEY `user_id` (`user_id`),
  KEY `period_id` (`period_id`),
  CONSTRAINT `stock_movement__depot` FOREIGN KEY (`depot_uuid`) REFERENCES `depot` (`uuid`),
  CONSTRAINT `stock_movement__flux` FOREIGN KEY (`flux_id`) REFERENCES `flux` (`id`),
  CONSTRAINT `stock_movement__lot` FOREIGN KEY (`lot_uuid`) REFERENCES `lot` (`uuid`),
  CONSTRAINT `stock_movement__period` FOREIGN KEY (`period_id`) REFERENCES `period` (`id`),
  CONSTRAINT `stock_movement__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_movement`
--

LOCK TABLES `stock_movement` WRITE;
/*!40000 ALTER TABLE `stock_movement` DISABLE KEYS */;
INSERT INTO `stock_movement` VALUES (_binary '\0*-O\�M���IB|��',_binary '�>�gvE&�ݫ\�yn\�',_binary '\��I;�\�B��7�1�',_binary 'D*vA �\�	�.Ԟ�',_binary '�\�\�\�<\�B��7�1�','Transfert vers un dépôt',8,'2021-11-07 21:26:38',1,38.7500,1,1,3,NULL,NULL,202111,'2021-11-07 20:28:19'),(_binary '\r\�ԍ_�M\Z�\�Bl�',_binary '8IIN=@یxF��;_',_binary '\���;�\�B��7�1�',_binary 'b�R\��N\n�#i�\�Au',_binary '_:\�#;�\�B��7�1�','Reception de stock',2,'2021-11-08 02:23:27',1,70.5900,0,1,5,NULL,NULL,202111,'2021-11-08 01:23:53'),(_binary '�G/Oљ��\0\�\�\�$',_binary '8IIN=@یxF��;_',_binary '\���;�\�B��7�1�',_binary '�>�\���I&��2�yN�{',_binary '_:\�#;�\�B��7�1�','Reception de stock',2,'2021-11-08 02:23:27',1,60.1200,0,1,5,NULL,NULL,202111,'2021-11-08 01:23:53'),(_binary '���FM̛HC����',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary '\����!<Hw�Hb\��J�',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,70.5900,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary '\Z+q`\�\�G���\�I\�\�R3',_binary ')��H�A&��\�Y2�',_binary '_:\�#;�\�B��7�1�',_binary '�9@�p\�Nu���R01@',NULL,'Entrée de stock par intégration',13,'2021-11-11 10:34:11',1,60.1200,0,1,6,NULL,NULL,202111,'2021-11-11 09:37:32'),(_binary ' ����M�w\��\��',_binary ')��H�A&��\�Y2�',_binary '_:\�#;�\�B��7�1�',_binary 'N.\rZ:H�\�\�#\�\n',NULL,'Entrée de stock par intégration',13,'2021-11-11 10:34:11',1,60.1200,0,1,6,NULL,NULL,202111,'2021-11-11 09:37:32'),(_binary '\"5\�J���ǝ���',_binary '8IIN=@یxF��;_',_binary '_:\�#;�\�B��7�1�',_binary '�>�\���I&��2�yN�{',_binary '\���;�\�B��7�1�','Transfert vers un dépôt',8,'2021-11-08 02:13:38',1,60.1200,1,1,5,NULL,NULL,202111,'2021-11-08 01:15:06'),(_binary '#���Gh@�sy�\�\��',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary 'D*vA �\�	�.Ԟ�',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,38.7500,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary '=\��Kb^B\�\�L��98�',_binary '�>�gvE&�ݫ\�yn\�',_binary '�\�\�\�<\�B��7�1�',_binary 'D*vA �\�	�.Ԟ�',_binary '\��I;�\�B��7�1�','[ODK] RECEPTION FOSA',2,'2021-11-07 21:30:00',1,38.7500,0,1,3,NULL,NULL,202111,'2021-11-07 21:39:17'),(_binary 'I$���\�E��z\�4�\�k',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary 'yG�UAEġ�N�\�\�]F',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,60.1200,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary 'M�\�֍�I\�@R\�o2��',_binary '	�E\�DI/�\�\�\�\n\�\'',_binary '\��I;�\�B��7�1�',_binary '�m\0�E\�Ḷq\�,K�7t',_binary '_:\�#;�\�B��7�1�','Reception de stock',2,'2021-11-07 21:24:51',1,38.7500,0,1,2,NULL,NULL,202111,'2021-11-07 20:25:13'),(_binary 'N%\��B~��\�`\��',_binary '8IIN=@یxF��;_',_binary '\���;�\�B��7�1�',_binary 'ɭ\0�\\D���\�;F7\�\n',_binary '_:\�#;�\�B��7�1�','Reception de stock',2,'2021-11-08 02:23:27',1,70.5900,0,1,5,NULL,NULL,202111,'2021-11-08 01:23:53'),(_binary 'X�\�\0\�Oe�\�O\��\�',_binary '	�E\�DI/�\�\�\�\n\�\'',_binary '\��I;�\�B��7�1�',_binary '�m\0�E\�Ḷq\�,K�7t',_binary '_:\�#;�\�B��7�1�','[ODK] RECEPTION FOSA',2,'2021-11-05 16:01:00',1,38.7500,0,1,4,NULL,NULL,202111,'2021-11-07 21:39:17'),(_binary 'b8�\��hI߷Ó/�R�',_binary '	�E\�DI/�\�\�\�\n\�\'',_binary '\��I;�\�B��7�1�',_binary '��V��lE�\�f\�IT�\�',_binary '_:\�#;�\�B��7�1�','Reception de stock',2,'2021-11-07 21:24:51',1,38.7500,0,1,2,NULL,NULL,202111,'2021-11-07 20:25:13'),(_binary 'd�6\�xIA�.v����\�',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary '\n/\�c\�G\r��3g7�%',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,38.7500,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary 'o�pQy@c�؇�\����',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary 'h�#�ӐO6�\�Q�&1�',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,70.5900,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary 'p�$ęmB��Ygʸ\�\�N',_binary '�>�gvE&�ݫ\�yn\�',_binary '\��I;�\�B��7�1�',_binary '�m\0�E\�Ḷq\�,K�7t',_binary '�\�\�\�<\�B��7�1�','Transfert vers un dépôt',8,'2021-11-07 21:26:38',1,38.7500,1,1,3,NULL,NULL,202111,'2021-11-07 20:28:19'),(_binary 'q���\�\�K%��1B\�I�',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary '\�kv�e�H�\�#h�T�\n',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,60.1200,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary '}\�1P�\�Hu�9\�\�?_�Q',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary '\�\��NA2�\�S�k�\�',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,38.7500,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary '�Et��@��*.둓\��',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary '�m\0�E\�Ḷq\�,K�7t',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,38.7500,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary '��/V\�G����\���',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary 'b�R\��N\n�#i�\�Au',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,70.5900,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary '��\�2Of�1�\�昪\�',_binary '�>�gvE&�ݫ\�yn\�',_binary '�\�\�\�<\�B��7�1�',_binary '�m\0�E\�Ḷq\�,K�7t',_binary '\��I;�\�B��7�1�','[ODK] RECEPTION FOSA',2,'2021-11-07 21:30:00',1,38.7500,0,1,3,NULL,NULL,202111,'2021-11-07 21:39:17'),(_binary '�\�<\�V\�L^�\�\�\�',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary '��V��lE�\�f\�IT�\�',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,38.7500,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary '��w�jBC^�G��\�UQ�',_binary ')��H�A&��\�Y2�',_binary '_:\�#;�\�B��7�1�',_binary '�;L��|H%������',NULL,'Entrée de stock par intégration',13,'2021-11-11 10:34:11',1,60.1200,0,1,6,NULL,NULL,202111,'2021-11-11 09:37:32'),(_binary '��*\�\�3OP��\�\rT2�|',_binary '8IIN=@یxF��;_',_binary '_:\�#;�\�B��7�1�',_binary '\�T\�#z6@چ55\�(��',_binary '\���;�\�B��7�1�','Transfert vers un dépôt',8,'2021-11-08 02:13:38',1,70.5900,1,1,5,NULL,NULL,202111,'2021-11-08 01:15:06'),(_binary '��\0�\�WN��\�{f\�F\�',_binary '	�E\�DI/�\�\�\�\n\�\'',_binary '_:\�#;�\�B��7�1�',_binary '��V��lE�\�f\�IT�\�',_binary '\��I;�\�B��7�1�','Transfert vers un dépôt',8,'2021-11-07 21:22:08',1,38.7500,1,1,2,NULL,NULL,202111,'2021-11-07 20:24:26'),(_binary '�\�t\�GY��\rkyF{�',_binary '	�E\�DI/�\�\�\�\n\�\'',_binary '\��I;�\�B��7�1�',_binary 'D*vA �\�	�.Ԟ�',_binary '_:\�#;�\�B��7�1�','Reception de stock',2,'2021-11-07 21:24:51',1,38.7500,0,1,2,NULL,NULL,202111,'2021-11-07 20:25:13'),(_binary '��\�v\�oEҙX\'�Q��',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary '1\�?�\�DI���au�_\�',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,38.7500,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary '�txz��@��\�\�SZ�\�',_binary '8IIN=@یxF��;_',_binary '\���;�\�B��7�1�',_binary '\�T\�#z6@چ55\�(��',_binary '_:\�#;�\�B��7�1�','Reception de stock',2,'2021-11-08 02:23:27',1,70.5900,0,1,5,NULL,NULL,202111,'2021-11-08 01:23:53'),(_binary 'ƽE儗NǢ\�\�\��*�',_binary '8IIN=@یxF��;_',_binary '_:\�#;�\�B��7�1�',_binary 'b�R\��N\n�#i�\�Au',_binary '\���;�\�B��7�1�','Transfert vers un dépôt',8,'2021-11-08 02:13:38',1,70.5900,1,1,5,NULL,NULL,202111,'2021-11-08 01:15:06'),(_binary 'ȕF�ZG䶠v�\�~�0',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary '\�\�SN!iF\Z�s<\�\�\�\�',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,70.5900,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary 'ɗ\�1�E÷P�\�X�\�',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary '\�T\�#z6@چ55\�(��',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,70.5900,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary '\�\�p_GKʓ��\�D5\�',_binary '	�E\�DI/�\�\�\�\n\�\'',_binary '_:\�#;�\�B��7�1�',_binary 'D*vA �\�	�.Ԟ�',_binary '\��I;�\�B��7�1�','Transfert vers un dépôt',8,'2021-11-07 21:22:08',1,38.7500,1,1,2,NULL,NULL,202111,'2021-11-07 20:24:26'),(_binary '\�Bń\� C-���\��M�',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary '�>�\���I&��2�yN�{',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,60.1200,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary 'Ѭ4z\�NE������]h\'',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary '%xlƠIӅ\�\���\�3',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,70.5900,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary '\�\�\�g��K��\�\�\�\�#Y',_binary ')��H�A&��\�Y2�',_binary '_:\�#;�\�B��7�1�',_binary '4\�&UI\r��[!	CCk',NULL,'Entrée de stock par intégration',13,'2021-11-11 10:34:11',1,60.1200,0,1,6,NULL,NULL,202111,'2021-11-11 09:37:32'),(_binary '\�;H�N\�K��f������',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary '\�m�!\�Cݨ)h��1',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,38.7500,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary '\���+;QL�,���\�',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary 'ɭ\0�\\D���\�;F7\�\n',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,70.5900,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary '窶�εBt��W\�)Lɞ',_binary ')��H�A&��\�Y2�',_binary '_:\�#;�\�B��7�1�',_binary 'G�\\\��M·��H_b\�q',NULL,'Entrée de stock par intégration',13,'2021-11-11 10:34:11',1,60.1200,0,1,6,NULL,NULL,202111,'2021-11-11 09:37:32'),(_binary '\�\�\rr�L���\�pH��',_binary '	�E\�DI/�\�\�\�\n\�\'',_binary '\��I;�\�B��7�1�',_binary 'D*vA �\�	�.Ԟ�',_binary '_:\�#;�\�B��7�1�','[ODK] RECEPTION FOSA',2,'2021-11-05 16:01:00',1,38.7500,0,1,4,NULL,NULL,202111,'2021-11-07 21:39:17'),(_binary '\���\�Bg�\�9u\n\�J',_binary '	�E\�DI/�\�\�\�\n\�\'',_binary '\��I;�\�B��7�1�',_binary '��V��lE�\�f\�IT�\�',_binary '_:\�#;�\�B��7�1�','[ODK] RECEPTION FOSA',2,'2021-11-05 16:01:00',1,38.7500,0,1,4,NULL,NULL,202111,'2021-11-07 21:39:17'),(_binary '\�EBh�ED��k\��L��',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary ')�3\�O�H����Ě���',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,38.7500,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary '\�Z\�gdBOU�f����',_binary '8IIN=@یxF��;_',_binary '_:\�#;�\�B��7�1�',_binary 'ɭ\0�\\D���\�;F7\�\n',_binary '\���;�\�B��7�1�','Transfert vers un dépôt',8,'2021-11-08 02:13:38',1,70.5900,1,1,5,NULL,NULL,202111,'2021-11-08 01:15:06'),(_binary '\�,�<MW��e,�\�\�',_binary '	�E\�DI/�\�\�\�\n\�\'',_binary '_:\�#;�\�B��7�1�',_binary '�m\0�E\�Ḷq\�,K�7t',_binary '\��I;�\�B��7�1�','Transfert vers un dépôt',8,'2021-11-07 21:22:08',1,38.7500,1,1,2,NULL,NULL,202111,'2021-11-07 20:24:26'),(_binary '\�\�\�{?G[��5swz',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary '�\�tA\�pH��y$I\�ȀF',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,38.7500,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38'),(_binary '�\�i`0Eв,�ӆN��',_binary '\�\�\�\�tL��\�\�.$',_binary '_:\�#;�\�B��7�1�',_binary 'F\�\�\�}A\�|\�6�',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',13,'2021-11-05 16:52:54',1,38.7500,0,1,1,NULL,NULL,202111,'2021-11-05 15:59:38');
/*!40000 ALTER TABLE `stock_movement` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `stock_movement_reference` BEFORE INSERT ON `stock_movement` FOR EACH ROW SET NEW.reference = (SELECT IF(NEW.reference, NEW.reference, IFNULL(MAX(sm.reference) + 1, 1)) FROM stock_movement sm WHERE sm.document_uuid <> NEW.document_uuid) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `stock_movement_document_map` AFTER INSERT ON `stock_movement` FOR EACH ROW BEGIN
  INSERT INTO `document_map` (uuid, text) VALUES (NEW.document_uuid, CONCAT_WS('.', 'SM', NEW.flux_id, NEW.reference))
  ON DUPLICATE KEY UPDATE uuid = NEW.document_uuid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `stock_movement_status`
--

DROP TABLE IF EXISTS `stock_movement_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_movement_status` (
  `depot_uuid` binary(16) NOT NULL,
  `inventory_uuid` binary(16) NOT NULL,
  `date` date NOT NULL,
  `quantity_delta` decimal(19,4) NOT NULL,
  `in_quantity` decimal(19,4) NOT NULL,
  `out_quantity_exit` decimal(19,4) NOT NULL,
  `out_quantity_consumption` decimal(19,4) NOT NULL,
  `sum_quantity` decimal(19,4) NOT NULL,
  `sum_in_quantity` decimal(19,4) NOT NULL,
  `sum_out_quantity_exit` decimal(19,4) NOT NULL,
  `sum_out_quantity_consumption` decimal(19,4) NOT NULL,
  `duration` int unsigned DEFAULT '0',
  KEY `depot_uuid` (`depot_uuid`),
  KEY `inventory_uuid` (`inventory_uuid`),
  KEY `depot_inventory` (`depot_uuid`,`inventory_uuid`),
  KEY `date` (`date`),
  CONSTRAINT `stock_movement_status__depot` FOREIGN KEY (`depot_uuid`) REFERENCES `depot` (`uuid`),
  CONSTRAINT `stock_movment_status__inventory` FOREIGN KEY (`inventory_uuid`) REFERENCES `inventory` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_movement_status`
--

LOCK TABLES `stock_movement_status` WRITE;
/*!40000 ALTER TABLE `stock_movement_status` DISABLE KEYS */;
INSERT INTO `stock_movement_status` VALUES (_binary '_:\�#;�\�B��7�1�',_binary '\�ƫuG��ѐ�\�\�\��','2021-11-05',7.0000,7.0000,0.0000,0.0000,7.0000,7.0000,0.0000,0.0000,0),(_binary '_:\�#;�\�B��7�1�',_binary '\�ᖥ��F\�	8-\Zc�','2021-11-05',3.0000,3.0000,0.0000,0.0000,3.0000,3.0000,0.0000,0.0000,0),(_binary '_:\�#;�\�B��7�1�',_binary '�\��\�YL�R\�F>y+\�','2021-11-05',10.0000,10.0000,0.0000,0.0000,10.0000,10.0000,0.0000,0.0000,0),(_binary '_:\�#;�\�B��7�1�',_binary '�\��\�YL�R\�F>y+\�','2021-11-07',-3.0000,0.0000,0.0000,3.0000,7.0000,10.0000,0.0000,3.0000,0),(_binary '�\�\�\�<\�B��7�1�',_binary '�\��\�YL�R\�F>y+\�','2021-11-07',2.0000,2.0000,0.0000,0.0000,2.0000,2.0000,0.0000,0.0000,0),(_binary '\��I;�\�B��7�1�',_binary '�\��\�YL�R\�F>y+\�','2021-11-05',3.0000,3.0000,0.0000,0.0000,3.0000,3.0000,0.0000,0.0000,2),(_binary '\��I;�\�B��7�1�',_binary '�\��\�YL�R\�F>y+\�','2021-11-07',1.0000,3.0000,0.0000,2.0000,4.0000,6.0000,0.0000,2.0000,0),(_binary '_:\�#;�\�B��7�1�',_binary '\�ƫuG��ѐ�\�\�\��','2021-11-08',-3.0000,0.0000,0.0000,3.0000,4.0000,7.0000,0.0000,3.0000,0),(_binary '_:\�#;�\�B��7�1�',_binary '\�ᖥ��F\�	8-\Zc�','2021-11-08',-1.0000,0.0000,0.0000,1.0000,2.0000,3.0000,0.0000,1.0000,0),(_binary '\���;�\�B��7�1�',_binary '\�ƫuG��ѐ�\�\�\��','2021-11-08',3.0000,3.0000,0.0000,0.0000,3.0000,3.0000,0.0000,0.0000,0),(_binary '\���;�\�B��7�1�',_binary '\�ᖥ��F\�	8-\Zc�','2021-11-08',1.0000,1.0000,0.0000,0.0000,1.0000,1.0000,0.0000,0.0000,0),(_binary '_:\�#;�\�B��7�1�',_binary '\�ᖥ��F\�	8-\Zc�','2021-11-11',5.0000,5.0000,0.0000,0.0000,7.0000,8.0000,0.0000,1.0000,0);
/*!40000 ALTER TABLE `stock_movement_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_requestor_type`
--

DROP TABLE IF EXISTS `stock_requestor_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_requestor_type` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `type_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_requestor_type`
--

LOCK TABLES `stock_requestor_type` WRITE;
/*!40000 ALTER TABLE `stock_requestor_type` DISABLE KEYS */;
INSERT INTO `stock_requestor_type` VALUES (1,'service','FORM.LABELS.SERVICE'),(2,'depot','FORM.LABELS.DEPOT');
/*!40000 ALTER TABLE `stock_requestor_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_requisition`
--

DROP TABLE IF EXISTS `stock_requisition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_requisition` (
  `uuid` binary(16) NOT NULL,
  `requestor_uuid` binary(16) NOT NULL,
  `requestor_type_id` int NOT NULL,
  `depot_uuid` binary(16) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date` datetime NOT NULL,
  `user_id` smallint unsigned NOT NULL,
  `project_id` smallint unsigned NOT NULL,
  `reference` int unsigned NOT NULL DEFAULT '0',
  `status_id` tinyint unsigned NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `stock_requisition_uuid` (`uuid`),
  UNIQUE KEY `stock_requisition_2` (`project_id`,`reference`),
  KEY `requestor_uuid` (`requestor_uuid`),
  KEY `depot_uuid` (`depot_uuid`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `stock_requisition__depot` FOREIGN KEY (`depot_uuid`) REFERENCES `depot` (`uuid`),
  CONSTRAINT `stock_requisition__project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_requisition`
--

LOCK TABLES `stock_requisition` WRITE;
/*!40000 ALTER TABLE `stock_requisition` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_requisition` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `stock_requisition_reference` BEFORE INSERT ON `stock_requisition` FOR EACH ROW SET NEW.reference = (SELECT IF(NEW.reference, NEW.reference, IFNULL(MAX(stock_requisition.reference) + 1, 1)) FROM stock_requisition  WHERE stock_requisition.project_id = new.project_id) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `stock_requisition_document_map` AFTER INSERT ON `stock_requisition` FOR EACH ROW BEGIN
  INSERT INTO document_map
    SELECT new.uuid, CONCAT_WS('.', 'SREQ', project.abbr, new.reference) FROM project WHERE project.id = new.project_id ON DUPLICATE KEY UPDATE text=text;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `stock_requisition_item`
--

DROP TABLE IF EXISTS `stock_requisition_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_requisition_item` (
  `requisition_uuid` binary(16) NOT NULL,
  `inventory_uuid` binary(16) NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  KEY `requisition_uuid` (`requisition_uuid`),
  CONSTRAINT `stock_req_item__stock_req_item` FOREIGN KEY (`requisition_uuid`) REFERENCES `stock_requisition` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_requisition_item`
--

LOCK TABLES `stock_requisition_item` WRITE;
/*!40000 ALTER TABLE `stock_requisition_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_requisition_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_setting`
--

DROP TABLE IF EXISTS `stock_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_setting` (
  `enterprise_id` smallint unsigned NOT NULL,
  `month_average_consumption` smallint NOT NULL DEFAULT '6',
  `default_min_months_security_stock` decimal(19,4) NOT NULL DEFAULT '2.0000',
  `enable_auto_purchase_order_confirmation` tinyint(1) NOT NULL DEFAULT '0',
  `enable_auto_stock_accounting` tinyint(1) NOT NULL DEFAULT '1',
  `enable_strict_depot_permission` tinyint(1) NOT NULL DEFAULT '0',
  `enable_supplier_credit` tinyint(1) NOT NULL DEFAULT '0',
  `enable_strict_depot_distribution` tinyint(1) NOT NULL DEFAULT '0',
  `average_consumption_algo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'algo_msh',
  `min_delay` decimal(19,4) NOT NULL DEFAULT '1.0000',
  `default_purchase_interval` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `enable_expired_stock_out` tinyint(1) NOT NULL DEFAULT '0',
  `default_cost_center_for_loss` mediumint DEFAULT NULL,
  UNIQUE KEY `enterprise_id` (`enterprise_id`),
  CONSTRAINT `stock_setting__enterprise` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_setting`
--

LOCK TABLES `stock_setting` WRITE;
/*!40000 ALTER TABLE `stock_setting` DISABLE KEYS */;
INSERT INTO `stock_setting` VALUES (1,6,2.0000,0,1,0,0,0,'algo_msh',1.0000,0.0000,0,NULL);
/*!40000 ALTER TABLE `stock_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_value`
--

DROP TABLE IF EXISTS `stock_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_value` (
  `inventory_uuid` binary(16) NOT NULL,
  `date` date NOT NULL,
  `quantity` int NOT NULL,
  `wac` decimal(19,4) NOT NULL,
  KEY `inventory_uuid` (`inventory_uuid`),
  KEY `date` (`date`),
  CONSTRAINT `stock_value__inventory` FOREIGN KEY (`inventory_uuid`) REFERENCES `inventory` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_value`
--

LOCK TABLES `stock_value` WRITE;
/*!40000 ALTER TABLE `stock_value` DISABLE KEYS */;
INSERT INTO `stock_value` VALUES (_binary '\�ƫuG��ѐ�\�\�\��','2021-11-11',7,70.5900),(_binary '\�ᖥ��F\�	8-\Zc�','2021-11-11',8,60.1200),(_binary '�\��\�YL�R\�F>y+\�','2021-11-11',13,38.7500);
/*!40000 ALTER TABLE `stock_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subsidy`
--

DROP TABLE IF EXISTS `subsidy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subsidy` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int unsigned NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `value` decimal(10,4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subsidy_1` (`label`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `subsidy__account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsidy`
--

LOCK TABLES `subsidy` WRITE;
/*!40000 ALTER TABLE `subsidy` DISABLE KEYS */;
/*!40000 ALTER TABLE `subsidy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `uuid` binary(16) NOT NULL,
  `reference` int unsigned NOT NULL DEFAULT '0',
  `creditor_uuid` binary(16) NOT NULL,
  `display_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_1` text COLLATE utf8mb4_unicode_ci,
  `address_2` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `international` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `supplier_1` (`display_name`),
  KEY `creditor_uuid` (`creditor_uuid`),
  CONSTRAINT `supplier__creditor` FOREIGN KEY (`creditor_uuid`) REFERENCES `creditor` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `supplier_before_insert` BEFORE INSERT ON `supplier` FOR EACH ROW SET NEW.reference = (SELECT IF(NEW.reference, NEW.reference, IFNULL(MAX(supplier.reference) + 1, 1)) FROM supplier) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `supplier_entity_map` AFTER INSERT ON `supplier` FOR EACH ROW BEGIN

  
  INSERT INTO entity_map
    SELECT new.creditor_uuid, CONCAT_WS('.', 'FO', new.reference) ON DUPLICATE KEY UPDATE text=text;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `survey_data`
--

DROP TABLE IF EXISTS `survey_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_data` (
  `uuid` binary(16) NOT NULL,
  `data_collector_management_id` mediumint unsigned NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` smallint unsigned NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uuid`),
  KEY `data_collector_management_id` (`data_collector_management_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `survey_data__data_collector_management` FOREIGN KEY (`data_collector_management_id`) REFERENCES `data_collector_management` (`id`),
  CONSTRAINT `survey_data__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_data`
--

LOCK TABLES `survey_data` WRITE;
/*!40000 ALTER TABLE `survey_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_data_item`
--

DROP TABLE IF EXISTS `survey_data_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_data_item` (
  `uuid` binary(16) NOT NULL,
  `survey_form_id` mediumint unsigned NOT NULL,
  `survey_form_label` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `survey_data_uuid` binary(16) NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uuid`),
  KEY `survey_form_id` (`survey_form_id`),
  KEY `survey_data_uuid` (`survey_data_uuid`),
  CONSTRAINT `survey_data_item__survey_data` FOREIGN KEY (`survey_data_uuid`) REFERENCES `survey_data` (`uuid`),
  CONSTRAINT `survey_data_item__survey_form` FOREIGN KEY (`survey_form_id`) REFERENCES `survey_form` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_data_item`
--

LOCK TABLES `survey_data_item` WRITE;
/*!40000 ALTER TABLE `survey_data_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_data_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_data_log`
--

DROP TABLE IF EXISTS `survey_data_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_data_log` (
  `uuid` binary(16) NOT NULL,
  `log_uuid` binary(16) DEFAULT NULL,
  `survey_form_id` mediumint unsigned NOT NULL,
  `survey_form_label` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `survey_data_uuid` binary(16) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` smallint unsigned NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uuid`),
  KEY `survey_form_id` (`survey_form_id`),
  KEY `survey_data_uuid` (`survey_data_uuid`),
  CONSTRAINT `survey_data_log__survey_data` FOREIGN KEY (`survey_data_uuid`) REFERENCES `survey_data` (`uuid`),
  CONSTRAINT `survey_data_log__survey_form` FOREIGN KEY (`survey_form_id`) REFERENCES `survey_form` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_data_log`
--

LOCK TABLES `survey_data_log` WRITE;
/*!40000 ALTER TABLE `survey_data_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_data_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_form`
--

DROP TABLE IF EXISTS `survey_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_form` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `data_collector_management_id` mediumint unsigned NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice_list_id` mediumint unsigned DEFAULT NULL,
  `filter_choice_list_id` mediumint unsigned DEFAULT NULL,
  `other_choice` tinyint(1) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hint` text COLLATE utf8mb4_unicode_ci,
  `required` tinyint(1) DEFAULT '0',
  `constraint` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calculation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `survey_form_1` (`data_collector_management_id`,`name`,`label`),
  KEY `data_collector_management_id` (`data_collector_management_id`),
  CONSTRAINT `survey_form__data_collector_management` FOREIGN KEY (`data_collector_management_id`) REFERENCES `data_collector_management` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_form`
--

LOCK TABLES `survey_form` WRITE;
/*!40000 ALTER TABLE `survey_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `survey_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_form_type`
--

DROP TABLE IF EXISTS `survey_form_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_form_type` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_list` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_form_type`
--

LOCK TABLES `survey_form_type` WRITE;
/*!40000 ALTER TABLE `survey_form_type` DISABLE KEYS */;
INSERT INTO `survey_form_type` VALUES (1,'FORM.LABELS.NUMBER','number',0),(2,'FORM.LABELS.TEXT','text',0),(3,'FORM.LABELS.SELECT_ONE','select_one',1),(4,'FORM.LABELS.SELECT_MULTIPLE','select_multiple',1),(5,'FORM.LABELS.NOTE','note',0),(6,'FORM.LABELS.DATE','date',0),(7,'FORM.LABELS.TIME','time',0),(8,'FORM.LABELS.IMAGE','image',0),(9,'FORM.LABELS.CALCULATION','calculation',0),(10,'FORM.LABELS.TEXT_AREA','text_area',0);
/*!40000 ALTER TABLE `survey_form_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `uuid` binary(16) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxe_ipr`
--

DROP TABLE IF EXISTS `taxe_ipr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxe_ipr` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `currency_id` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_id` (`currency_id`),
  CONSTRAINT `taxe_ipr__currency` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxe_ipr`
--

LOCK TABLES `taxe_ipr` WRITE;
/*!40000 ALTER TABLE `taxe_ipr` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxe_ipr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxe_ipr_configuration`
--

DROP TABLE IF EXISTS `taxe_ipr_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxe_ipr_configuration` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `rate` float NOT NULL,
  `tranche_annuelle_debut` float DEFAULT NULL,
  `tranche_annuelle_fin` float DEFAULT NULL,
  `tranche_mensuelle_debut` float DEFAULT NULL,
  `tranche_mensuelle_fin` float DEFAULT NULL,
  `ecart_annuel` float DEFAULT NULL,
  `ecart_mensuel` float DEFAULT NULL,
  `impot_annuel` float DEFAULT NULL,
  `impot_mensuel` float DEFAULT NULL,
  `cumul_annuel` float DEFAULT NULL,
  `cumul_mensuel` float DEFAULT NULL,
  `taxe_ipr_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `taxe_ipr_id` (`taxe_ipr_id`),
  CONSTRAINT `taxe_ipr_config__taxe_ipr` FOREIGN KEY (`taxe_ipr_id`) REFERENCES `taxe_ipr` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxe_ipr_configuration`
--

LOCK TABLES `taxe_ipr_configuration` WRITE;
/*!40000 ALTER TABLE `taxe_ipr_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `taxe_ipr_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_history`
--

DROP TABLE IF EXISTS `transaction_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_history` (
  `uuid` binary(16) NOT NULL,
  `record_uuid` binary(16) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` smallint unsigned NOT NULL,
  `action` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT 'edit',
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`uuid`),
  KEY `record_uuid` (`record_uuid`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `transaction_history__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_history`
--

LOCK TABLES `transaction_history` WRITE;
/*!40000 ALTER TABLE `transaction_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_type`
--

DROP TABLE IF EXISTS `transaction_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_type` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `transaction_type_1` (`id`,`text`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_type`
--

LOCK TABLES `transaction_type` WRITE;
/*!40000 ALTER TABLE `transaction_type` DISABLE KEYS */;
INSERT INTO `transaction_type` VALUES (1,'VOUCHERS.SIMPLE.GENERIC_INCOME','income',1),(2,'VOUCHERS.SIMPLE.CASH_PAYMENT','income',1),(3,'VOUCHERS.SIMPLE.CONVENTION_PAYMENT','income',1),(4,'VOUCHERS.SIMPLE.SUPPORT_INCOME','income',1),(5,'VOUCHERS.SIMPLE.TRANSFER','other',1),(6,'VOUCHERS.SIMPLE.GENERIC_EXPENSE','expense',1),(7,'VOUCHERS.SIMPLE.SALARY_PAYMENT','expense',1),(8,'VOUCHERS.SIMPLE.CASH_RETURN','expense',1),(9,'VOUCHERS.SIMPLE.PURCHASES','expense',1),(10,'VOUCHERS.SIMPLE.CREDIT_NOTE','other',1),(11,'VOUCHERS.SIMPLE.INVOICING','income',1),(12,'VOUCHERS.SIMPLE.STOCK_INTEGRATION','other',1),(13,'VOUCHERS.SIMPLE.STOCK_EXIT','other',1),(14,'VOUCHERS.SIMPLE.STOCK_ENTRY','other',1),(15,'VOUCHERS.SIMPLE.COMMITMENT','other',1),(16,'VOUCHERS.SIMPLE.EMPLOYEE_WITHHOLDINGS','other',1),(17,'VOUCHERS.SIMPLE.CHARGE_REMUNERATION','other',1),(18,'VOUCHERS.SIMPLE.ADJUSTMENT','other',1),(19,'VOUCHERS.SIMPLE.CAUTION_LINK','other',1),(20,'VOUCHERS.SIMPLE.TRANSFER_AUXILIARY','expense',1),(21,'VOUCHERS.SIMPLE.RECEPTION_FUNDS_AUXILIARY','income',1),(22,'VOUCHERS.SIMPLE.PROVISIONING_PRINCIPAL','income',1),(23,'VOUCHERS.SIMPLE.TRANSFER_FUNDS_BANKS','expense',1),(24,'VOUCHERS.SIMPLE.EXIT_FUNDS_BANK','expense',1),(25,'VOUCHERS.SIMPLE.BANK_CASH_APPROVALS','income',1);
/*!40000 ALTER TABLE `transaction_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit` (
  `id` smallint unsigned NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` smallint DEFAULT '0',
  `path` tinytext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unit_1` (`name`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (0,'Root','TREE.ROOT','The unseen root node',NULL,'/root'),(1,'Admin','TREE.ADMIN','The Administration Super-Category',0,'/ADMIN_FOLDER'),(2,'Enterprise','TREE.ENTERPRISE','Manage the registered enterprises from here',1,'/enterprises'),(3,'Invoice Registry','TREE.INVOICE_REGISTRY','Invoice Registry',5,'/invoices'),(4,'Users & Permissions','TREE.USERS','Manage user privileges and permissions',1,'/users'),(5,'Finance','TREE.FINANCE','The Finance Super-Category',0,'/FINANCE_FOLDER'),(6,'Account','TREE.ACCOUNT','Chart of Accounts management',5,'/accounts'),(9,'Posting Journal','TREE.POSTING_JOURNAL','Daily Log',5,'/journal'),(10,'General Ledger','TREE.GENERAL_LEDGER','Posted Journal Data',5,'/general_ledger'),(12,'Hospital','TREE.HOSPITAL','The Hospital Super-Category',0,'/HOSPITAL_FOLDER'),(13,'Fiscal Year','TREE.FISCAL_YEAR','Fiscal year configuration page',5,'/fiscal'),(14,'Patient Registration','TREE.PATIENT_REGISTRATION','Register patients',12,'/patients/register'),(15,'Patient Registry','TREE.PATIENT_REGISTRY','Patient Registry',12,'/patients'),(16,'Patient Invoice','TREE.PATIENT_INVOICE','Create an invoice for a patient',5,'/invoices/patient'),(18,'Cash Window','TREE.CASH_WINDOW','Cash payments against past or future invoices',5,'/cash'),(19,'Register Supplier','TREE.REGISTER_SUPPLIER','',1,'/suppliers'),(20,'Depot Management','DEPOT.TITLE','',160,'/depots'),(21,'Price List','TREE.PRICE_LIST','Configure price lists!',1,'/prices'),(26,'Location Manager','TREE.LOCATION','',1,'/locations'),(29,'Patient Group','TREE.PATIENT_GRP','',1,'/patients/groups'),(48,'Service Management','TREE.SERVICE','',1,'/services'),(57,'Human Resources','TREE.HUMANS_RESSOURCES','',0,'/PAYROLL_FOLDER'),(61,'Employee','TREE.EMPLOYEE','Employees Registration',57,'/employees/register'),(62,'Employee Registry','TREE.EMPLOYEE_REGISTRY','',57,'/employees'),(82,'Subsidies','TREE.SUBSIDY','Handles the subsidy situation',1,'/subsidies'),(105,'Cashbox Management','TREE.CASHBOX_MANAGEMENT','',1,'/cashboxes'),(107,'Debtor Groups Management','TREE.DEBTOR_GROUP','Debtor Groups Management module',1,'/debtors/groups'),(134,'Simple Journal Vouchers','TREE.SIMPLE_VOUCHER','Creates a simple transfer slip between two accounts',5,'/vouchers/simple'),(135,'Invoicing Fee','TREE.INVOICING_FEES','Configures invoicing Fee for bhima',1,'/invoicing_fees'),(137,'Complex Journal Vouchers','TREE.COMPLEX_JOURNAL_VOUCHER','Complex Journal vouchers module',5,'/vouchers/complex'),(138,'Inventory Module','TREE.INVENTORY','Inventory management module',0,'/INVENTORY_FOLDER'),(139,'Inventory Registry','TREE.INVENTORY_REGISTRY','Inventory Registry module',138,'/inventory'),(140,'Inventory Configurations','TREE.INVENTORY_CONFIGURATION','Inventory configuration module',138,'/inventory/configuration'),(141,'Vouchers Records','TREE.VOUCHER_REGISTRY','Vouchers registry module',5,'/vouchers'),(143,'Transaction Type Module','TREE.TRANSACTION_TYPE','This module is responsible for managing transaction type',1,'/transaction_type'),(145,'Cashflow','TREE.CASHFLOW','The Cashflow Report',281,'/reports/cashflow'),(146,'Creditor Groups Management','TREE.CREDITOR_GROUP','Creditor Groups Management module',1,'/creditors/groups'),(147,'Cash Payment Registry','TREE.CASH_PAYMENT_REGISTRY','Cash Payment Registry',5,'/payments'),(149,'Cash Report','TREE.CASH_REPORT','The report of cash entry and exit',281,'/reports/cash_report'),(150,'Balance Sheet','TREE.BALANCE_REPORT','Balance report module',281,'/reports/balance_report'),(151,'Aged Debtors','TREE.AGED_DEBTORS','Aged Debtors',281,'/reports/aged_debtors'),(152,'Account report','TREE.REPORT_ACCOUNTS','The report accounts',281,'/reports/account_report'),(153,'Report Cashflow by Service','TREE.CASHFLOW_BY_SERVICE','cashflow_by_service',281,'/reports/cashflow_by_service'),(154,'Purchase Order','TREE.PURCHASE_ORDER','Purchase order folder',0,'/PURCHASE_FOLDER'),(155,'Purchase','TREE.PURCHASE','The purchase module',154,'/purchases/create'),(156,'Purchase Registry','TREE.PURCHASE_REGISTRY','The purchase registry',154,'/purchases'),(157,'Open Debtors','REPORT.OPEN_DEBTORS.TREE','Open Debtors',281,'/reports/open_debtors'),(160,'Stock','TREE.STOCK','The stock management module',0,'/STOCK_FOLDER'),(161,'Stock Lots','TREE.STOCK_LOTS','The stock lots registry',160,'/stock/lots'),(162,'Stock Movements','TREE.STOCK_MOVEMENTS','The stock lots movements registry',160,'/stock/movements'),(163,'Stock Inventory','TREE.STOCK_INVENTORY','The stock inventory registry',160,'/stock/inventories'),(164,'Stock Exit','STOCK.EXIT','The stock exit module',160,'/stock/exit'),(165,'Stock Entry','STOCK.ENTRY','The stock entry module',160,'/stock/entry'),(167,'Stock Adjustment','STOCK.ADJUSTMENT','The stock adjustment module',160,'/stock/adjustment'),(168,'Aged Creditors','TREE.AGED_CREDITORS','Aged Creditors',281,'/reports/aged_creditors'),(170,'Account Statement','TREE.ACCOUNT_STATEMENT','Account Statement Module',281,'/account_statement'),(180,'Profit & Loss Statement','REPORT.PROFIT_AND_LOSS','The report of income and expenses',281,'/reports/income_expense'),(181,'Stock Report','TREE.STOCK_REPORT','The report of inventories in stock',282,'/reports/inventory_report'),(182,'Stock Sheet Report','TREE.STOCK_INVENTORY_REPORT','The report of an inventory in stock',282,'/reports/stock_sheet'),(183,'Grade Management','TREE.GRADES','',57,'/grades'),(184,'Job Title Management','TREE.PROFESSION','',57,'/functions'),(185,'Payroll Rubric Management','TREE.PAYROLL_RUB_MANAGEMENT','',57,'/payroll/rubrics'),(186,'Holidays Management','TREE.HOLIDAYS_MANAGEMENT','Holidays Management',57,'/holidays'),(187,'Offdays Management','TREE.OFFDAYS_MANAGEMENT','Offdays Management',57,'/offdays'),(188,'Tax IPR Management','TREE.IPR_MANAGEMENT','IPR Management',57,'/ipr_tax'),(189,'IPR Tax Configuration','TREE.IPR_TAX_CONFIGURATION','IPR Tax Configuration',57,'/ipr_tax/configuration'),(190,'Payroll Rubric Configuration','TREE.PAYROLL_RUB_CONFIGURATION','',57,'/payroll/rubric_configuration'),(191,'Account Configuration','TREE.PAYROLL_ACCOUNT_CONFIGURATION','Account Configuration',57,'/payroll/account_configuration'),(192,'Operating Accounts Report','TREE.OPERATING_ACCOUNT','The report of operating',281,'/reports/operating'),(193,'Weekend Configuration','TREE.WEEKEND_CONFIGURATION','Weekend Configuration',57,'/payroll/weekend_configuration'),(194,'Payroll Configuration','TREE.PAYROLL_CONFIGURATION','Payroll Configuration',57,'/payroll'),(195,'Role Management','TREE.ROLE_MANAGEMENT','Roles Management',1,'/roles'),(197,'Stock Exit Report','TREE.STOCK_EXIT_REPORT','Stock Exit Report',282,'/reports/stock_exit'),(199,'Annual Clients Report','REPORT.CLIENTS.TITLE','Annual Clients Report',281,'/reports/annual_clients_report'),(200,'Multiple Payroll','TREE.MULTI_PAYROLL','Multiple Payroll',57,'/multiple_payroll'),(201,'Employee Standing Report','TREE.EMPLOYEE_STANDING_REPORT','Employee Standing Report',283,'/reports/employee_standing'),(202,'Patient Standing Report','TREE.PATIENT_STANDING_REPORT','Patient Standing Report',280,'/reports/patient_standing'),(203,'Employees Configuration','TREE.PAYROLL_EMP_CONFIGURATION','',57,'/payroll/employee_configuration'),(204,'Exchange Rate','TREE.EXCHANGE','',1,'/exchange'),(205,'Account Reference Management','TREE.ACCOUNT_REFERENCE_MANAGEMENT','',1,'/account_reference'),(206,'[OHADA] Bilan','TREE.OHADA_BALANCE_SHEET','',281,'/reports/ohada_balance_sheet_report'),(207,'Account Reference Report','TREE.ACCOUNT_REFERENCE_REPORT','',281,'/reports/account_reference'),(208,'Import Stock From File','TREE.IMPORT_STOCK_FROM_FILE','',160,'/stock/import'),(209,'Accounts Report Multiple','TREE.REPORTS_MULTIPLE_ACCOUNTS','',281,'/reports/account_report_multiple'),(210,'Unbalanced Invoice Payments','REPORT.UNPAID_INVOICE_PAYMENTS_REPORT.TITLE','',281,'/reports/unpaid_invoice_payments'),(211,'Profit & Loss by Month','REPORT.PROFIT_AND_LOSS_BY_MONTH','The report of income and expenses',281,'/reports/income_expense_by_month'),(213,'Stock Value Report','TREE.STOCK_VALUE','',282,'/reports/stock_value'),(214,'[OHADA] Compte de resultat','TREE.OHADA_RESULT_ACCOUNT','',281,'/reports/ohada_profit_loss'),(216,'Profit & Loss by Year','REPORT.PROFIT_AND_LOSS_BY_YEAR','The report of income and expenses',281,'/reports/income_expense_by_year'),(217,'Tags','TREE.TAGS','',1,'/tags'),(218,'Fee Center Management','TREE.COST_CENTER_MANAGEMENT','',0,'/cost_center'),(219,'Fee Center Management','TREE.COST_CENTER','',218,'/cost_center'),(225,'Stock Assignment','ASSIGN.STOCK_ASSIGN','',160,'/stock/assign'),(226,'Account Reference Type','TREE.ACCOUNT_REFERENCE_TYPE','Account Reference Type',1,'/account_reference_type'),(227,'Ward Module','TREE.WARD','Ward folder',0,'/WARD_FOLDER'),(228,'Ward Configurations','TREE.WARD_CONFIGURATION','Ward configuration module',227,'/ward/configuration'),(229,'Visits Registry','TREE.VISITS_REGISTRY','Visits registry',12,'/patients/visits'),(233,'Dashboards Folder','TREE.DASHBOARDS.TITLE','Tableaux de bord',0,'/DASHBOARDS_FOLDER'),(234,'Indicators Files Registry','TREE.DASHBOARDS.INDICATORS_FILES_REGISTRY','Registre des fiches des indicateurs',233,'/dashboards/indicators_files_registry'),(235,'Hospitalization dashboard','TREE.DASHBOARDS.HOSPITALIZATION','Tableau de bord des hospitalisations',233,'/dashboards/hospitalization'),(236,'Human Resources dashboard','TREE.DASHBOARDS.HUMAN_RESOURCES','Tableau de bord du Personnel',233,'/dashboards/staff'),(237,'Finances dashboard','TREE.DASHBOARDS.FINANCES','Tableau de bord des finances',233,'/dashboards/finances'),(238,'Indicators report','TREE.INDICATORS_REPORT','Rapport sur les indicateurs',233,'/reports/indicators_report'),(239,'Visits Report','TREE.VISITS_REPORT','Visits registry',280,'/reports/visit_report'),(240,'[Stock] Stock Entry Report','TREE.STOCK_ENTRY_REPORT','Stock Entry Report',282,'/reports/stock_entry'),(241,'Entity Folder','ENTITY.MANAGEMENT','Entity Folder',0,'/ENTITY_FOLDER'),(242,'Entity Management','ENTITY.MANAGEMENT','',241,'/entities'),(243,'Entity Group','ENTITY.GROUP.TITLE','Entity Group',241,'/entity_group'),(244,'Monthly Analysis of Balance','TREE.MONTHLY_BALANCE','Monthly Balance',281,'/reports/monthly_balance'),(245,'Debtor Summary Report','REPORT.DEBTOR_SUMMARY.TITLE','Debtor summary report',281,'/reports/debtor_summary'),(246,'Client Debts Report','TREE.CLIENT_DEBTS_REPORT','Client debts report',281,'/reports/client_debts'),(247,'Client Support Report','TREE.CLIENT_SUPPORT_REPORT','Client support report',281,'/reports/client_support'),(248,'Analysis of Cashboxes','REPORT.ANALYSIS_AUX_CASHBOXES.TITLE','Analysis of auxiliary cashboxes',281,'/reports/analysis_auxiliary_cashboxes'),(249,'Realized Profit Report','TREE.REALIZED_PROFIT_REPORT','Realized profit report',281,'/reports/realized_profit'),(250,'System Usage Statistics','REPORT.SYSTEM_USAGE_STAT.TITLE','System usage statistics',280,'/reports/system_usage_stat'),(251,'Indexes','TREE.INDEXES','The payroll index',57,'/PAYROLL_INDEX_FOLDER'),(252,'Staffing indexes management','TREE.STAFFING_INDICES_MANAGEMENT','Staffing indices management',251,'/staffing_indices'),(253,'Multiple Payroll by Indice','TREE.MULTI_PAYROLL_INDICE','Multiple Payroll (indice)',251,'/multiple_payroll_indice'),(254,'Data Collection','TREE.DATA_COLLECTION','',0,'/data_collection'),(255,'Fill Form','TREE.FILL_FORM','',254,'/fill_form'),(256,'Display Metadata','TREE.DISPLAY_METADATA','',254,'/display_metadata'),(257,'Data Kit','TREE.DATA_KIT','Data Kit',254,'/data_kit'),(258,'Data Collector Management','TREE.FORMS_MANAGEMENT','',257,'/data_collector_management'),(259,'Choices List Management','TREE.CHOICES_LIST_MANAGEMENT','',257,'/choices_list_management'),(260,'Survey Form','TREE.FORMS_CONFIGURATION','',257,'/survey_form'),(261,'Data Kit Report','TREE.DATA_KIT_REPORT','Data Kit Report',284,'/reports/data_kit'),(262,'Stock Requisition','TREE.STOCK_REQUISITION','Stock Requisition',160,'/stock/requisition'),(263,'Configuration Analysis Tools','TREE.CONFIGURATION_ANALYSIS_TOOLS','Configuration Analysis Tools',1,'/configuration_analysis_tools'),(264,'Configurable Analysis Report','TREE.CONFIGURABLE_ANALYSIS_REPORT','Configurable Analysis Report',281,'/reports/configurable_analysis_report'),(265,'Purchase Order Analysis','TREE.PURCHASE_ORDER_ANALYSIS','Purchase order analysis',285,'/reports/purchase_order_analysis'),(266,'Inventory Changes Report','REPORT.INVENTORY_CHANGE.TITLE','Inventory Changes Report',287,'/reports/inventory_changes'),(267,'Monthly Consumption Report','TREE.MONTHLY_CONSUMPTION','Monthly consumption report',282,'/reports/monthly_consumption_report'),(268,'[Stock] Consumption Graph','TREE.STOCK_CONSUMPTION_GRAPH_REPORT','Stock Consumption graph report',282,'/reports/stock_consumption_graph_report'),(269,'Inventory Adjustment','TREE.INVENTORY_ADJUSTMENT','Inventory Adjustment',160,'/stock/inventory-adjustment'),(270,'Compare Invoiced to Received','TREE.COMPARE_INVOICED_RECEIVED','Compare invoiced items to received stock',282,'/reports/invoiced_received_stock'),(271,'Recovery Capacity Report','TREE.RECOVERY_CAPACITY_REPORT','Recovery Capacity Report',281,'/reports/recovery_capacity'),(280,'Hospital Reports','TREE.REPORTS','reports for the hospital modules',12,'/HOSPITAL_FOLDER/reports'),(281,'Finance Reports','TREE.REPORTS','reports for the accounting/finance module',5,'/FINANCE_FOLDER/reports'),(282,'Stock Reports','TREE.REPORTS','reports for the stock modules',160,'/STOCK_FOLDER/reports'),(283,'HR Reports','TREE.REPORTS','reports for the HR/Payroll modules',57,'/PAYROLL_FOLDER/reports'),(284,'Data Kit Reports','TREE.REPORTS','reports for the data collection modules',254,'/data_collection/reports'),(285,'Purchase Reports','TREE.REPORTS','reports for the purchasing modules',154,'/PURCHASE_FOLDER/reports'),(286,'Fee Center Reports','TREE.REPORTS','reports for the cost center modules',218,'/cost_center/reports'),(287,'Inventory Reports','TREE.REPORTS','reports for the inventory modules',138,'/inventory/reports'),(288,'[Stock] Movement Report','TREE.STOCK_MOVEMENT_REPORT','Stock Movement Report',282,'/reports/stock_movement_report'),(289,'[Stock] Expiration report','TREE.STOCK_EXPIRATION_REPORT','Stock expiration report',282,'/reports/stock_expiration_report'),(290,'[SETTINGS] Settings','TREE.STOCK_SETTINGS','Stock Settings',160,'/stock/setting'),(291,'[Stock] Dashboard','TREE.STOCK_DASHBOARD','Stock Dashboard',160,'/stock/dashboard'),(292,'[Stock] Changes Report','REPORT.STOCK_CHANGES.TITLE','Stock Changes Report',282,'/reports/stock_changes'),(293,'Aggregated consumption','TREE.AGGREGATED_STOCK_CONSUMPTION','Aggregated consumption',160,'/stock/aggregated_consumption'),(294,'Duplicate Lots','TREE.DUPLICATE_LOTS','The stock lots duplicates list',160,'/stock/lots/duplicates'),(295,'Rumer report','TREE.RUMER_REPORT','The rumer reports',282,'/reports/rumer_report'),(296,'Agg. Stock Consumption Report','REPORT.AGGREGATED_STOCK_CONSUMPTION.TITLE','Aggregated consumption',282,'/reports/aggregated_stock_consumption'),(297,'Journal Log','TREE.JOURNAL_LOG','The Journal log module',5,'/journal/log'),(298,'Cost Center Step-down','TREE.COST_CENTER_STEPDOWN','The fee center report with step-down algorithm',286,'/reports/cost_center_step_down'),(299,'Allocation Bases','TREE.COST_CENTER_ALLOCATION_KEYS','List cost center allocation bases with values',218,'/cost_center/allocation_bases'),(300,'Lost Stock Report','TREE.LOST_STOCK_REPORT','Report on stock lost during depot transfers',282,'/reports/lost_stock_report'),(301,'Purchase Prices Report','REPORT.PURCHASE_PRICES.TITLE','Report on purchase prices over time',285,'/reports/purchase_prices'),(302,'Cost Centers Accounts Report','TREE.COST_CENTER_ACCOUNTS_REPORT','Report of cc accounts values',286,'/reports/cost_center_accounts'),(303,'Cost Centers Balance Report','TREE.COST_CENTER_INCOME_EXPENSE_REPORT','Report of cc balance',286,'/reports/cost_center_income_and_expense'),(304,'Chargement stock FOSA','ODK.LOAD_FOSA_DATA','Chargement des data',160,'/odk/load_fosa_data');
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT '0',
  `deactivated` tinyint(1) NOT NULL DEFAULT '0',
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_1` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'root','*F49230C757A4CE929F54FE0E88446987C9CF8C8C','System Administrator',NULL,1,0,'2021-11-12 07:36:09','2021-11-05 15:19:54','2021-11-05 15:19:54'),(2,'cdr_manager','*581C3CF6220D141FD3CB9C6E20024E1878600FB2','CDR MANAGER','cdr@pcima.org',1,0,'2021-11-12 07:36:19','2021-11-05 15:39:34','2021-11-05 15:39:34');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `uuid` binary(16) NOT NULL,
  `user_id` smallint unsigned NOT NULL,
  `role_uuid` binary(16) NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `role_for_user` (`user_id`,`role_uuid`),
  KEY `user_role__role` (`role_uuid`),
  CONSTRAINT `user_role__role` FOREIGN KEY (`role_uuid`) REFERENCES `role` (`uuid`) ON UPDATE CASCADE,
  CONSTRAINT `user_role__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (_binary '\�I\�W>K\�U\�H:�ޣ',1,_binary '\�IN\�>K\�U\�H:�ޣ'),(_binary '\�,~D@���<�EE�x',2,_binary 'O�\��\�\�FP�\�\0���׵');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `village`
--

DROP TABLE IF EXISTS `village`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `village` (
  `uuid` binary(16) NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector_uuid` binary(16) NOT NULL,
  `longitude` decimal(19,6) DEFAULT NULL,
  `latitude` decimal(19,6) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `sector_id` (`sector_uuid`),
  CONSTRAINT `village__sector` FOREIGN KEY (`sector_uuid`) REFERENCES `sector` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `village`
--

LOCK TABLES `village` WRITE;
/*!40000 ALTER TABLE `village` DISABLE KEYS */;
INSERT INTO `village` VALUES (_binary '*�gG������/̛','Gombe',_binary '\�\�\�\�O ��m\��14P',NULL,NULL);
/*!40000 ALTER TABLE `village` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voucher` (
  `uuid` binary(16) NOT NULL,
  `date` datetime NOT NULL,
  `project_id` smallint unsigned NOT NULL,
  `reference` int unsigned NOT NULL DEFAULT '0',
  `currency_id` tinyint unsigned NOT NULL,
  `amount` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000',
  `description` text COLLATE utf8mb4_unicode_ci,
  `user_id` smallint unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type_id` smallint unsigned NOT NULL,
  `reference_uuid` binary(16) DEFAULT NULL,
  `edited` tinyint NOT NULL DEFAULT '0',
  `reversed` tinyint NOT NULL DEFAULT '0',
  `posted` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `voucher_1` (`project_id`,`reference`),
  KEY `project_id` (`project_id`),
  KEY `currency_id` (`currency_id`),
  KEY `user_id` (`user_id`),
  KEY `reference_uuid` (`reference_uuid`),
  CONSTRAINT `voucher__currency` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  CONSTRAINT `voucher__project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `voucher__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
INSERT INTO `voucher` VALUES (_binary '`\�\�s>Q\�U\�H:�ޣ','2021-11-05 16:52:54',1,1,2,1061.9900,'RECEPTION DES PRODUITS CORUS - PCIMA',1,'2021-11-05 16:59:38',14,NULL,0,0,0),(_binary '�\���B\�\�\���7�1�','2021-11-11 10:34:11',1,2,2,300.6000,'Entrée de stock par intégration',1,'2021-11-11 10:37:32',14,NULL,0,0,0);
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `voucher_before_insert` BEFORE INSERT ON `voucher` FOR EACH ROW SET NEW.reference = (SELECT IF(NEW.reference, NEW.reference, IFNULL(MAX(voucher.reference) + 1, 1)) FROM voucher WHERE voucher.project_id = new.project_id) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_UNSIGNED_SUBTRACTION,STRICT_ALL_TABLES' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`bhima`@`localhost`*/ /*!50003 TRIGGER `voucher_document_map` AFTER INSERT ON `voucher` FOR EACH ROW BEGIN
  INSERT INTO document_map
    SELECT new.uuid, CONCAT_WS('.', 'VO', project.abbr, new.reference) FROM project WHERE project.id = new.project_id ON DUPLICATE KEY UPDATE text=text;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `voucher_item`
--

DROP TABLE IF EXISTS `voucher_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voucher_item` (
  `uuid` binary(16) NOT NULL,
  `account_id` int unsigned NOT NULL,
  `debit` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000',
  `credit` decimal(19,4) unsigned NOT NULL DEFAULT '0.0000',
  `voucher_uuid` binary(16) NOT NULL,
  `document_uuid` binary(16) DEFAULT NULL,
  `entity_uuid` binary(16) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `cost_center_id` mediumint unsigned DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `account_id` (`account_id`),
  KEY `voucher_uuid` (`voucher_uuid`),
  KEY `document_uuid` (`document_uuid`),
  KEY `entity_uuid` (`entity_uuid`),
  KEY `voucher_item__cost_center_1` (`cost_center_id`),
  CONSTRAINT `voucher_item__account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`),
  CONSTRAINT `voucher_item__cost_center_1` FOREIGN KEY (`cost_center_id`) REFERENCES `cost_center` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `voucher_item__voucher` FOREIGN KEY (`voucher_uuid`) REFERENCES `voucher` (`uuid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher_item`
--

LOCK TABLES `voucher_item` WRITE;
/*!40000 ALTER TABLE `voucher_item` DISABLE KEYS */;
INSERT INTO `voucher_item` VALUES (_binary '`\�T�>Q\�U\�H:�ޣ',401,70.5900,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of F-100 (01BT9X2TRGFD)',NULL),(_binary '`\�Yd>Q\�U\�H:�ޣ',401,70.5900,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of F-100 (0180PW60X5NC)',NULL),(_binary '`\�\\5>Q\�U\�H:�ޣ',401,70.5900,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of F-100 (01DA1PORWPJY)',NULL),(_binary '`\�^\�>Q\�U\�H:�ޣ',401,70.5900,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of F-100 (0194XDBHPRL2)',NULL),(_binary '`\�af>Q\�U\�H:�ޣ',401,70.5900,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of F-100 (01AZZK6FIH9Q)',NULL),(_binary '`\�d�>Q\�U\�H:�ޣ',401,70.5900,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of F-100 (01FFTOMBROYW)',NULL),(_binary '`\�h�>Q\�U\�H:�ޣ',401,70.5900,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of F-100 (01BIMTJBFO99)',NULL),(_binary '`\�l�>Q\�U\�H:�ޣ',401,60.1200,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of F-75 (01GA83J8E655)',NULL),(_binary '`\�p�>Q\�U\�H:�ޣ',401,60.1200,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of F-75 (01FGHHFQBR3W)',NULL),(_binary '`\�s>Q\�U\�H:�ޣ',401,60.1200,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of F-75 (01FOBHELIIW8)',NULL),(_binary '`\�u�>Q\�U\�H:�ޣ',401,38.7500,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of Plumpy’Nut (00D37RCLRXP2)',NULL),(_binary '`\�x\Z>Q\�U\�H:�ޣ',401,38.7500,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of Plumpy’Nut (016ZTNKGWBY7)',NULL),(_binary '`\�z�>Q\�U\�H:�ޣ',401,38.7500,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of Plumpy’Nut (00TS5WHJ4EAG)',NULL),(_binary '`\�} >Q\�U\�H:�ޣ',401,38.7500,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of Plumpy’Nut (00SELHINH7RF)',NULL),(_binary '`\��>Q\�U\�H:�ޣ',401,38.7500,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of Plumpy’Nut (016LK7HPJOZ3)',NULL),(_binary '`\� >Q\�U\�H:�ޣ',401,38.7500,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of Plumpy’Nut (015R35EFACQT)',NULL),(_binary '`\�>Q\�U\�H:�ޣ',401,38.7500,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of Plumpy’Nut (00DKWAB2V5TK)',NULL),(_binary '`\�>>Q\�U\�H:�ޣ',401,38.7500,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of Plumpy’Nut (00R5WQI950PS)',NULL),(_binary '`\�>Q\�U\�H:�ޣ',401,38.7500,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of Plumpy’Nut (00X496ZC7OM0)',NULL),(_binary '`\�>Q\�U\�H:�ޣ',401,38.7500,0.0000,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'PCIMA - 1 Carton of Plumpy’Nut (00CX3D3WYF3H)',NULL),(_binary '`\�\�>Q\�U\�H:�ޣ',751,0.0000,1061.9900,_binary '`\�\�s>Q\�U\�H:�ޣ',_binary '\�\�\�\�tL��\�\�.$',NULL,'RECEPTION DES PRODUITS CORUS - PCIMA',NULL),(_binary '�\�oB\�\�\���7�1�',401,60.1200,0.0000,_binary '�\���B\�\�\���7�1�',_binary ')��H�A&��\�Y2�',NULL,'PCIMA - 1 Carton of F-75 (01ZXQYK32DMH)',NULL),(_binary '�\��QB\�\�\���7�1�',401,60.1200,0.0000,_binary '�\���B\�\�\���7�1�',_binary ')��H�A&��\�Y2�',NULL,'PCIMA - 1 Carton of F-75 (01SHEUO7TPBT)',NULL),(_binary '�\��(B\�\�\���7�1�',401,60.1200,0.0000,_binary '�\���B\�\�\���7�1�',_binary ')��H�A&��\�Y2�',NULL,'PCIMA - 1 Carton of F-75 (01OOB45O2TF4)',NULL),(_binary '�\��\"B\�\�\���7�1�',401,60.1200,0.0000,_binary '�\���B\�\�\���7�1�',_binary ')��H�A&��\�Y2�',NULL,'PCIMA - 1 Carton of F-75 (01NURKRYYJHA)',NULL),(_binary '�\��B\�\�\���7�1�',401,60.1200,0.0000,_binary '�\���B\�\�\���7�1�',_binary ')��H�A&��\�Y2�',NULL,'PCIMA - 1 Carton of F-75 (01UDYX69ML7S)',NULL),(_binary '�\�B\�\�\���7�1�',751,0.0000,300.6000,_binary '�\���B\�\�\���7�1�',_binary ')��H�A&��\�Y2�',NULL,'Entrée de stock par intégration',NULL);
/*!40000 ALTER TABLE `voucher_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ward`
--

DROP TABLE IF EXISTS `ward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ward` (
  `uuid` binary(16) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `service_uuid` binary(16) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `name_1` (`name`),
  KEY `ward__service` (`service_uuid`),
  CONSTRAINT `ward__service` FOREIGN KEY (`service_uuid`) REFERENCES `service` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ward`
--

LOCK TABLES `ward` WRITE;
/*!40000 ALTER TABLE `ward` DISABLE KEYS */;
/*!40000 ALTER TABLE `ward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekend_config`
--

DROP TABLE IF EXISTS `weekend_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weekend_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `weekend_config` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekend_config`
--

LOCK TABLES `weekend_config` WRITE;
/*!40000 ALTER TABLE `weekend_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `weekend_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-12  8:38:18