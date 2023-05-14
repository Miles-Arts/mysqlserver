/* PARACREAU UN NUEVO USUARIO POR COMANDO*/
CREATE USER 'admingeneric02'@'%' IDENTIFIED BY 'admingeneric02';


GRANT ALL PRIVILEGES 
ON *.*  TO 'admingeneric02'@'%' WITH GRANT OPTION;



SELECT * FROM mysql.user;

SHOW GRANTS FOR 'user02'@'localhost';

REVOKE ALL PRivileges, GRANT OPTION FROM 'user02'@'localhost';
