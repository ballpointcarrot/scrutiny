SysNode = require '../models/sysnode.coffee'

# GET sysnodes/
exports.list_nodes = (req,res) ->
  SysNode.find().limit(20).exec (err, nodes) ->
    if err 
      handleError(err)
    res.render 'sysnodes/index',
      title: "System Nodes"
      nodes: nodes
