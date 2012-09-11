vows = require 'vows',
assert= require 'assert',
mongoose = require 'mongoose'

db = require "#{process.env.SCRUTINY_HOME}/config/testdb.coffee"
SysNode = require "#{process.env.SCRUTINY_HOME}/models/sysnode.coffee"
Report = require "#{process.env.SCRUTINY_HOME}/models/report.coffee"

vows.describe('SysNode objects').addBatch
  "Creation" :
    topic:
      new SysNode({name: 'HeartOfGold', description: "laptop"})
    ,
    "should have a key": (node) ->
      assert.instanceOf node, mongoose.Model
      assert.isNotNull node._id
  "Associations":
    topic: new SysNode({name: "HeartOfGold", description: "Laptop"})
    , 
    "Should have a set of reports": (node) ->
      assert.isArray node.reports
  "Validations":
    topic: ->
      node = new SysNode
      node.validate this.callback
      return
    ,
    "requires a name": (err, something) ->
      assert.equal err.errors.name.message, "Validator \"required\" failed for path name"
.export(module)
