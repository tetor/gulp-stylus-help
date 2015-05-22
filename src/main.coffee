through = require('through2')
# stylusHelp = require('stylus-help')
gutil = require('gulp-util')
PluginError = gutil.PluginError

PLUGIN_NAME = 'gulp-stylus-help'

module.exports = (file, opt) ->
  transfar = (file, enc, cb) ->
    # Guard sentence
    cb null, file unless file?
    if file.isStream()
      this.emit 'error', new PluginError(PLUGIN_NAME, 'Streaming not supported')
      cb(null, file)

  through.obj(transfar)
