USE centro_medico;
SELECT pacientes.nombre,
(SELECT COUNT(*)FROM medicos WHERE pacientes.id_medico=medicos.id_medico) AS TotaPacientes
FROM pacientes;

--Médico con mayor cantidad de pacientes asignados
SELECT medicos.nombre,
(SELECT COUNT(*) FROM  pacientes WHERE pacientes.id_medico=medicos.id_medico)
FROM medicos;

--Empleados con más de 10 días de vacaciones disfrutadas
SELECT E.id_empleado
FROM empleados E
WHERE E.id_vacaciones > 10;

--Promedio de horas de consulta por médico
SELECT AVG(horario_consulta) AS promedioConsulta
FROM (SELECT horario_consulta FROM medicos) AS promedioConsulta;

--Médicos con más de 5 pacientes y total de horas de consulta en la semana
SELECT P.nombre,H.horario_consulta,
FROM pacientes P
WHERE P.id_medico > 5
JOIN medicos H ON P.id_medico=H.id_medico;

--Total de horas de consulta por especialidad 
SELECT medicos.especialidad,
(SELECT COUNT(*) FROM medicos WHERE medicos.especialidad=medicos.horario_consulta) AS total_horas
FROM medicos;

--Total de pacientes por médico y por especialidad
SELECT medicos.especialidad,
(SELECT COUNT(*) FROM pacientes WHERE pacientes.id_medico=medicos.id_medico) AS totalPacientes
FROM medicos;