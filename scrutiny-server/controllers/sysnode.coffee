SysNode = require '../models/sysnode.coffee'

exports.get_node = (req,res, next) ->
  SysNode.findOne({_id: req.params.id}, (err, obj) ->
    res.locals.node = obj
    next()
  )
  
# GET sysnodes/
exports.list_nodes = (req,res, next) ->
  SysNode.find().limit(20).exec (err, nodes) ->
    if err 
      handleError(err)
    res.locals.title = "System Nodes"
    res.locals.nodes = nodes
    next()
  
exports.index = (req, res) ->
  res.render 'sysnodes/index'

exports.show = (req, res) ->
  res.render 'sysnodes/show',
    title: "System Node"
