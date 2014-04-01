class User
  construct: (user) ->
    @id = user.id
    @name = user.name
    @sex = user.sex

  toDataModel: () ->
    user = {
      id: @id,
      name: @name,
      sex: @sex,
    }
