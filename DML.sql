USE centro_medico;

INSERT INTO vacaciones(fecha_inicio,fecha_fin) VALUES
('2025-07-30','2025-08-01'),
('2025-06-15','2025-07-01'),
('2025-06-20','2025-07-05'),
('2025-02-15','2025-02-10'),
('2025-01-15','2025-02-01'),
('2025-03-15','2025-03-20');
INSERT INTO medicos(nombre,especialidad,horario_consulta,id_vacaciones) VALUES
('Carlos','titular,','2025-04-01',1),
('Alejandra','interino','2025-02-01',2),
('Sandra','sustituto','2025-05-01',3),
('Jose','interino','2025-05-01',4),
('Antonio','sustituto','2025-05-01',5);

INSERT INTO pacientes(nombre,id_medico) VALUES
("camila",1),
("carmen",2),
("rosa",3),
("julian",4);
 INSERT INTO empleados(cargo,id_vacaciones) VALUES
 ("ATS",1),
 ("auxiliar enfermeria",2),
 ("celador",3),
 ("administrativo",4),
 ("celador",5),
 ("ATS",6),
 ("auxiliar enfermeria",1),
 ("auxiliar enfermeria",3);
