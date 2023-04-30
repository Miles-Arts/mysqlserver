CREATE PROCEDURE `define_sabor_con_error` ()
BEGIN
DECLARE vsabor VARCHAR(20);

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
END
