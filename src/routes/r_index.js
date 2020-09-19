const express = require('express');
const router = express.Router();

/** Load All Routes */
const mahasiswaRouter = require('./r_mahasiswa');
const scoresRouter = require('./r_scores');

/** Fire the router */
router.use('/mahasiswa', mahasiswaRouter);
router.use('/scores', scoresRouter);

module.exports = router;