var express = require('express');
var connect = require('../utils/sqlConnect');
var router  = express.Router();

router.get('/', function (req, res) {
    connect.query('SELECT * FROM tbl_movies WHERE movies_genre=1', function (err, result) {
        if (err) {
            throw err;
            console.log(err);
        } else {
            console.log(result);
            res.render('children', {
                title  : 'Videoapp - Children Movies',
                message: 'Children Movies',
                data: result,
                parents: false,
                children: true
            });
        }
    });
});

module.exports = router;
