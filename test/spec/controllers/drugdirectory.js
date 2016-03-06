'use strict';

describe('Controller: DrugdirectoryCtrl', function () {

  // load the controller's module
  beforeEach(module('travelBaeApp'));

  var DrugdirectoryCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    DrugdirectoryCtrl = $controller('DrugdirectoryCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(DrugdirectoryCtrl.awesomeThings.length).toBe(3);
  });
});
