var mysql  = require('mysql');
var config = require('../config');

//Mac
// var connect = mysql.createConnection({
//    host    : config.host,
//    port    : config.port,
//    user    : config.user,
//    password: config.password,
//    database: config.database
// });

//Windows
var connect = mysql.createConnection({
    host    : config.host,
    user    : config.user,
    password: config.password,
    database: config.database
});

module.exports = connect;
