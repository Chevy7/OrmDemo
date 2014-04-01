class Repository
  construct:
    (modelDef) ->
      @modelDef = modelDef

  find:
    (conditions, limit, order, callback) ->
      @modelDef.find(conditions, limit, order, (err, models) ->
        if(err)
          callback(err)
        callback(err, models)
      )

  findFirstOrDefault:
    (conditions, order, callback) ->
      @modelDef.find(conditions, 1, order, (err, model) ->
        if(err)
          callback(err)
        callback(err, model)
      )

  findByPaged:
    (conditions, order, pageNo, pageSize, callback) ->
      @modelDef.find(conditions, order).offset((pageNo - 1) * pageSize).limit(pageSize).run((err, pagedModels) ->
        if(err)
          callback(err)
        callback(err, pagedModels)
      )

  count:
    (conditions, callback) ->
      @modelDef.count(conditions, (err, count) ->
        if(err)
          callback(err)
        callback(err, count)
      )

  exists:
    (conditions, callback) ->
      @modelDef.exists(conditions, (err, exists) ->
        if(err)
          callback(err)
        callback(err, exists)
      )

  remove:
    (primaryKey, callback) ->
      @modelDef.get(primaryKey, (err, model) ->
        if(err)
          callback(err)
        model.remove((err) ->
          if(err)
            callback(err)
          callback(err, true)
        )
      )

  update:
    (primaryKey, conditions, callback) ->
      @modelDef.get(primaryKey, (err, model) ->
        if(err)
          callback(err)
        model.save(conditions, (err) ->
          if(err)
            callback(err)
          callback(err, true)
        )
    )

  add:
    (items, callback) ->
      @modelDef.create(items, (err, items) ->
        if(err)
          callback(err)
        callback(err, items)
      )

module.exports = Repository;

