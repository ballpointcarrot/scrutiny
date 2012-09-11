# Module dependencies
express = require 'express'
  , routes = require './routes.coffee'
  , http = require 'http'
  , path = require 'path'
  , assets = require 'connect-assets'

app = express()

app.configure ->
  app.set 'port', process.env.PORT || 3000
  app.set 'views', "#{__dirname}/views"
  app.set 'view engine', 'jade'
  app.use express.favicon()
  app.use express.logger('dev')
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use app.router

app.configure 'development', ->
  db = require './config/testdb.coffee'
  app.use express.errorHandler()
  app.use assets
    build: true
    compress: false
    buildDir: false

app.configure 'production', ->
  app.use assets
    build: true
    compress: true

# Routes for Scrutiny Server
routes.build app

# Run the whole shebang!
http.createServer(app).listen app.get('port'), ->
  console.log "Express server listening on port #{app.get 'port'}"
