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

/*valor nulo al llamar un parametro Vacío */
SELECT * FROM clientes LIMIT 15, 1;
SELECT * FROM clientes LIMIT 16, 1;




