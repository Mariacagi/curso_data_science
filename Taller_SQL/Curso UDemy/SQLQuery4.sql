Create DATABASE Transporte

Use Transporte

CREATE TABLE Cliente(
	ClienteID INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(100),
	Apellido VARCHAR(100)
)

CREATE TABLE Chofer(
	ChoferID INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(100),
	Apellido VARCHAR(100),
	Sueldo money
)

CREATE TABLE Lugar(
	LugarID INT PRIMARY KEY IDENTITY (1,1),
	Nombre Varchar(100),
	Direccion VARCHAR(1000),
)


CREATE TABLE Viaje(
	ViajeID INT PRIMARY KEY IDENTITY (1,1),
	Fecha Datetime,
	ClienteID INT,
	ChoferID INT,
	LugarID INT,
	Precio money

)


SELECT * FROM Chofer
select * FROM Cliente
SELECT * FROM Lugar
SELECT * FROM Viaje


SELECT * FROM Lugar
SELECT * FROM Cliente

DELETE FROM Cliente
WHERE ClienteID = 1