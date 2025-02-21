const express = require('express');
const router = express.Router();
const {
    getEquipos,
    getOneEquipo,
    createEquipo,
    updateEquipo,
    deleteEquipo
} = require('../model/equipoModel');

//TODO YESS AQUI HARE YO LO QUE VA PARA CREARTE LOS LINKS DE PETICION

module.exports = router;