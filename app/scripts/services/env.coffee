'use strict';

angular.module('makeshiftApp')
	.service('Env', () ->
		service = {
			env: "local"
		}

		service.domain = location.href.replace(location.hash, '')

		service.isLocal = ->
			return env is "local"

		service.isDev = ->
			return env is "dev"

		service.isProd = ->
			return env is "prod"

		return service
	)