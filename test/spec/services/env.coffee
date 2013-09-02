'use strict'

describe 'Service: env', () ->

  # load the service's module
  beforeEach module 'makeshiftApp'

  # instantiate service
  env = {}
  beforeEach inject (_env_) ->
    env = _env_

  it 'should do something', () ->
    expect(!!env).toBe true
