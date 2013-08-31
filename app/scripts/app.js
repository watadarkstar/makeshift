'use strict';

angular.module('makeshiftApp', [])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .when('/login', {
        templateUrl: 'views/login.html'
      })
      .when('/view', {
        templateUrl: 'views/view.html'
      })
      .when('/create', {
        templateUrl: 'views/create.html'
      })
      .when('/edit', {
        templateUrl: 'views/edit.html'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
