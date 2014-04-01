userRepo = require '../domain/domain.repository/userRepo'

createUer = (req, res)->
  serviceReq = {
    id: req.body.id,
    name: req.body.name,
    sex: req.body.sex
  }

  model = req.model.user

  createUerImp(serviceReq, model, res, createUerImpCallBack)

createUerImp = (serviceReq, model, res, cb) ->
  userRepo.create(serviceReq, model, (err, serviceRes) ->
    cb(err, res, serviceRes))

createUerImpCallBack = (err, res, serviceRes)->
  res.send(Json.stringify(serviceRes))

exports.create = createUer