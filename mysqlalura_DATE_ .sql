SELECT CURDATE();

SELECT CURRENT_TIMESTAMP();

SELECT YEAR( CURRENT_TIMESTAMP());

SELECT MONTH( CURRENT_TIMESTAMP());

SELECT DAY( CURRENT_TIMESTAMP());

SELECT MONTHNAME( CURRENT_TIMESTAMP());

SELECT DAYNAME( CURRENT_TIMESTAMP());

SELECT DATEDIFF(CURRENT_TIMESTAMP(), "2023-01-01 ") AS  DIFERENCIA_DE_DIAS;

SELECT DATEDIFF(CURRENT_TIMESTAMP(), "1985-05-01 ") AS  DIFERENCIA_DE_DIAS;

SELECT CURRENT_TIMESTAMP() 
AS DIA_HOY, DATE_SUB(CURRENT_TIMESTAMP(), 
INTERVAL 1 MONTH) AS RESULTADO;


SELECT DISTINCT FECHA_VENTA,
DAYNAME(FECHA_VENTA) AS DIA, 
MONTHNAME(FECHA_VENTA) AS MES,
YEAR(FECHA_VENTA) AS AÑO
FROM facturas;

SELECT NOMBRE, TIMESTAMPDIFF(YEAR, FECHA_DE_NACIMIENTO, CURDATE()) AS    EDAD
FROM  tabla_de_clientes;



