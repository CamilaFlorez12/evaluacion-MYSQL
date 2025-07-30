USE centro_medico;
CREATE TABLE vacaciones(
    id_vacaciones INT AUTO_INCREMENT PRIMARY KEY,
    fecha_inicio DATETIME NOT NULL,
    fecha_fin DATETIME
);

CREATE TABLE medicos(
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    especialidad VARCHAR(45) NOT NULL,
    horario_consulta DATETIME NOT NULL,
    id_vacaciones INT NOT NULL,
    FOREIGN KEY(id_vacaciones) REFERENCES vacaciones(id_vacaciones)
);

CREATE TABLE pacientes(
    id_pacientes INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    id_medico INT NOT NULL,
    FOREIGN KEY(id_medico) REFERENCES medicos(id_medico)
);

CREATE TABLE empleados(
    id_empleado INT PRIMARY KEY,
    cargo VARCHAR(45) NOT NULL,
    id_vacaciones INT NOT NULL,
    FOREIGN KEY(id_vacaciones) REFERENCES vacaciones(id_vacaciones)
);