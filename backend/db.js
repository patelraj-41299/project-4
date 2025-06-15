const mysql = require('mysql2/promise');

const db = mysql.createPool({
  host: 'localhost',         // 🔥 Not RDS
  user: 'root',               // 🔥 Or your MySQL username
  password: 'yourpassword',   // 🔥 Your local MySQL password
  database: 'ecommerce'
});

module.exports = db;
