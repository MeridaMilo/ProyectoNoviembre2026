CREATE DATABASE clinicamedica;
USE clinicamedica;
CREATE TABLE paciente(
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    receta VARCHAR(40) NOT NULL,
    diagnostico VARCHAR(30) NOT NULL
);

CREATE TABLE medico(
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    dpi INT NOT NULL UNIQUE,
    especialidad VARCHAR(40) NOT NULL,
    id_paciente INT NOT NULL,
     FOREIGN KEY (id_paciente) REFERENCES paciente (id_paciente) 


CREATE TABLE cita(
    id_cita INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    id_paciente INT NOT NULL,
    FOREIGN KEY (id_paciente) REFERENCES paciente (id_paciente) ON DELETE CASCADE ON UPDATE CASCADE
    );

