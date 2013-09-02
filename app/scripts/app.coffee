'use strict';

angular.module('makeshiftApp', [])
  .config( ($routeProvider) ->
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        access: {
          user: false
        }
      })
      .when('/login', {
        templateUrl: 'views/login.html',
        access: {
          user: false
        }
      })
      .when('/authenticate', {
        templateUrl: 'views/authenticate.html',
        access: {
          user: false
        }
      })
      .when('/user/:id/project/:id/', {
        templateUrl: 'views/view.html',
        access: {
          user: false
        }
      })
      .when('/project/new', {
        templateUrl: 'views/new.html',
        access: {
          user: true
        }
      })
      .when('/project/:id/edit', {
        templateUrl: 'views/edit.html',
        access: {
          user: true
        }
      })
      .otherwise({
        redirectTo: '/',
        access: {
          user: false
        }
      })
  ).
run(($location, $rootScope, User) ->
  $rootScope.$on('$routeChangeStart', (event, nextRoute, currentRoute) ->
    if User.user?
      if nextRoute.templateUrl is 'views/login.html'
        $location.path("views/main")
    else if nextRoute.access? and nextRoute.access.user
      $location.path("/")
  )
) 
