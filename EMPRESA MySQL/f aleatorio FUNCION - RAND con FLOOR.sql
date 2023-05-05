CREATE FUNCTION `f_aleatorio` (min INT, max INT)
RETURNS INTEGER
BEGIN

DECLARE vresultado INT;

/*SELECT FLOOR(RAND() * (250- 20 + 1)) + 20 AS ALEATORIO;*/
SELECT FLOOR(RAND() * (max - min  + 1)) + min
INTO vresultado;

RETURN vresultado;
END
