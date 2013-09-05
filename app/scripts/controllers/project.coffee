'use strict'

angular.module('makeshiftApp')
	.controller 'ProjectCtrl', ($scope, Project) ->
		$scope.project = {
			nmilestones: 0
		}
		$scope.getMilestones = ->
			arr = []
			for i in parseInt($scope.project.nmilestones)
				console.log i
			return arr

		$scope.save = ->
			console.log "save"
			console.log $scope.project