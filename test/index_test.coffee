chai = require 'chai'
chai.should()
expect = chai.expect
assert = chai.assert

path = require 'path'
gulp = require 'gulp'

gulpStylusHelp = require '../index.js'

describe 'gulp-stylus-help', ->

  it 'should return the through object', ->
    res = gulpStylusHelp()
    expect(res).to.contain.all.keys ['readable', 'writable']

  it 'throw error when it is passed the stream', (done) ->
    gulp.src(path.join(__dirname, 'fixture', 'empty.styl'), {buffer: false})
      .pipe gulpStylusHelp()
      .on 'error', (err) ->
        err.message.should.equal('Streaming not supported')
        done()
      .on 'data', () ->
        assert(false, 'error does not occur')
        done()
