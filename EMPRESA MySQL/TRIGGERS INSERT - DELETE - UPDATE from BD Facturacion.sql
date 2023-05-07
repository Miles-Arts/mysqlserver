CREATE PROCEDURE `sp_triggers` ()
BEGIN
/*creando el SP una función para 
INSERT
DELETE
UPDATE
*/
DELETE FROM facturacion;
  INSERT INTO facturacion
  SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
  FROM facturas A
  INNER JOIN
  items B
  ON A.NUMERO = B.NUMERO
  GROUP BY A.FECHA;

END
