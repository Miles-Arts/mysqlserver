CREATE DEFINER=`root`@`localhost` PROCEDURE `precio_producto`(vcodigo VARCHAR(20))
BEGIN
DECLARE vresultado VARCHAR(40);
DECLARE vprecio FLOAT;

SELECT PRECIO_DE_LISTA 
INTO vprecio 
FROM  tabla_de_productos
WHERE CODIGO_DEL_PRODUCTO = vcodigo;

IF vprecio >= 12
THEN SET vresultado = 'Producto Costoso';
ELSEIF
vprecio >= 7 AND vprecio < 12 
THEN SET vresultado = 'Producto Asequible';
ELSE 
SET vresultado = 'Producto Económico';
END IF;
SELECT vresultado;
END