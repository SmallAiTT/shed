var express = require('express');
var logger = require('morgan');
var app = module.exports = express();
var bodyParser = require('body-parser');
var path = require("path");

// app middleware
app.engine('.html', require('ejs').__express);

//配置
var ttCfg = require("tt-cfg");
var expressCfg = ttCfg.expressCfg;
app.use(express.static( path.join(__dirname, "public")));
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "html");
//ttCfg.embed(app);

require("tt-msg").embed(app);
require("tt-err").embed(app, function(){
    app.use(bodyParser());
    require("tt-db").embed(app);
    require("tt-pvl").embed(app);
    require("tt-shed").embed(app);
});
/* istanbul ignore next */
if (!module.parent) {
    app.listen(expressCfg.port);
    console.log('Express started on port ' + expressCfg.port);
}