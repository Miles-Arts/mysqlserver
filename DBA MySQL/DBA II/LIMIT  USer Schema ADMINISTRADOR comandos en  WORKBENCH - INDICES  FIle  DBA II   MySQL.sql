USE jugos_ventas;

/* el Porcentaje % para conexión desde  IP distintas a LOCALHOST*/
CREATE USER 'user04'@'%' IDENTIFIED BY 'user04';




GRANT SELECT, INSERT, UPDATE, DELETE, CREATE TEMPORARY TABLES,
LOCK TABLES,
EXECUTE
ON jugos_ventas.*  TO 'user04'@'%';



CREATE USER 'user05'@'%' IDENTIFIED BY 'user05';

GRANT SELECT, INSERT, UPDATE, DELETE
ON jugos_ventas.facturas  TO 'user05'@'%';


CREATE USER 'user06'@'%' IDENTIFIED BY 'user06';

GRANT SELECT, INSERT, UPDATE, DELETE
ON jugos_ventas.facturas  TO 'user06'@'%';








