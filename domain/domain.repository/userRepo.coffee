Repository = require '../../repository'

class UserRepo extends Repository
  constructor: super(@modelDef)

module.exports = UserRepo