var express = require('express');
var connect = require('../utils/sqlConnect');
var router  = express.Router();

router.get('/', function (req, res) {
    connect.query('SELECT * FROM tbl_movies WHERE mov_genre=3', function (err, result) {
        if (err) {
            throw err;
            console.log(err);
        } else {
            console.log(result);
            res.render('marvle', {
                title  : 'Video Player - Marvel Movies',
                message: 'Marvel Movies For Family',
                data: result
            });
        }
    });
});

module.exports = router;
