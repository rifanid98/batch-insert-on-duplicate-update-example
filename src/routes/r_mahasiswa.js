const express = require('express');
const router = express.Router();

const multer = require('multer');
const storage = multer.diskStorage({
    destination: global.appTmp,
    filename: function (req, file, cb) {
        cb(null, file.originalname);

    }
});
/** Controllers */
const mahasiswaController = require('../controllers/c_mahasiswa');

/** Main CRUD */
router.get('/score', mahasiswaController.getScore); // get get nilai mahasiswa beserta matkulnya
router.get('/average', mahasiswaController.getAverage); // get get rerata nilai masihng-masing mahasiswa
router.put('/batch', multer({storage: storage}).single('file'), mahasiswaController.putBatchMahasiswa); // batch update/insert

module.exports = router;