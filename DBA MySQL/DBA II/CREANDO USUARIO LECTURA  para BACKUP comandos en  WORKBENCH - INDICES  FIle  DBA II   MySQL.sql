/*USUARIO COMUN*/

/* PARA CREAR UN NUEVO USUARIO de LECTURA POR COMANDO | IDENTIFIED BY es contraseña*/
CREATE USER 'backup01'@'localhost' IDENTIFIED BY 'backup01';

/**/
/*TO ES EL USUARIO BACKUP
RELOAD refrescar los privilegios
*/
GRANT SELECT, RELOAD, 
LOCK TABLES, REPLICATION CLIENT 
ON *.*  TO 'backup01'@'localhost';














