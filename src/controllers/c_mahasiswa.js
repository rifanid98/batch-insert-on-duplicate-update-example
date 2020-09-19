/** Libraries */
const readXlsxFile = require('read-excel-file/node');

/** Helpers */
const myResponse = require("../helpers/myResponse");
const validate = require('../helpers/joiSchema');
const errorMessage = require("../helpers/myErrorMessage");
const deleteImage = require("../helpers/deleteImage");

/** Model */
const mahasiswaModel = require("../models/m_mahasiswa");

/**
 * CRUD
 */
async function postMahasiswa(req, res) {
	try {
		// Joi validation
		const fieldToPatch = Object.keys(req.body);
		await validate.validateMahasiswa(req.body, fieldToPatch);

		const body = req.body;
		const checkMahasiswa = await mahasiswaModel.getDataByName(body.title);
		
		if (checkMahasiswa.length > 0) {
			if (req.file) {
				// delete new image when duplicated data
				const myRequest = { protocol: req.protocol, host: req.get('host') }
				deleteImage.delete(myRequest, req.file.filename);
			}

			const message = `Duplicate data ${body.title}`;
			return myResponse.response(res, "failed", "", 409, message);
		}

		if (req.file === undefined) {
			// set default file when no image to upload
			body.image = `default.png`;
		} else {
			if (req.file.mimetype === 'image/jpeg' || req.file.mimetype === 'image/png') {
				// get the image name and set into data
				body.image = `${req.file.filename}`;
			} else {
				// delete new file when not an image
				const myRequest = { protocol: req.protocol, host: req.get('host') }
				deleteImage.delete(myRequest, req.file.filename);

				const message = `There is no image to upload`;
				return myResponse.response(res, "failed", "", 500, message);
			}
		}

		// insert data
		const result = await mahasiswaModel.addData(body);
		if (result.affectedRows > 0) {
			body.id = result.insertId;
			return myResponse.response(res, "success", body, 201, "Created!");
		} else {
			if (req.file) {
				// delete new image when insert data is failed
				const myRequest = { protocol: req.protocol, host: req.get('host') }
				deleteImage.delete(myRequest, req.file.filename);
			}

			const message = `Add data failed`;
			return myResponse.response(res, "failed", "", 500, message);
		}
	} catch (error) {
		console.log(error);

		// delete image when error
		if (req.file) {
			const myRequest = { protocol: req.protocol, host: req.get('host') }
			deleteImage.delete(myRequest, req.file.filename);
		}

		return myResponse.response(res, "failed", "", 500, errorMessage.myErrorMessage(error, {}));
	}
}
async function getAverage(req, res) {
	try {
		const result = await mahasiswaModel.getAverage();
		if (result.length < 1) {
			return myResponse.response(res, "not found", "", 404, "data is empty");
		}
		return myResponse.response(res, "success", result, 200, "Ok!");
	} catch (error) {
		console.log(error);
		return myResponse.response(res, "failed", "", 500, errorMessage.myErrorMessage(error, {}));
	}
}
async function getScore(req, res) {
	try {
		const result = await mahasiswaModel.getScore();
		if (result.length < 1) {
			return myResponse.response(res, "not found", "", 404, "data is empty");
		}
		return myResponse.response(res, "success", result, 200, "Ok!");
	} catch (error) {
		console.log(error);
		return myResponse.response(res, "failed", "", 500, errorMessage.myErrorMessage(error, {}));
	}
}
async function putBatchMahasiswa(req, res) {
	try {
		if (req.file === undefined) {
			const message = `There is no file to upload`;
			return myResponse.response(res, "failed", "", 500, message);
		}
		if (req.file.mimetype !== 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet') {
			const message = `Please upload xls or xlsx file instead`;
			return myResponse.response(res, "failed", "", 500, message);
		}

		
		readXlsxFile(global.appTmp + '/' + req.file.originalname).then(async (rows) => {
			var data = [];
			rows.map((items) => {
				let setItems = [];
				items.map(item => {
					setItems.push(`"${item}"`);
				})
				data.push(`(${setItems.join(',')})`);
			})
			var data = data.slice(1).join(',');

			// insert data
			const result = await mahasiswaModel.addBatchData(data);
			if (result.affectedRows > 0) {
				return myResponse.response(res, "success", "", 200, "Updated!");
			} else {
				if (req.file) {
					// delete new image when insert data is failed
					const myRequest = { protocol: req.protocol, host: req.get('host') }
					deleteImage.delete(myRequest, req.file.filename);
				}

				const message = `Add data failed`;
				return myResponse.response(res, "failed", "", 500, message);
			}
		}).catch(err => {
			console.log(err);
		})
	} catch (error) {
		console.log(error);

		// delete image when error
		if (req.file) {
			const myRequest = { protocol: req.protocol, host: req.get('host') }
			deleteImage.delete(myRequest, req.file.filename);
		}

		return myResponse.response(res, "failed", "", 500, errorMessage.myErrorMessage(error, {}));
	}
}
module.exports = {
	postMahasiswa,
	getAverage,
	getScore,
	putBatchMahasiswa
}