/* RAND crea un número aleatorio entre 0 y 1*/

-- MIN = 20 y MAX = 250
-- (RAND() * (MAX - MIN + 1)) + MIN

/* SELECT (RAND() * (MAX - MIN + 1)) + MIN; */
SELECT (RAND() * (250- 20 + 1)) + 20 AS ALEATORIO;

/*la Función FLOOR devuelve números ENTEROS*/
SELECT FLOOR(RAND() * (250- 20 + 1)) + 20 AS ALEATORIO;

/*La línea de abajo para crear FUNCIONES*/
SET GLOBAL log_bin_trust_function_creators = 1;

/* SELECT RAND() * 8;

El output será un número en el intervalo [0;8].*/


SELECT f_aleatorio(1,250) AS NUM_RESULTADO;


