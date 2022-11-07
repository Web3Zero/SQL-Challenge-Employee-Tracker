const mysql = require('mysql2/promise');


function connect(){

return mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: ''
    database: 'employee_cms_hw'
})

return connection.connect()
}

module.exports = {
    connect,
}