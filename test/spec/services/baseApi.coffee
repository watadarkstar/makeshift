'use strict'

describe 'Service: baseApi', () ->

  # load the service's module
  beforeEach module 'makeshiftApp'

  # instantiate service
  baseApi = {}
  beforeEach inject (_baseApi_) ->
    baseApi = _baseApi_

  it 'should do something', () ->
    expect(!!baseApi).toBe true
