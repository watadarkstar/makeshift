'use strict'

describe 'Service: project', () ->

  # load the service's module
  beforeEach module 'makeshiftApp'

  # instantiate service
  project = {}
  beforeEach inject (_project_) ->
    project = _project_

  it 'should do something', () ->
    expect(!!project).toBe true
