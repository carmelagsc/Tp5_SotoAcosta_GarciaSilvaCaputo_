SELECT medicamentos.nombre,
    COUNT(recetas.id_receta) AS total_recetas, medicos.nombre, pacientes.nombre
FROM recetas 
JOIN medicamentos ON recetas.id_medicamento = medicamentos.id_medicamento
JOIN medicos ON recetas.id_medico = medicos.id_medico
JOIN pacientes ON recetas.id_paciente = pacientes.id_paciente
GROUP BY medicamentos.id_medicamento, medicos.id_medico, pacientes.id_paciente
ORDER BY total_recetas DESC;
