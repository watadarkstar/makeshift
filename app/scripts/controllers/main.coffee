'use strict';

angular.module('makeshiftApp')
	.controller('MainCtrl',  ($scope, $rootScope, $location, User) -> 
		$rootScope._ = _
		$scope.User = User
		$scope.$watch(->
			return User.user
		, ->
			$scope.User = User
		)
		$scope.getActive = (path) ->
			loc = $location.path()
			if loc.indexOf(path) != -1
				return "active"
			else
				return ""
	)
