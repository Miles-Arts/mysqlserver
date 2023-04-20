SELECT CURRENT_TIMESTAMP() AS RESULTADO;

SELECT CONCAT("La fecha y la hora de hoy son:  " , 
CURRENT_TIMESTAMP) AS RESULTADO;

SELECT CONCAT("La fecha y el horario son:  " , 
DATE_FORMAT(CURRENT_TIMESTAMP(), "%Y")) AS RESULTADO;

SELECT CONCAT("La fecha y el horario son:  " , 
DATE_FORMAT(CURRENT_TIMESTAMP(), "%y")) AS RESULTADO;

SELECT CONCAT("La fecha y el horario son:  " , 
DATE_FORMAT(CURRENT_TIMESTAMP(),  "Mes y Año, %m ,%y")) 
AS RESULTADO;

SELECT CONCAT("La fecha y el horario son:  " , 
DATE_FORMAT(CURRENT_TIMESTAMP(),  "Mes %m / Año %y")) 
AS RESULTADO;

SELECT CONCAT("La fecha y el horario son:  " , 
DATE_FORMAT(CURRENT_TIMESTAMP(),  " Day %d / Month %m / Year %y")) 
AS RESULTADO;


SELECT CONCAT("La fecha y el horario son:  " , 
DATE_FORMAT(CURRENT_TIMESTAMP(),  "%W / Day %d / Month %m / Year %y")) 
AS RESULTADO;

SELECT CONCAT("La fecha y el horario son:  " , 
DATE_FORMAT(CURRENT_TIMESTAMP(),  
"%W / Day %d / Month %m / Year %y / A time  %T")) 
AS RESULTADO;

SELECT CONVERT(23.45, CHAR) AS RESULTADO;

SELECT SUBSTRING(CONVERT(23.45, CHAR), 3,1 ) AS RESULTADO;


SELECT CONCAT("El cliente ", TC.NOMBRE, " facturó ", 
CONVERT(SUM(IFa.CANTIDAD * IFa.precio), CHAR(20))
 , " en el año ", CONVERT(YEAR(F.FECHA_VENTA), CHAR(20))) AS FRASE FROM facturas F
INNER JOIN items_facturas IFa ON F.NUMERO = IFa.NUMERO
INNER JOIN tabla_de_clientes TC ON F.DNI = TC.DNI
WHERE YEAR(FECHA_VENTA) = 2016
GROUP BY TC.NOMBRE, YEAR(FECHA_VENTA);




