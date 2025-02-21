const express = require('express');
const router = express.Router();
const {
    getEquipos,
    getOneEquipo,
    createEquipo,
    updateEquipo,
    deleteEquipo
} = require('../model/equipoModel');

module.exports = router;