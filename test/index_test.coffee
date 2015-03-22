chai = require 'chai'
chai.should()
expect = chai.expect

gulpStylusHelp = require '../index.js'

describe 'gulp-stylus-help', ->
  it 'should return through object', ->
    res = gulpStylusHelp()
    expect(res).to.contain.all.keys ['readable', 'writable']
