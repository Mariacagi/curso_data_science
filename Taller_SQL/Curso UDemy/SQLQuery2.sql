CREATE TABLE Clase(
	ClaseID INT PRIMARY KEY IDENTITY (1,1),
	FechaApertura Date,
	HoraClase VARCHAR(10),
	MaestroNombre VARCHAR (100),
	Precio Money,
	AlumnoNombre VARCHAR(100)
)

INSERT INTO Clase (Nombre, FechaApertura, HoraClase, MaestroNombre, Precio, AlumnoNombre)
VALUES ('Español', '18-03-2020', '2000', 'Estefani Hernandez', 200, 'Rojer Rojas')

INSERT INTO Clase (Nombre, FechaApertura, HoraClase, MaestroNombre, Precio, AlumnoNombre)
VALUES ('Matematicas', '18-03-2020', '2100', 'Estefani Hernandez', 220, 'Rojer Rojas')

INSERT INTO Clase (Nombre, FechaApertura, HoraClase, MaestroNombre, Precio, AlumnoNombre)
VALUES ('Ingles', '18-03-2020', '2200', 'Carmen Najera', 220, 'Rojer Rojas')

INSERT INTO Clase (Nombre, FechaApertura, HoraClase, MaestroNombre, Precio, AlumnoNombre)
VALUES ('Español', '18-03-2020', '2000', 'Estefani Hernandez', 200, 'Ana Gutierrez')

INSERT INTO Clase (Nombre, FechaApertura, HoraClase, MaestroNombre, Precio, AlumnoNombre)
VALUES ('Matematicas', '18-03-2020', '2100', 'Estefani Hernandez', 220, 'Ana Gutierrez')

INSERT INTO Clase (Nombre, FechaApertura, HoraClase, MaestroNombre, Precio, AlumnoNombre)
VALUES ('Ingles', '18-03-2020', '2200', 'Carmen Najera', 220, 'Ana Gutierrez')


SELECT *
FROM Clase

SELECT COUNT(*)
FROM Clase
WHERE AlumnoNombre LIKE '%Ana%'