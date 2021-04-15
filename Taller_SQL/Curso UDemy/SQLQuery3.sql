CREATE TABLE MarcaMaestros(
	MarcaID INT PRIMARY KEY IDENTITY (1,1),
	FechaEntrada DATETIME,
	FechaSalida DATETIME,
	NombreMaestro VARCHAR (100)
)

SELECT *
FROM MarcaMaestros

INSERT INTO MarcaMaestros(FechaEntrada, FechaSalida, NombreMaestro)
VALUES ('24-03-2020 08:10:15', '24-03-2020 16:01:12', 'Carlos Días')

INSERT INTO MarcaMaestros(FechaEntrada, FechaSalida, NombreMaestro)
VALUES ('24-03-2020 07:58:15', '24-03-2020 15:57:10', 'Johana Padilla')

SELECT DATEDIFF(MINUTE, '24-03-2020 08:00', FechaEntrada) Diferencia, FechaEntrada, FechaSalida, NombreMaestro
FROM MarcaMaestros