create = (addModel, model, cb)->
  model.Create(addModel.toDataModel(), (err, item) ->
    if(err)
      cb(err)
    cb(item);
  )

exports.create = create
