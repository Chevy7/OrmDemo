// Generated by CoffeeScript 1.7.1
(function() {
  var create;

  create = function(addModel, model, cb) {
    return model.Create(addModel.toDataModel(), function(err, item) {
      if (err) {
        cb(err);
      }
      return cb(item);
    });
  };

  exports.create = create;

}).call(this);

//# sourceMappingURL=userRepo.map
