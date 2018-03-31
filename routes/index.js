var express = require('express');
var router  = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {
    res.render('home', {
        title  : 'Video App',
        message: 'Welcome to Videoapp!',
        parents: true,
        children: false
    });
});

module.exports = router;
