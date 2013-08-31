'use strict';

angular.module('makeshiftApp', [])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html'
      })
      .when('/login', {
        templateUrl: 'views/login.html'
      })
      .when('/user/:id/project/:id/', {
        templateUrl: 'views/view.html'
      })
      .when('/project/new', {
        templateUrl: 'views/new.html'
      })
      .when('/project/:id/edit', {
        templateUrl: 'views/edit.html'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
