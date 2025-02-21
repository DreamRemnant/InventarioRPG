const mysql = require("mysql2");

const connection = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    database: process.env.DB_NAME
});

connection.connect((err) => {
    if (err) {
        console.log('Falló conexión a base de datos !!!', err);
    } else {
        console.log('Conexión exitosa a la base de datos');
    }
});

module.exports = connection;