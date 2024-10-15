SELECT 
    CASE
        WHEN ciudad = 'Buenos Aires' THEN 'Región 1'
        WHEN ciudad = 'Córdoba' THEN 'Región 2'
        WHEN ciudad = 'Mendoza' THEN 'Región 3'
        WHEN ciudad = 'Santa Fé' THEN 'Región 4'
        ELSE 'Otras Regiones'
    END AS region,ciudad,
    COUNT(*) AS cantidad_paciente
FROM pacientes
GROUP BY region, ciudad;