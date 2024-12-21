var mysql = require('mysql2');

var pool = mysql.createPool({
    connectionLimit: 10,
    host: 'localhost',
    user: 'root',
    password: '19072005',
    database: 'KostQuKost',
});

pool.getConnection(function(err, connection) {
    if (err) {
        console.error('Error connecting to the database:', err);
        return;
    }
    console.log("Database Connected");

    connection.release();
});

module.exports = pool;