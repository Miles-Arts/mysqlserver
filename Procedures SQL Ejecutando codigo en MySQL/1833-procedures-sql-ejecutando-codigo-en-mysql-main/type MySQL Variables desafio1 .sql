CREATE PROCEDURE `desafio_1`()
BEGIN
DECLARE Cliente VARCHAR(10);
DECLARE Edad INT;
DECLARE Fecha_Nacimiento DATE;
DECLARE Costo FLOAT;

SET Cliente = 'Juan';
SET Edad = 10;
SET Fecha_Nacimiento = '20170110';
SET Costo = 10.23;

SELECT Cliente;
SELECT Edad;
SELECT Fecha_Nacimiento;
SELECT Costo;

END