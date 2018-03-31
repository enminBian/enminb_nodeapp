var express = require('express');
var connect = require('../utils/sqlConnect');
var router  = express.Router();

router.get('/', function (req, res) {
    connect.query('SELECT * FROM tbl_movies WHERE movies_genre=3', function (err, result) {
        if (err) {
            throw err;
            console.log(err);
        } else {
            console.log(result);
            res.render('action', {
                title  : 'Videoapp - Action Movies',
                message: 'Action Movies',
                data: result,
                parents: true,
                children: false
            });
        }
    });
});

module.exports = router;
