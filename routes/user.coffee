UserRepository = require '../domain/domain.repository/userRepo'

createUer = (req, res)->
  serviceReq = {
    id: req.query.id,
    name: req.query.name,
    sex: req.query.sex
  }

  model = req.models.user
  userRepo = new UserRepository(model)
  userRepo.add([serviceReq],(err, items) ->
    if(err)
      res.send(err)

    serviceRes = items
    res.send(Json.stringify(serviceRes))
  )

exports.create = createUer