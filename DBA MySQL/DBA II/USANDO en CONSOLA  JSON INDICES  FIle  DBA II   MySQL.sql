/* PLan de ejecución entender como MySQL
cre alos Query








*/


-- "query_cost": "8629.55" CON INDEX  "query_cost": "25.90"
EXPLAIN FORMAT = JSON SELECT * FROM FACTURAS WHERE FECHA_VENTA = '20170101';

/*
Con ese comando se crea u indice cambiando el FECHA VENTA
ALTER TABLE FACTURAS ADD INDEX(FECHA_VENTA);

Se modifica la tabla y se vuelve INDICE
*/

-- el costo es "query_cost": "8629.55"
EXPLAIN FORMAT = JSON SELECT * FROM FACTURAS WHERE FECHA_VENTA = '20170101' \G;

---------------------------------------------------------
-- El costo es "query_cost": "25.90" con indice
ALTER TABLE FACTURAS ADD INDEX(FECHA_VENTA);
EXPLAIN FORMAT = JSON SELECT * FROM FACTURAS WHERE FECHA_VENTA = '20170101' \G;















