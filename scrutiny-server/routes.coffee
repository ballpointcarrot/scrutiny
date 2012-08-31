home = require('./controllers/index.coffee')

exports.build = (app) ->
  app.get('/', home.home_index)
