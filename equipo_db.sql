SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE equipo_db;

USE equipo_db;

CREATE TABLE equipo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo ENUM('Cabeza', 'Manos', 'Pies', 'Torso', 'ArmaPrimaria', 'ArmaSecundaria') NOT NULL,
    descripcion TEXT,
    rareza ENUM('Common, Rare, Epic, Legendary') NOT NULL
);

CREATE TABLE stats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    equipo_id INT NOT NULL,
    vida INT NOT NULL DEFAULT 0 CHECK (vida BETWEEN 0 AND 999),
    ataque INT NOT NULL DEFAULT 0 CHECK (ataque BETWEEN 0 AND 999),
    defensa INT NOT NULL DEFAULT 0 CHECK (defensa BETWEEN 0 AND 999),
    suerte INT NOT NULL DEFAULT 0 CHECK (suerte BETWEEN 0 AND 999),
    velocidad INT NOT NULL DEFAULT 0 CHECK (velocidad BETWEEN 0 AND 500),
    resistencia INT NOT NULL DEFAULT 0 CHECK (resistencia BETWEEN 0 AND 999),
    efectividad INT NOT NULL DEFAULT 0 CHECK (efectividad BETWEEN 0 AND 999),
    FOREIGN KEY (equipo_id) REFERENCES Equipo(id) ON DELETE CASCADE
);