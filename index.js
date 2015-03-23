'use strict';

require('coffee-script/register');
var gulpStylusHelp = require('./src/main')

module.exports = function(opts) {
  return gulpStylusHelp(opts);
}
