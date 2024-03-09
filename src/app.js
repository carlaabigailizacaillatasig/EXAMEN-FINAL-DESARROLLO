const express = require('express');
const path = require('path');
const morgan = require('morgan');
const mysql = require('mysql');
const myConnection = require('express-myconnection');

const app = express();

//importando rutas
const studentsRoutes = require('./routes/students');

//settings
app.set('port', process.env.PORT || 3000);
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

//midelwares
app.use(morgan('dev'));
app.use(myConnection(mysql, {
    host: 'localhost',
    user: 'root',
    port: '3306',
    database: 'Colegio'

}, 'single'));

app.use(express.urlencoded({extended: false}));

//routers

app.use('/', studentsRoutes);


//archivos estaticos
app.use(express.static(path.join(__dirname, 'public')));



app.listen(app.get('port'), ()=> {
    console.log('Server on port 3000');

});


