orm = require 'orm'

userDef = {
  tableName : "user",
  schema : {
    id : Number
    name : String,
    sex : Number,
  }
}
module.exports = (db, cb, next) ->
  db.define(userDef.tableName, userDef.schema, next)


exports.create = (user ,cb) ->
  user.add


