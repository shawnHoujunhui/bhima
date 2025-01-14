angular.module('bhima.services')
  .service('ODKSettingsService', ODKSettingsService);

ODKSettingsService.$inject = ['PrototypeApiService'];

function ODKSettingsService(Api) {
  const baseUrl = '/admin/odk-settings/';
  const service = new Api(baseUrl);

  //
  service.syncEnterprise = () => {
    return service.$http.post(baseUrl.concat('sync-enterprise'))
      .then(service.util.unwrapHttpResponse);
  };

  //
  service.syncAppUsers = () => {
    return service.$http.post(baseUrl.concat('sync-app-users'))
      .then(service.util.unwrapHttpResponse);
  };

  //
  service.syncForms = () => {
    return service.$http.post(baseUrl.concat('sync-forms')).then(service.util.unwrapHttpResponse);
  };

  service.syncSubmissions = () => {
    return service.$http.post(baseUrl.concat('sync-submissions')).then(service.util.unwrapHttpResponse);
  };
  //
  service.syncStockMovements = () => {
    return service.$http.post(baseUrl.concat('sync-stock-movements'))
      .then(service.util.unwrapHttpResponse);
  };

  service.getProjectSettings = () => {
    return service.$http.get(baseUrl.concat('project-settings'))
      .then(service.util.unwrapHttpResponse);
  };

  service.getAppUsers = () => {
    return service.$http.get(baseUrl.concat('app-users'))
      .then(service.util.unwrapHttpResponse);
  };

  service.getAppUserQRCode = (userId) => {
    return service.$http.get(baseUrl.concat(`app-users/${userId}/qrcode`))
      .then(service.util.unwrapHttpResponse);
  };

  service.getUserSettings = () => {
    // todo
  };

  return service;
}
