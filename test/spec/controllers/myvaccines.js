'use strict';

describe('Controller: MyvaccinesCtrl', function () {

  // load the controller's module
  beforeEach(module('travelBaeApp'));

  var MyvaccinesCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    MyvaccinesCtrl = $controller('MyvaccinesCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(MyvaccinesCtrl.awesomeThings.length).toBe(3);
  });
});
