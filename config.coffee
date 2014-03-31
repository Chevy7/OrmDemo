exports.mysql = {
  database : "test",
  protocol : "mysql",
  host     : "112.124.100.167",
  port     : 3306,         # optional, defaults to database default
  username : "root",
  password : "123456",
  query    : {
  pool  :  true,    # optional, false by default
  debug : true    # optional, false by default
  }
}