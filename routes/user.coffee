user = require '../models/user'

createUer = (req, res)->
  serviceReq = {
    id: req.body.id,
    name: req.body.name,
    sex: req.body.sex
  }
  createUerImp(serviceReq, createUerImpCallBack, res)

createUerImp = (serviceReq, cb, res) ->
  user.create(serviceReq ,(err ,serviceRes) ->cb(err,res,serviceRes))

createUerImpCallBack = (err, res, serviceRes)->
  res.send(Json.stringify(serviceRes))

exports.create = createUer