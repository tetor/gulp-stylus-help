through = require('through2')
stylusHelp = require('stylus-help')
gutil = require('gulp-util')

PLUGIN_NAME = 'gulp-stylus-help'

module.exports = ->
  through.obj (file, enc, cb) ->
    cb null, file unless file?
    cb new gutil.PluginError(PLUGIN_NAME, 'Streaming not supported') if file.isStream()
