'use strict';

angular.module('makeshiftApp')
  .controller('MainCtrl', function ($scope, $rootScope, User) {
    $rootScope._ = _;
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
