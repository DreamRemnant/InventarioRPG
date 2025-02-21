SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE equipo_db;

USE DATABASE equipo_db;

CREATE TABLE Equipo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo ENUM('Cabeza', 'Manos', 'Pies', 'Torso', 'ArmaPrimaria', 'ArmaSecundaria') NOT NULL,
    descripcion TEXT,
    rareza ENUM('Common, Rare, Epic, Legendary') NOT NULL,
);

CREATE TABLE Stats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_id INT,
    vida INT DEFAULT 0,
    ataque INT DEFAULT 0,
    defensa INT DEFAULT 0,
    suerte INT DEFAULT 0,
    velocidad INT DEFAULT 0,
    resistencia INT DEFAULT 0,
    efectividad INT DEFAULT 0,
    FOREIGN KEY (equipo_id) REFERENCES Equipo(id) ON DELETE CASCADE
);