const express = require('express');
const router = express.Router();

/** Controllers */
const scoresController = require('../controllers/c_scores');

/** Main CRUD */
router.post('/', scoresController.postScore);
router.put('/:id', scoresController.putScore);
router.delete('/:id', scoresController.deleteScore);

module.exports = router;