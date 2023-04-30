CREATE DEFINER=`root`@`localhost` PROCEDURE `define_sabor_con_error`(vcodigo VARCHAR(20))
BEGIN

/* Primero se declaran las variables*/

DECLARE vsabor VARCHAR(20);
DECLARE mensajeerror VARCHAR(50);
DECLARE  CONTINUE HANDLER FOR 1339

SET mensajeerror = 'Sabor no definido en ningún caso.';

SELECT SABOR INTO vsabor FROM tabla_de_productos
WHERE CODIGO_DEL_PRODUCTO = vcodigo;

CASE vsabor 
WHEN 'Maracuyá' THEN SELECT 'Sabor Delicioso';
WHEN 'Limón' THEN SELECT 'Sabor Delicioso';
WHEN 'Frutilla' THEN SELECT 'Sabor Delicioso';
WHEN 'Uva' THEN SELECT 'Sabor Delicioso';
WHEN 'Sandía' THEN SELECT 'Sabor Normal';
WHEN 'Mango' THEN SELECT 'Sabor Normal';
END CASE;
SELECT mensajeerror;
END