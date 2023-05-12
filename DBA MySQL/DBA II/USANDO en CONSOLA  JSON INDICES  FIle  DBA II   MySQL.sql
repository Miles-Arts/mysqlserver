/* PLan de ejecución entender como MySQL
cre alos Query

COLOR verde Que aquel Table Scan está usando un índice.






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


---------------------------------------------------

-- COST 3.75
/*"query_cost": "3.75"*/
CREATE DATABASE jugos_ventas;
USE jugos_ventas;

SELECT CODIGO_DEL_PRODUCTO FROM tabla_de_productos;
EXPLAIN SELECT CODIGO_DEL_PRODUCTO FROM tabla_de_productos;
EXPLAIN FORMAT = JSON SELECT CODIGO_DEL_PRODUCTO FROM tabla_de_productos;


SELECT A.CODIGO_DEL_PRODUCTO FROM tabla_de_productos A; 

-- sin PK
SELECT A.CODIGO_DEL_PRODUCTO FROM tabla_de_productos1 A;


/* "query_cost": "43584.04" */
SELECT A.CODIGO_DEL_PRODUCTO, C.CANTIDAD FROM tabla_de_productos A 
INNER JOIN items_facturas C 
ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO;

-- SIn PK
SELECT A.CODIGO_DEL_PRODUCTO, C.CANTIDAD FROM tabla_de_productos1 A 
INNER JOIN items_facturas1 C 
ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO;


/*   "query_cost": "155581.45"                                  */
SELECT A.CODIGO_DEL_PRODUCTO, YEAR(FECHA_VENTA) AS AÑO, C.CANTIDAD FROM tabla_de_productos A INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO INNER JOIN facturas B ON C.NUMERO= B.NUMERO;



/*           "query_cost": "130099.65"  "query_cost": "130099.65"                                 */
SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) 
AS ANO, SUM(C.CANTIDAD) FROM tabla_de_productos A 
INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO 
INNER JOIN facturas B ON C.NUMERO = B.NUMERO GROUP BY A.CODIGO_DEL_PRODUCTO, 
YEAR(FECHA_VENTA) ORDER BY A.CODIGO_DEL_PRODUCTO, YEAR(FECHA_VENTA);



-- SIN PK
/*           "query_cost": "130099.65"  "query_cost": "130099.65"                                 */
SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) 
AS ANO, SUM(C.CANTIDAD) FROM tabla_de_productos1 A 
INNER JOIN items_facturas1 C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO 
INNER JOIN facturas1 B ON C.NUMERO = B.NUMERO GROUP BY A.CODIGO_DEL_PRODUCTO, 
YEAR(FECHA_VENTA) ORDER BY A.CODIGO_DEL_PRODUCTO, YEAR(FECHA_VENTA);

SELECT A.CODIGO_DEL_PRODUCTO, YEAR(FECHA_VENTA) AS ANO, SUM(C.CANTIDAD) 
FROM tabla_de_productos A 
INNER JOIN items_facturas C 
ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO
INNER JOIN facturas B
ON C.NUMERO = B.NUMERO
GROUP BY A.CODIGO_DEL_PRODUCTO, YEAR(FECHA_VENTA)
ORDER BY A.CODIGO_DEL_PRODUCTO, YEAR(FECHA_VENTA);



CREATE TABLE `facturas1` (
  `DNI` varchar(11) NOT NULL,
  `MATRICULA` varchar(5) NOT NULL,
  `FECHA_VENTA` date DEFAULT NULL,
  `NUMERO` int NOT NULL,
  `IMPUESTO` float NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `items_facturas1` (
  `NUMERO` int NOT NULL,
  `CODIGO_DEL_PRODUCTO` varchar(10) NOT NULL,
  `CANTIDAD` int NOT NULL,
  `PRECIO` float NOT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `tabla_de_productos1` (
  `CODIGO_DEL_PRODUCTO` varchar(10) NOT NULL,
  `NOMBRE_DEL_PRODUCTO` varchar(50) DEFAULT NULL,
  `TAMANO` varchar(10) DEFAULT NULL,
  `SABOR` varchar(20) DEFAULT NULL,
  `ENVASE` varchar(20) DEFAULT NULL,
  `PRECIO_DE_LISTA` float NOT NULL
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Para insertar la INFO - facturas en facturas1*/
INSERT INTO facturas1
SELECT  * FROM facturas;

/*Para insertar la INFO - items_facturas en items_facturas1*/
INSERT INTO items_facturas1
SELECT  * FROM items_facturas;


/*Para insertar la INFO - tabla_de_productos en tabla_de_productos1*/
INSERT INTO tabla_de_productos1
SELECT  * FROM tabla_de_productos;





