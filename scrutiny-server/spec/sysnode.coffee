vows = require 'vows',
  assert= require 'assert',
  mongoose = require 'mongoose',
  db = require '../config/testdb.coffee'

SysNode = require '../models/sysnode.coffee'
vows.describe('SysNode objects').addBatch
  "Creation" :
    topic: ->
      return new SysNode({name: 'HeartOfGold', description: "laptop"})
    ,
    "should get key when saved": (node) ->
      assert.instanceOf node, mongoose.Model
      node.save()
      assert.isNotNull node.id
.export(module)
