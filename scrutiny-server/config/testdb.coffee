mongoose = require 'mongoose'
dbhost = "localhost"
dbname = "scrutiny-server-test"
module.exports = mongoose.connect(dbhost, dbname)
