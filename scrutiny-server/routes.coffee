home = require './controllers/index.coffee'
sysnodes = require './controllers/sysnode.coffee'

exports.build = (app) ->
  app.get('/', home.home_index)
  app.get('/sysnodes', sysnodes.list_nodes, sysnodes.index)
  app.get('/sysnodes/:id', sysnodes.get_node, sysnodes.show)
  app.get('/sysnodes/new', sysnodes.new)
  app.post('/sysnodes', sysnodes.create_node, sysnodes.create)
  app.get('/sysnodes/:id/edit',sysnodes.get_node, sysnodes.edit)
  app.put('/sysnodes/:id',sysnodes.get_node, sysnodes.update)
  app.delete('/sysnodes/:id',sysnodes.get_node, sysnodes.delete)
