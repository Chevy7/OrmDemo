Repository = require '.../repository'

class UserRepo extends Repository
  construct: super(@modelDef)

module.exports = UserRepo