/*La línea de abajo para crear FUNCIONES*/
SET GLOBAL log_bin_trust_function_creators = 1;

/*Para obtener el valor máximo de una tabla*/
SELECT COUNT(*) FROM clientes;

/* para llamar toda mi  BD - Base de Datos*/
USE empresa;

/*Para llamar una Tabla de la BD*/
SELECT * FROM clientes;

/*función LIMIT sólopara llamar los 5 primeras líneas de la BD*/
SELECT * FROM clientes LIMIT 5;

/*Para selecionar el cliente siguiente de una línea especifica */
SELECT * FROM clientes LIMIT 5, 1;
SELECT * FROM clientes LIMIT 5, 3;

/*valor nulo al llamar un parametro Vacío */
SELECT * FROM clientes LIMIT 15, 1;
SELECT * FROM clientes LIMIT 16, 1;

/*Desde el 0 tomar el siguiente en la lita*/
SELECT * FROM clientes LIMIT 0, 1;


/*utilizando Función Aleatorio*/
SELECT f_cliente_aleatorio() AS DNI_CLIENTES;














