'use strict';

angular.module('makeshiftApp')
	.service('User', ($location, Env) ->
		console.log $.cookie
		$.cookie.json = true
		userCache = $.cookie('user')

		if userCache?
		    service = { user: userCache }
		else
			service = {
				user: null,
				auth_token: null
			}

		service.loginTwitter = ->
			callback_url = "http://makeshift-rails.herokuapp.com/signin?callback_url=" + encodeURIComponent(Env.domain + "#/authenticate")
			window.location = callback_url
		
		service.authenticate = (auth_token) ->
			service.user = {
				auth_token: auth_token
			}
			$.cookie('user', service.user)

		service.logout = ->
			service.user = null
			$.removeCookie('user')
			$location.path("/")

		return service
	)