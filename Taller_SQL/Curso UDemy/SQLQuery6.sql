SELECT * FROM Lugar

INSERT INTO LUGAR
VALUES ('Casa Teg', '4 avenida, 3 calle barrio el centro tegucigalpa', 3)

INSERT INTO LUGAR
VALUES ('Trabajop Teg', '25 avenida, 48 calle barrio el Carrizal tegucigalpa', 3)

INSERT INTO LUGAR
VALUES ('Casa SPS', '2 avenida, 8 calle barrio el centro San Pedro Sula', 4)

INSERT INTO LUGAR
VALUES ('Trabajo SPS', '25 avenida, 22 calle barrio el Benque San Pedro Sula', 4)

INSERT INTO LUGAR
VALUES ('Casa Cortes', '1 avenida, 2 calle barrio el centro Cortes', 5)

INSERT INTO LUGAR
VALUES ('Trabajo Cortes', '21 avenida, 2 calle barrio el Centro San Pedro Sula', 5)

INSERT INTO Viaje (Fecha, ClienteID, ChoferID, LugarID, Precio)
VALUES (GETDATE(), 3, 2, 6, 200)

SELECT *
FROM Viaje V
INNER JOIN Cliente C ON V.ClienteID = C.ClienteID
INNER JOIN Chofer CH ON V.ChoferID = CH.ChoferID
INNER JOIN Lugar L ON V.LugarID = L.LugarID