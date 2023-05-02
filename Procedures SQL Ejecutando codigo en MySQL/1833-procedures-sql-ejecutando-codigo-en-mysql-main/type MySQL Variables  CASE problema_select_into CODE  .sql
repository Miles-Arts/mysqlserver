CREATE PROCEDURE `problema_select_into` ()

BEGIN
DECLARE vnombre VARCHAR(50);
SELECT NOMBRE INTO Vnombre FROM tabla_de_clientes;
SELECT vnombre;

END
