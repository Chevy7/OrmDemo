orm = require 'orm'

userDef = {
  tableName: "user",
  schema:
  {
    id: Number
    name: String,
    sex: Number,
  }
}
module.exports = (db, cb) ->
  user = db.define(userDef.tableName, userDef.schema)
  cb()

