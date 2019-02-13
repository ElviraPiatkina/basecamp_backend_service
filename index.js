const mysql = require('mysql');
const express = require('express');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true}));

app.get('/', (req, res) => {
    res.send('Hello from Express')
})

app.listen(port, (err) => {
    if (err) {
        return console.log('smth bad happend', err)
    }
    console.log(`server is listening on ${port}`)
})

const connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: 'password',
    database: 'tvshows'
});

connection.connect((err) => {
    if(err)
    console.log('DB connection failed \n Error :' + JSON.stringify(err, undefined, 2));
    else
    console.log('DB connect successfully')
});
