/*USUARIO COMUN*/

/* PARA CREAR UN NUEVO USUARIO de LECTURA POR COMANDO | IDENTIFIED BY es contraseña*/
CREATE USER 'read01'@'localhost' IDENTIFIED BY 'read01';

/**/
/*TO ES EL USUARIO*/
GRANT SELECT, EXECUTE
ON *.*  TO 'read01'@'localhost';















