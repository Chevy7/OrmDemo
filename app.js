
/**
 * Module dependencies.
 */

var express = require('express');
var routes = require('./routes');
var user = require('./routes/user');
var http = require('http');
var path = require('path');
var orm = require('orm');
var config = require('./config')

var app = express();

//
app.use(orm.express(config.mysql, {
    define: function (db, models, next) {
        db.load('./models/modelLoader', function (err) {
            var user = db.models.user;
        });

        db.sync(function (err) {
            if(!err)
                console.log("done!");
            else
                console.log(err);
        });

        next();
    }
}));


// all environments
app.set('port', process.env.PORT || 3000);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');
app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.json());
app.use(express.urlencoded());
app.use(express.methodOverride());
app.use(app.router);
app.use(express.static(path.join(__dirname, 'public')));

// development only
if ('development' == app.get('env')) {
  app.use(express.errorHandler());
}

app.get('/', routes.index);
app.get('/users', user.list);

http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});
