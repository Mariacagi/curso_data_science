SELECT *
FROM Alumno

SELECT *
FROM Clase

SELECT *
FROM Inscripcion

INSERT INTO Inscripcion (InscripcionID, Fecha, ClaseID, AlumnoID, MaestroID, Hora)
Values(1, GETDATE(), 1, 1, 1, '2000')

INSERT INTO Inscripcion (InscripcionID, Fecha, ClaseID, AlumnoID, MaestroID, Hora)
Values(2, GETDATE(), 4, 1, 1, '2100')

SELECT A.AlumnoID, A.Nombre, A.Apellido, A.Edad, A.Sexo, A.Direccion, 
(SELECT COUNT(*) FROM Inscripcion I WHERE I.AlumnoID = A.AlumnoID) Clases_Matriculadas,
(SELECT ISNULL (SUM(C.Precio), 0) FROM Clase C INNER JOIN Inscripcion I ON I.ClaseID = C.ClaseID WHERE I.AlumnoID = A.AlumnoID) Total_Precio
FROM Alumno A

SELECT *
FROM Clase