SELECT medicos.nombre,
    COUNT(DISTINCT consultas.id_paciente) AS total_pacientes
FROM medicos
JOIN consultas ON medicos.id_medico = consultas.id_medico
GROUP BY medicos.id_medico, medicos.nombre
ORDER BY total_pacientes DESC;
