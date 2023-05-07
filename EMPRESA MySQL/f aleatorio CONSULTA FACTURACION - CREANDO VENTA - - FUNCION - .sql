/*Generar facturación*/
/*Cantidad por el precio*/

SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS FACTURACION
FROM facturas A 
INNER JOIN
items B
ON A.NUMERO = B.NUMERO
WHERE A.FECHA = '20210619'
GROUP BY A.FECHA;


CALL sp_venta('20210619',3,100);

SELECT COUNT(*) FROM productos;

CALL sp_venta('20210619',20,100);



