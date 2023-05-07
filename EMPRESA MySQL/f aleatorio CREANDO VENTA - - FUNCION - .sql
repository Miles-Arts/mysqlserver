/* Utilizar las fucniones para mi base de datos*/


/*Para crear una venta ficticia*/
SELECT f_cliente_aleatorio() AS CLIENTE,
f_producto_aleatorio() AS PRODUCTO,
f_vendedor_aleatorio() AS VENDEDOR;


/*saber el numero máximo de facturas*/
/*Más 1 para que no se repita*/
SELECT MAX(NUMERO) +1 FROM facturas;

/*Se añaden parametrtos, año mes día sin espacio*/


SELECT MAX(NUMERO) FROM facturas;
SELECT COUNT(*) FROM facturas;

/*Número descendente en todas las facturas*/
SELECT NUMERO FROM FACTURAS ORDER BY NUMERO DESC;

SELECT NUMERO FROM FACTURAS ORDER BY NUMERO DESC LIMIT = 88000;


/*Correción Errores*/
CREATE TABLE facturas (
NUMERO INT NOT NULL,
FECHA DATE,
DNI VARCHAR(11) NOT NULL,
MATRICULA VARCHAR(5) NOT NULL,
IMPUESTO FLOAT,
PRIMARY KEY (NUMERO),
FOREIGN KEY (DNI) REFERENCES clientes(DNI),
FOREIGN KEY (MATRICULA) REFERENCES vendedores(MATRICULA)
);


CREATE TABLE items (
NUMERO INT NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
CANTIDAD INT,
PRECIO FLOAT,
PRIMARY KEY (NUMERO, CODIGO),
FOREIGN KEY (NUMERO) REFERENCES facturas(NUMERO),
FOREIGN KEY (CODIGO) REFERENCES productos(CODIGO)
);

INSERT INTO items
SELECT NUMERO, CODIGO_DEL_PRODUCTO 
AS CODIGO, CANTIDAD, PRECIO
FROM jugos_ventas.items_facturas;

INSERT INTO facturas
SELECT NUMERO, FECHA_VENTA
AS FECHA, DNI, MATRICULA, IMPUESTO 
FROM jugos_ventas.facturas;

/*Año mes y día sin espacio */
/*CREA la factura*/
CALL sp_venta('20210619',50,100);
CALL sp_venta('20210619',3,100);
/*Muestra la factura*/
SELECT MAX(NUMERO) FROM facturas;




