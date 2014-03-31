module.exports = (db, cb) ->
  db.load "./user", (err) ->
    cb(err) if (err)

  cb()