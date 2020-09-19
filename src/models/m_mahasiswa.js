/**
 * Config MySQL
 * .
 * load config mysql
 */
const conn = require("../helpers/mysql");

/**
 * CRUD
 */
function getDataById(id) {
    return new Promise((resolve, reject) => {
        const sqlQuery = "SELECT * FROM mahasiswa WHERE id = ?";
        conn.query(sqlQuery, id, function (error, result) {
            if (error) {
                reject(error);
            }
            resolve(result);
        });
    });
}

function getAverage() {
    return new Promise((resolve, reject) => {
        const sqlQuery = `
        SELECT 
            m.id,
            m.name,
            CEIL(AVG(s.score)) AS average
        FROM
            mahasiswa m
        INNER JOIN 
            scores s 
        ON 
            m.id=s.mahasiswa_id
        GROUP BY 
            m.name, m.id
        `;
        conn.query(sqlQuery, function (error, result) {
            if (error) {
                reject(error);
            }
            resolve(result);
        });
    });
}

function getScore() {
    return new Promise((resolve, reject) => {
        const sqlQuery = `
        SELECT 
            m.id,
            m.name,
            mk.name AS matkul,
            s.score
        FROM
            mahasiswa m
        INNER JOIN 
            scores s 
        INNER JOIN 
            matkul mk
        ON 
            m.id=s.mahasiswa_id
        AND 
            mk.id=s.matkul_id
        `;
        conn.query(sqlQuery, function (error, result) {
            if (error) {
                reject(error);
            }
            resolve(result);
        });
    });
}

function addData(data) {
    return new Promise((resolve, reject) => {
        const sqlQuery = "INSERT INTO mahasiswa SET ?";
        conn.query(sqlQuery, data, function (error, result) {
            if (error) {
                reject(error);
            }
            resolve(result);
        });
    });
}

function addBatchData(data) {
    return new Promise((resolve, reject) => {
        const sqlQuery = `
        INSERT INTO 
            mahasiswa (id, name, address) 
        VALUES ${data} 
        ON DUPLICATE KEY UPDATE 
            name = VALUES(name),
            address = VALUES(address)
        `;
        conn.query(sqlQuery, function (error, result) {
            if (error) {
                reject(error);
            }
            resolve(result);
        });
    });
}

module.exports = {
	getDataById,
    addData,
    getAverage,
    getScore,
    addBatchData
};
