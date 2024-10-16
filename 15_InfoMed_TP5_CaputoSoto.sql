SELECT pacientes.nombre,consultas.fecha,consultas.diagnostico
FROM pacientes
JOIN consultas ON pacientes.id_paciente = consultas.id_paciente
WHERE consultas.fecha = (SELECT MAX(fecha) FROM consultas WHERE id_paciente = pacientes.id_paciente);
