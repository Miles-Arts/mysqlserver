CREATE PROCEDURE `define_sabor` ( vcodigo VARCHAR(20))
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
ELSE SELECT 'Jugos Comunes';
END CASE;

END
/*
---Sabores de Delicioso normales a sabores comunes---

Maracuyá  Delicioso
Limón Delicioso
Frutilla Delicioso
Uva Delicioso
Sandía Normal
Mango Nornal

Los demás Sabores Comúnes

*/