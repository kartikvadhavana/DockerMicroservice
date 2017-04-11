var express = require('express');


module.exports = function () {
    var app = express();

    app.get('/', function (req, res) {
        res.send('Integrated with docker and jenkins!');
    });

    return app;
}