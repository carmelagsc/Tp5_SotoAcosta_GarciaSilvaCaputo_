SELECT  id_medico,
    COUNT(id_receta) AS cantidad_recetas
FROM recetas
GROUP BY id_medico;