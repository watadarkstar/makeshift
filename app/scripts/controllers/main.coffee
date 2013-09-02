'use strict';

angular.module('makeshiftApp')
	.controller('MainCtrl',  ($scope, $rootScope, User) -> 
		$rootScope._ = _
		$scope.login = () ->
			console.log "login"
			User.login()
	)
