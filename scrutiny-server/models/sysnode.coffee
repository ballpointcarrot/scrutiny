mongoose = require 'mongoose'

nodeSchema = mongoose.Schema
  name: String
  description: String

module.exports = mongoose.model("SystemNode", nodeSchema)
