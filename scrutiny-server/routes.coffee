home = require('./controllers/index.coffee')
sysnodes = require './controllers/sysnode.coffee'

exports.build = (app) ->
  app.get('/', home.home_index)
  app.get('/sysnodes/', sysnodes.list_nodes)
