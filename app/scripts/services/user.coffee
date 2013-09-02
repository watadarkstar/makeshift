'use strict';

angular.module('makeshiftApp')
	.service('User', ($location, Env) ->
		service = {
			user: null
		}

		service.loginTwitter = ->
			callback_url = "http://makeshift-rails.herokuapp.com/signin?callback_url=" + encodeURIComponent(Env.domain + "#/authenticate")
			window.location = callback_url
		
		service.authenticate = (auth_token) ->
			service.user = {
				auth_token: auth_token
			}

		return service
	)