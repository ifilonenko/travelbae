'use strict';

/**
 * @ngdoc overview
 * @name travelBaeApp
 * @description
 * # travelBaeApp
 *
 * Main module of the application.
 */
angular
  .module('travelBaeApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl',
        controllerAs: 'main'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl',
        controllerAs: 'about'
      })
      .when('/searchCountry', {
        templateUrl: 'views/searchcountry.html',
        controller: 'SearchcountryCtrl',
        controllerAs: 'searchCountry'
      })
      .when('/myVaccines', {
        templateUrl: 'views/myvaccines.html',
        controller: 'MyvaccinesCtrl',
        controllerAs: 'myVaccines'
      })
      .when('/drugDirectory', {
        templateUrl: 'views/drugdirectory.html',
        controller: 'DrugdirectoryCtrl',
        controllerAs: 'drugDirectory'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
