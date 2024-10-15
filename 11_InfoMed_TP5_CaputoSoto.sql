SELECT pacientes.nombre, consultas.fecha, consultas.diagnostico
FROM consultas
JOIN pacientes ON consultas.id_paciente = pacientes.id_paciente
WHERE consultas.fecha BETWEEN '2024-08-01' AND '2024-08-31';
