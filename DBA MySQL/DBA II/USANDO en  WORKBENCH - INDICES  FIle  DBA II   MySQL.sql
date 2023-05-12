/* 



*/


-- el costo es "query_cost": "8629.55"
EXPLAIN FORMAT = JSON SELECT * FROM FACTURAS 
WHERE FECHA_VENTA = '20170101' \G;

---------------------------------------------------------
-- El costo es "query_cost": "25.90" con indice
ALTER TABLE FACTURAS ADD INDEX(FECHA_VENTA);
EXPLAIN FORMAT = JSON SELECT * FROM FACTURAS 
WHERE FECHA_VENTA = '20170101' \G;


---------------------------------------------------------------
-- El costo es "query_cost": "8629.55" con indice
ALTER TABLE FACTURAS DROP INDEX(FECHA_VENTA);
EXPLAIN FORMAT = JSON SELECT * FROM FACTURAS 
WHERE FECHA_VENTA = '20170101' \G;










