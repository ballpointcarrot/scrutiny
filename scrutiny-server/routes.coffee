controller = require('./controllers')

exports.build = (app) ->
  app.get('/', controller.home_index)
