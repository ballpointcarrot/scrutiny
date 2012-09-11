mongoose = require 'mongoose'

nodeSchema = mongoose.Schema
  name: 
    type: String
    required: true
  description: String
  reports: [{type: mongoose.Schema.Types.ObjectId, ref: 'Report' }]

sysnode = mongoose.model("SystemNode", nodeSchema)


module.exports = sysnode
