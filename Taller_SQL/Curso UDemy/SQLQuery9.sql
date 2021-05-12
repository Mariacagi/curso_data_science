DECLARE @TotalPagoAlumno MONEY =
(SELECT Sum(Precio)
FROM Inscripcion I
INNER JOIN Clase C ON I.ClaseID = C.ClaseID)

SELECT @TotalPagoAlumno


DECLARE @TotalClases INT = 14;
DECLARE @Descuento DECIMAL(10,10) = 0.15;
DECLARE @Precio MONEY = 100;

IF (@TotalClases > 5)
BEGIN
	SET @Precio = @Precio - (@Precio * @Descuento)
END

SELECT @Precio