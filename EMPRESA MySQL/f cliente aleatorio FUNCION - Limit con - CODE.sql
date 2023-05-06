CREATE FUNCTION `f_cliente_aleatorio` ()

RETURNS VARCHAR(11)
BEGIN

DECLARE vresultado VARCHAR(11);
DECLARE vmax INT;

/*variable Aleatoria*/
DECLARE valeatorio INT;

SELECT COUNT(*) INTO vmax FROM clientes;
SET valeatorio = f_aleatorio(1,vmax);
SET valeatorio = valeatorio-1 ;

/*Para llamar la base de Datos y activar las función*/
SELECT DNI 
INTO vresultado  
FROM clientes 
LIMIT valeatorio,1;

RETURN vresultado;

END