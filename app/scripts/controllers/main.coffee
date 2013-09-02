'use strict';

angular.module('makeshiftApp')
	.controller('MainCtrl',  ($scope, $rootScope, User) -> 
		$rootScope._ = _
		$scope.User = User
		$scope.$watch(->
			return User.user
		, ->
			$scope.User = User
		)
	)
