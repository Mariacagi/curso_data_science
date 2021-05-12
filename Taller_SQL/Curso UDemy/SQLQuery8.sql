CREATE VIEW vAlumnosMatriculados
AS

SELECT AlumnoID, Nombre, Apellido, Edad, Sexo, Direccion,
(SELECT COUNT(*) FROM Inscripcion I WHERE I.AlumnoID = A.AlumnoID) Total_Clases,
(SELECT ISNULL(AVG(Precio), 0)
FROM Inscripcion I
INNER JOIN Clase C ON I.ClaseID = C.ClaseID
WHERE I.AlumnoID = A.AlumnoID) Total_precio
FROM Alumno A



SELECT ISNULL(SUM(Precio), 0)
FROM Inscripcion I
INNER JOIN Clase C ON I.ClaseID = C.ClaseID
WHERE I.AlumnoID = 2


INSERT INTO Inscripcion (Fecha, ClaseID, AlumnoID, MaestroID, Hora)
VALUES (GETDATE(), 7, 3, 3, '1400')

SELECT *
FROM vAlumnosMatriculados