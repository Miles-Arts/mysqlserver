SELECT (34 + 346-67) / 15 * 29 AS RESULTADO; 

SELECT CEILING(23.1222);

SELECT FLOOR(23.1222);

SELECT RAND() AS RESULTADO; 

SELECT ROUND(254.545,2);

SELECT ROUND(254.545,1);

SELECT NUMERO, CANTIDAD, PRECIO FROM items_facturas;

SELECT NUMERO, CANTIDAD, PRECIO, CANTIDAD*PRECIO 
AS FACTURACION 
FROM items_facturas;


SELECT NUMERO, CANTIDAD, PRECIO, ROUND(CANTIDAD*PRECIO)
AS FACTURACION 
FROM items_facturas;

SELECT NUMERO, CANTIDAD, PRECIO, ROUND(CANTIDAD*PRECIO,2)
AS FACTURACION 
FROM items_facturas;





