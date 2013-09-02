'use strict';

angular.module('makeshiftApp')
	.service('User', ($location, Env) ->
		service = {
			user: null
		}
		service.login = ->
			callback_url = "http://makeshift-rails.herokuapp.com/signin?callback_url=" + encodeURIComponent(Env.domain + "/#/authenticate")
			window.location = callback_url


		return service
	)