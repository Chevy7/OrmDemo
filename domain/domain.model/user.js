// Generated by CoffeeScript 1.7.1
(function () {
    var User;

    User = (function () {
        function User() {
        }

        User.prototype.construct = function (user) {
            this.id = user.id;
            this.name = user.name;
            return this.sex = user.sex;
        };

        User.prototype.toDataModel = function () {
            var user;
            return user = {
                id: this.id,
                name: this.name,
                sex: this.sex
            };
        };

        return User;

    })();

}).call(this);

//# sourceMappingURL=user.map
