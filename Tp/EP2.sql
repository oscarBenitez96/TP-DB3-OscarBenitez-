UPDATE Alumnos
SET APELLIDO = UPPER(APELLIDO), NOMBRE = UPPER(NOMBRE)

SELECT DATEDIFF(MINUTE,FECHAULTIMOINICIOSESION, GETDATE()) AS MINUTOS
FROM Alumnos