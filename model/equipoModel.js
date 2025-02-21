const db = require('../config/db');
const res = require('express/lib/response');

const createEquipo = async (nombre, tipo, descripcion, rareza, stats) => {
    try {
        await db.beginTransaction();

        const queryEquipo = `INSERT INTO equipo (nombre, tipo, descripcion, rareza) VALUES (?,?,?,?)`;
        const [resultEquipo] = await db.promise().query(queryEquipo, [nombre, tipo, descripcion, rareza]);
        const equipoId = result.insertId;

        const queryStats = `INSERT INTO stats (equipo_id, vida, ataque, defensa, suerte, velocidad, resistencia, efectividad)
        VALUES (?,?,?,?,?,?,?,?)`;
        await db.query(queryStats, [equipoId, stats.vida, stats.ataque, stats.defensa, stats.suerte, stats.velocidad, stats.resistencia, stats.efectividad]);

        await db.commit();
        return equipoId;
    } catch (error) {
        await db.rollback();
        throw error;
    } finally {
        db.release();
    }
};

const getEquipos = async (search = '') => {
    //const query = search
     //   ? `SELECT * FROM equipo `;
     //TODO Termianr
};