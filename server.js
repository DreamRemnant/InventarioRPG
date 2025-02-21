const express = require("express");
const path = require('path');
const cors = require('cors');
//const equipoRoute = require('../inventario/equipos');

const app = express();

app.use(express.static(path.join(__dirname, 'public')));
app.use(express.static(__dirname));
app.use(cors());
app.use(express.json());

//app.use('/api/equipos', equipoRoute);
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'index.html'));
});

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
    console.log(`Servidor listo y ejecutandose en http://localhost:${PORT}`);
});