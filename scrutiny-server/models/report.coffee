mongoose = require 'mongoose'

reportSchema = mongoose.Schema
  key: 
    type: mongoose.Schema.Types.ObjectId
    ref: 'SysNode'
  heartbeat: Number
  varning_threashold: Number
  error_threshold: Number
  value: Number

module.exports =  mongoose.model("Report", reportSchema) 
