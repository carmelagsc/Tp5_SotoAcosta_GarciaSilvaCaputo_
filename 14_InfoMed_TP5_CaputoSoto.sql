SELECT medicamentos.nombre,
    COUNT(recetas.id_receta) AS cantidad_recetas
FROM recetas 
JOIN medicamentos ON recetas.id_medicamento = medicamentos.id_medicamento
GROUP BY medicamentos.nombre
ORDER BY cantidad_recetas DESC
LIMIT 1;
