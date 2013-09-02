'use strict';

angular.module('makeshiftApp')
  .controller('LoginCtrl',  ($scope, User) ->
  	scope.login = ->
  		User.login()
  )
