// Generated by CoffeeScript 1.7.1
(function() {
  module.exports = function(db, cb) {
    db.load("./user", function(err) {
      if (err) {
        return cb(err);
      }
    });
    return cb();
  };

}).call(this);

//# sourceMappingURL=modelLoader.map
