CREATE FUNCTION `f_define_sabor` (vsabor VARCHAR(40))
RETURNS VARCHAR(40)
BEGIN

/* Esta línea no devuelve nada*/
DECLARE vretorno VARCHAR(40) DEFAULT ""; 
CASE vsabor 
WHEN 'Maracuyá' THEN SET vretorno = 'Sabor Delicioso';
WHEN 'Limón' THEN SET vretorno = 'Sabor Delicioso';
WHEN 'Frutilla' THEN SET vretorno = 'Sabor Delicioso';
WHEN 'Uva' THEN SET vretorno = 'Sabor Delicioso';
WHEN 'Sandía' THEN SET vretorno = 'Sabor Normal';
WHEN 'Mango' THEN SET vretorno = 'Sabor Normal';
ELSE SET vretorno = 'Jugos Comunes';
END CASE;

RETURN vretorno;
END
