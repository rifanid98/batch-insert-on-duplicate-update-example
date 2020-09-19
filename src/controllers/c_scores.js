/** Helpers */
const myResponse = require("../helpers/myResponse");
const validate = require('../helpers/joiSchema');
const errorMessage = require("../helpers/myErrorMessage");
const deleteImage = require("../helpers/deleteImage");

/** Model */
const scoresModel = require("../models/m_scores");
const mahasiswaModel = require("../models/m_mahasiswa");
const matkulModel = require("../models/m_matkul");

/**
 * CRUD
 */
async function postScore(req, res) {
	try {
		// // Joi validation
		const fieldToPatch = Object.keys(req.body);
		await validate.validateScores(req.body, fieldToPatch);
		
		const body = req.body;
		const checkMahasiswa = await mahasiswaModel.getDataById(body.mahasiswa_id);
		if (checkMahasiswa.length < 1) {
			return myResponse.response(res, "not found", "", 404, "Cannot found that mahasiswa id");
		}
		const checkMatkul = await matkulModel.getDataById(body.matkul_id);
		if (checkMatkul.length < 1) {
			return myResponse.response(res, "not found", "", 404, "Cannot found that matkul id");
		}
		const checkScore = await scoresModel.checkData(body.mahasiswa_id, body.matkul_id);
		if (checkScore.length > 0) {
			const message = `Duplicate data. The student already has a grade with the related matkul`;
			return myResponse.response(res, "failed", "", 409, message);
		}

		// insert data
		const result = await scoresModel.addData(body);
		if (result.affectedRows > 0) {
			body.id = result.insertId;
			return myResponse.response(res, "success", body, 201, "Created!");
		} else {
			const message = `Add data failed`;
			return myResponse.response(res, "failed", "", 500, message);
		}
	} catch (error) {
		console.log(error);
		return myResponse.response(res, "failed", "", 500, errorMessage.myErrorMessage(error, {}));
	}
}
async function putScore(req, res) {
	try {
		// Joi validation
		const fieldToPatch = Object.keys(req.body);
		await validate.validateScores(req.body, fieldToPatch);

		const body = req.body;
		const id = req.params.id;
		const checkScore = await scoresModel.getDataById(id);
		
		if (checkScore.length < 1) {
			return myResponse.response(res, "not found", "", 404, "Cannot found that score id");
		}

		// update data
		const result = await scoresModel.updateData(body, id);
		if (result.affectedRows > 0) {
			body.id = result.insertId;
			return myResponse.response(res, "success", body, 200, "Updated!");
		} else {
			const message = `Add data failed`;
			return myResponse.response(res, "failed", "", 500, message);
		}
	} catch (error) {
		console.log(error);
		return myResponse.response(res, "failed", "", 500, errorMessage.myErrorMessage(error, {}));
	}
}
async function deleteScore(req, res) {
	try {
		const id = req.params.id;
		const checkScore = await scoresModel.getDataById(id);
		if (checkScore.length < 1) {
			return myResponse.response(res, "not found", "", 404, "Cannot found that score id");
		}
		// delete data
		const result = await scoresModel.deleteData(id);
		if (result.affectedRows > 0) {
			return myResponse.response(res, "success", "", 200, "Deleted!");
		} else {
			const message = `Delete data failed`;
			return myResponse.response(res, "failed", "", 500, message);
		}
	} catch (error) {
		console.log(error);
		return myResponse.response(res, "failed", "", 500, errorMessage.myErrorMessage(error, {}));
	}
}
module.exports = {
	postScore,
	putScore,
	deleteScore,
	putScore
}