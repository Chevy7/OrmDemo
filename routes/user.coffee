UserRepository = require '../domain/domain.repository/userRepo'

createUser = (req, res)->
  serviceReq = {
    id: req.query.id,
    name: req.query.name,
    sex: req.query.sex
  }

  model = req.models.user
  userRepo = new UserRepository(model)
  userRepo.add([serviceReq],(err, result) ->
    if(err)
      res.send(err)

    serviceRes = result
    res.send(JSON.stringify(serviceRes))
  )

findUser = (req, res)->
  serviceReq = {
    id: req.query.id,
  }

  model = req.models.user
  userRepo = new UserRepository(model)
  userRepo.findFirstOrDefault([serviceReq], null, (err, result) ->
    if(err)
      res.send(err)

    serviceRes = result
    res.send(JSON.stringify(serviceRes))
  )

findAllUser = (req, res)->
  serviceReq = {
    sex: req.query.sex
  }

  model = req.models.user
  userRepo = new UserRepository(model)
  userRepo.findAll([serviceReq], null, null, (err, result) ->
    if(err)
      res.send(err)

    serviceRes = result
    res.send(JSON.stringify(serviceRes))
  )

findByPagedUser = (req, res)->
  serviceReq = {
    sex: req.query.sex
  }
  pageNo = req.query.pageNo
  pageSize = req.query.pageSize

  model = req.models.user
  userRepo = new UserRepository(model)
  userRepo.findByPaged(serviceReq, null, pageNo, pageSize, (err, result) ->
    if(err)
      res.send(err)

    serviceRes = result
    res.send(JSON.stringify(serviceRes))
  )

modifyUser = (req, res)->
  serviceReq = {
    id: req.query.id,
    name: req.query.name,
    sex: req.query.sex
  }

  model = req.models.user
  userRepo = new UserRepository(model)
  userRepo.update(serviceReq.id, serviceReq, (err, result) ->
    if(err)
      res.send(err)

    serviceRes = result
    res.send(JSON.stringify(serviceRes))
  )

exports.create = createUser
exports.find = findUser
exports.findAll = findAllUser
exports.findByPaged = findByPagedUser
exports.modify = modifyUser