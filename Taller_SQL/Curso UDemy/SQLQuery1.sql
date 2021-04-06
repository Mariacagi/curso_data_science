CREATE TABLE Producto(
	ProductoID INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR (500),
	PrecioEspecial MONEY,
	PrecioPublico MONEY,
	Stock INT
)

INSERT INTO Producto (Nombre, PrecioEspecial, PrecioPublico, Stock)
VALUES ('Malteada', 12.0, 15.0, 10)

INSERT INTO Producto 
VALUES ('Pan', 8.0, 10.0, 20)

INSERT INTO Producto 
VALUES ('Cafe con Pan', 7.0, 8.5, 25)

INSERT INTO Producto 
VALUES ('Cafe con leche', 5.0, 6.5, 50)

INSERT INTO Producto 
VALUES ('Dulce de Leche', 8.0, 10.5, 10)

INSERT INTO Producto 
VALUES ('Pastel 3 Leches', 15.0, 17.5, 5)

INSERT INTO Producto 
VALUES ('Pastel de Chocolate', 12.0, 14.0, 8)

SELECT *
FROM Producto
WHERE PrecioEspecial > 8