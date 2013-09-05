'use strict';

angular.module('makeshiftApp')
  .service 'Project', (Baseapi) ->
  	service = {}
  	console.log "test"
    service.save = ->
    	console.log "foo"
    return service
