'use strict'

describe 'Controller: AuthenticateCtrl', () ->

  # load the controller's module
  beforeEach module 'makeshiftApp'

  AuthenticateCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    AuthenticateCtrl = $controller 'AuthenticateCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
