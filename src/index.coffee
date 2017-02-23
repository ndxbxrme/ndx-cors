'use strict'

module.exports = (ndx) ->
  ndx.app.use '/api/*', (req, res, next) ->
    res.setHeader 'Access-Control-Allow-Origin', '*'
    res.setHeader 'Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    res.setHeader 'Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE'
    next()