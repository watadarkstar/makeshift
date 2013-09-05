'use strict';

angular.module('makeshiftApp')
  .service 'Baseapi', () ->
    service = {
    	resource: null
    }

    resource = (url, data) ->
    	service.resource = $resource(url, data)
    	console.log "resource"
	
    save = ->
    	console.log "save"

    return service