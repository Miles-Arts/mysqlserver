
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `precio_producto_case`
(vcodigo VARCHAR(20))
BEGIN
DECLARE vresultado VARCHAR(40);
DECLARE vprecio FLOAT;

SELECT PRECIO_DE_LISTA 
INTO vprecio 
FROM  tabla_de_productos
WHERE CODIGO_DEL_PRODUCTO = vcodigo;

CASE
WHEN vprecio >= 12 THEN SET vresultado = 'Producto Costoso';
WHEN vprecio >= 7 AND vprecio < 12  THEN SET vresultado = 'Producto Asequible';
WHEN vprecio < 7 THEN SET vresultado = 'Producto Económico';
END CASE;

/* 
--LA DECLARARCIÓN DE ARRIBA 
ME PERMITE BORRAR TODO EL CÓDIGO DE ABAJO --

IF vprecio >= 12
THEN SET vresultado = 'Producto Costoso';
ELSEIF
vprecio >= 7 AND vprecio < 12 
THEN SET vresultado = 'Producto Asequible';
ELSE 
SET vresultado = 'Producto Económico';
END IF;*/

SELECT vresultado;
END
$$


CALL precio_producto_case('1000801');

CALL precio_producto_case('1013793');

CALL precio_producto_case('1096818');







