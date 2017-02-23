(function() {
  'use strict';
  module.exports = function(ndx) {
    return ndx.app.use('/:var(api|auth)?', function(req, res, next) {
      res.setHeader('Access-Control-Allow-Origin', '*');
      res.setHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Authorization');
      res.setHeader('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE');
      return next();
    });
  };

}).call(this);
