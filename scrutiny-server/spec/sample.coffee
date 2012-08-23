vows = require 'vows'
  , assert = require 'assert'
  
vows.describe("a sample test").addBatch
  "when showing a successful test" :
    topic: -> return null
    ,
    'should be null': (topic) ->
      assert.isNull topic
  ,
  "when showing a pending test" :
    "pending"
  ,
  "When trying something new":
    "pending"
.export(module)
