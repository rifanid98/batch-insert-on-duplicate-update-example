/**
 * Config MySQL
 * .
 * load librari mysql dan inisiasi mysql
 * Load MySQL library & Initiation MySQL Config
 */

// import custom global config
const config = require("../configs/global");
// import mysql library
const mysql = require("mysql2");
// instance of mysql
const conn = mysql.createConnection({
  host: config.mysql.host,
  user: config.mysql.user,
  password: config.mysql.password,
  database: config.mysql.database,
  multipleStatements: true
});

module.exports = conn;
