'use strict'

angular.module('makeshiftApp')
	.controller 'AuthenticateCtrl', ($scope, $routeParams, User) ->
		if $routeParams.auth_token?
			User.authenticate($routeParams.auth_token)