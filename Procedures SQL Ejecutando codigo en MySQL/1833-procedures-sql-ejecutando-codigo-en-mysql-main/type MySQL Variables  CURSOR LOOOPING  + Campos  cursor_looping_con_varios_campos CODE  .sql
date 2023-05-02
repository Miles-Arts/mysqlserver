CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor_looping_con_varios_campos`()
BEGIN
DECLARE fin_c INT DEFAULT 0;
DECLARE vbarrio, vciudad, vestado, vcp VARCHAR(150);
DECLARE vnombre, vdireccion VARCHAR(150);

/* Abajo  se obtiene la información de esas tablas */
DECLARE c CURSOR FOR SELECT NOMBRE, DIRECCION_1, BARRIO, CIUDAD, ESTADO, CP FROM tabla_de_clientes;

/* SE UTILIZA HANDLER - para no detener la compilaicón */
DECLARE CONTINUE HANDLER FOR NOT FOUND
SET fin_c = 1;
OPEN c;
WHILE fin_c = 0
DO
FETCH c INTO vnombre, vdireccion, vbarrio, vciudad, vestado, vcp;
IF fin_c = 0 

/* Para COCATENAR */
THEN SELECT CONCAT(vnombre, ' Dirección: ', vdireccion, " - ", vbarrio, ' - ', vciudad, ' - ', vestado, ' - ',vcp) AS RESULTADO;
END IF;
END WHILE;
CLOSE c;
END