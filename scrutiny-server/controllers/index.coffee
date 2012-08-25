# GET home page.
exports.home_index = (req,res) ->
  res.render 'index',
    title: 'Express'
