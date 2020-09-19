/**
 * Config MySQL
 * .
 * load config mysql
 */
const conn = require('../helpers/mysql');

/**
 * Helpers
 */
const myHelpers = require('../helpers/myHelpers');

/**
 * CRUD
 */
function getDataById(id) {
  return new Promise((resolve, reject) => {
      const sqlQuery = "SELECT * FROM scores WHERE id = ?";
      conn.query(sqlQuery, id, function (error, result) {
          if (error) {
              reject(error);
          }
          resolve(result);
      });
  });
}

function addData(data) {
  return new Promise((resolve, reject) => {
    const sqlQuery = "INSERT INTO scores SET ?";
    conn.query(sqlQuery, data, function (error, result) {
      if (error) {
        reject(error);
      }
      resolve(result);
    })
  })
}

function updateData(data, id) {
  return new Promise((resolve, reject) => {
    const sqlQuery = "UPDATE scores SET ? WHERE id = ?";
    conn.query(sqlQuery, [data, id], function (error, result) {
      if (error) {
        reject(error);
      }
      resolve(result);
    })
  })
}

function checkData(mahasiswa_id, matkul_id) {
  return new Promise((resolve, reject) => {
    const sqlQuery = "SELECT * FROM scores WHERE mahasiswa_id = ? AND matkul_id = ?";
    conn.query(sqlQuery, [mahasiswa_id, matkul_id], function (error, result) {
      if (error) {
        reject(error);
      }
      resolve(result);
    })
  })
}

function deleteData(id) {
  return new Promise((resolve, reject) => {
    const sqlQuery = "DELETE FROM scores WHERE id = ?";
    conn.query(sqlQuery, id, function (error, result) {
      if (error) {
        reject(error);
      }
      resolve(result);
    })
  })
}

module.exports = {
  getDataById,
  addData,
  checkData,
  deleteData,
  updateData
}