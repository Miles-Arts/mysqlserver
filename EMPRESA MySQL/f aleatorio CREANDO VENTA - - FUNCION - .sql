/* Utilizar las fucniones para mi base de datos*/


/*Para crear una venta ficticia*/
SELECT f_cliente_aleatorio() AS CLIENTE,
f_producto_aleatorio() AS PRODUCTO,
f_vendedor_aleatorio() AS VENDEDOR;


/*saber el numero máximo de facturas*/
/*Más 1 para que no se repita*/
SELECT MAX(NUMERO) +1 FROM facturas;









