SELECT medicos.nombre,pacientes.nombre,
    COUNT(consultas.id_consulta) AS total_consultas
FROM medicos
JOIN consultas ON medicos.id_medico = consultas.id_medico
JOIN pacientes ON consultas.id_paciente = pacientes.id_paciente
GROUP BY medicos.id_medico, pacientes.id_paciente
ORDER BY medicos.nombre, pacientes.nombre;
