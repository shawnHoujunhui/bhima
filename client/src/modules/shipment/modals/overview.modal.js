angular.module('bhima.controllers')
  .controller('ShipmentOverviewModalController', ShipmentOverviewModalController);

ShipmentOverviewModalController.$inject = [
  '$window', 'params', 'ShipmentService', 'NotifyService', '$uibModalInstance',
];

function ShipmentOverviewModalController($window, params, Shipments, Notify, Instance) {
  const vm = this;
  const identifier = params.uuid;

  vm.cancel = Instance.dismiss;

  load();

  function load() {
    if (identifier) {
      Shipments.read(identifier)
        .then(shipment => {
          vm.shipment = shipment;
          return Shipments.overview(identifier);
        })
        .then(result => {
          vm.step = result.step;
          vm.locations = result.locations;
          vm.packingList = result.packingList;
        })
        .catch(Notify.handleError);
    }
  }
}
