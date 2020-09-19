/**
 * Config MySQL
 * .
 * load config mysql
 */
const conn = require('../helpers/mysql');

/**
 * CRUD
 */

function getDataById(id) {
  return new Promise((resolve, reject) => {
      const sqlQuery = "SELECT * FROM matkul WHERE id = ?";
      conn.query(sqlQuery, id, function (error, result) {
          if (error) {
              reject(error);
          }
          resolve(result);
      });
  });
}


module.exports = {
  getDataById
}