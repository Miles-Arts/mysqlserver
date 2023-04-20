SELECT LTRIM("   MySQL es fácil");

SELECT RTRIM("   MySQL es fácil    ");

SELECT TRIM("   MySQL es fácil   ");

SELECT CONCAT("MySQL es fácil,",  " No lo crees?");

SELECT UPPER("mysql es una base de datos interesante");

SELECT LOWER("MYSQL ES UNA BASE DE DATOS INTERESANTE");

SELECT SUBSTRING("mysql es una base de datos interesante", 14,4);

SELECT CONCAT(NOMBRE, " ", DNI ) FROM tabla_de_clientes;

SELECT CONCAT(NOMBRE, " ", DNI, " ", BARRIO, " ", CIUDAD, " ", ESTADO ) FROM tabla_de_clientes;
