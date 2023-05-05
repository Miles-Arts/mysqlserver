/* RAND crea un número aleatorio entre 0 y 1*/

-- MIN = 20 y MAX = 250
-- (RAND() * (MAX - MIN + 1)) + MIN

/* SELECT (RAND() * (MAX - MIN + 1)) + MIN; */
SELECT (RAND() * (250- 20 + 1)) + 20 AS ALEATORIO;

/*la Función FLOOR devuelve números ENTEROS*/
SELECT FLOOR(RAND() * (250- 20 + 1)) + 20 AS ALEATORIO;






