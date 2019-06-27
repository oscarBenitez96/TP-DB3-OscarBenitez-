CREATE TABLE Paises
(
ID int NOT NULL PRIMARY KEY,
NOMBRE_PAIS varchar(50) NOT NULL
)

INSERT INTO Paises
VALUES
(1, 'Argentina'),
(2, 'Venezuela'),
(3, 'Uruguay'),
(4, 'Colombia'),
(5, 'Paraguay')

CREATE TABLE Alumnos
(
APELLIDO varchar(30),
NOMBRE varchar(30),
DNI int NOT NULL PRIMARY KEY,
PAISDEORIGEN int FOREIGN KEY REFERENCES Paises(ID),
FECHADENACIMIENTO date,
FECHAULTIMOINICIOSESION datetime
)

INSERT INTO Alumnos
VALUES
('Fernandez','Carlos',37892655,1,'1998-07-03',GETDATE()),
('Carballo','Pedro',28539532,3,'1985-02-22',GETDATE()),
('Rochester','Ana',32321305,4,'1996-1-12',GETDATE()),
('Iglesias','Oscar',37012732,1,'1996-1-18',GETDATE()),
('Olazka','Joel',39806592,1,'1990-11-03',GETDATE()),
('Alvarez','Noelia',32443592,1,'1990-02-22',GETDATE()),
('Nostel','Eduardo',32542012,2,'1999-11-21',GETDATE()),
('Almirante','Brown',34123991,5,'1988-02-26',GETDATE()),
('Tesoro','Gerardo',32152117,5,'1992-01-16',GETDATE()),
('Fenocchi','Emanuel',35529943,3,'1993-08-16',GETDATE())

SELECT COUNT(*) AS EXTRANJEROS
FROM Alumnos
WHERE PAISDEORIGEN != 1

SELECT * FROM Alumnos
WHERE FECHADENACIMIENTO = (
			SELECT MIN(FECHADENACIMIENTO)
			FROM Alumnos
			)
