CREATE TABLE tb_facturacion(
FECHA DATE NULL,
VENTA_TOTAL FLOAT
); 

SELECT * FROM tb_facturacion; 

CREATE TABLE `tb_factura1` (
  `NUMERO` varchar(15) NOT NULL,
  `FECHA` date DEFAULT NULL,
  `DNI` varchar(11) NOT NULL,
  `MATRICULA` varchar(5) NOT NULL,
  `IMPUESTO` float DEFAULT NULL,
  PRIMARY KEY (`NUMERO`),
  KEY `FK_CLIENTE1` (`DNI`),
  KEY `FK_VENDEDOR1` (`MATRICULA`),
  CONSTRAINT `FK_CLIENTE1` FOREIGN KEY (`DNI`) REFERENCES `tb_cliente` (`DNI`),
  CONSTRAINT `FK_VENDEDOR1` FOREIGN KEY (`MATRICULA`) REFERENCES `tb_vendedor` (`MATRICULA`)
);


CREATE TABLE `tb_items_factura1` (
  `NUMERO` varchar(15) NOT NULL,
  `CODIGO` varchar(10) NOT NULL,
  `CANTIDAD` int DEFAULT NULL,
  `PRECIO` float DEFAULT NULL,
  PRIMARY KEY (`NUMERO`,`CODIGO`),
  KEY `FK_PRODUCTO1` (`CODIGO`),
  CONSTRAINT `FK_FACTURA1` FOREIGN KEY (`NUMERO`) REFERENCES `tb_factura` (`NUMERO`),
  CONSTRAINT `FK_PRODUCTO1` FOREIGN KEY (`CODIGO`) REFERENCES `tb_producto` (`CODIGO`)
) ;

SELECT * FROM tb_items_facturas1, tb_factura1; 

SELECT * FROM  tb_items_factura1; 
SELECT * FROM  tb_factura1; 
SELECT * FROM  tb_cliente;
SELECT * FROM tb_vendedor;
SELECT * FROM tb_producto;

INSERT INTO tb_factura1 
VALUES('0100', '2021-01-01', '1471156710', '235', 0.10 );

SELECT * FROM  tb_factura1; 

INSERT INTO tb_items_factura1
VALUES('0100', '1002767', 100, 25),
('0100', '1004327', 200, 25),
('0100', '1013793', 300, 25);
/* ERROR al  añadir item a la lista*/


SELECT * FROM  tb_items_factura1; 
SELECT * FROM  tb_factura1; 


SELECT FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
FROM tb_factura1 A
INNER JOIN 
tb_items_facturas1 B
ON A.NUMERO = B.NUMERO
GROUP BY A.FECHA;



INSERT INTO tb_factura1 
VALUES('0101', '2021-01-01', '1471156710', '235', 0.10 );

INSERT INTO tb_items_factura1
VALUES('0101', '1002767', 100, 25),
('0101', '1004327', 200, 25),
('0101', '1013793', 300, 25);

SELECT * FROM  tb_factura1; 



