UPDATE pacientes
SET ciudad = CASE
    WHEN LOWER(SUBSTR(TRIM(ciudad), 1, 1)) = 'b' THEN 'Buenos Aires'
    WHEN LOWER(SUBSTR(TRIM(ciudad), 1, 1)) = 'c' THEN 'Córdoba'
    WHEN LOWER(SUBSTR(TRIM(ciudad), 1, 1)) = 'm' THEN 'Mendoza'
    WHEN TRIM(ciudad) = 'Rosario' THEN 'Santa Fé'
    ELSE 'Santa Fé'
END;