/*BACK UP
Copia de seguridad DB
se hace periodicamente 

cuidado al hacer los  delete - DROP DATABSe

--BACK UP Logico--
comando rutunas
tablas, los exporta a un script sql -
permite manipulación externa
--es lenta por los comandos-


BACK UP Físico
Contiene toda la información de la DB en archivos binarios
sin comandos.
-file compacto--
--es rápida- y menos fleixoble

MYSQL-DUMP
mysql[options]

usuario-contraseña-servidos
all-databases.. cuando el back está completo
><nombre_archivo> muestra el archivo de salida
Stored Procedures usar --routines y events









*/

USE jugos_ventas;


/*PARA HACER BACK UP DESDE WORKBENCH*/
/*detener la DB*/
LOCK instance for backup;

/*activar la DB*/
UNLOCK instance;

/*Se puede automatizar por las noches
*/

LOCK instance for backup;

/*activar la DB*/
UNLOCK instance;

/*BACKUP LOGICO Y FISICO SE PUEDEN 
HACER LOS DOS

SIEMPRE CON EL ARCHIVO  my.ini.*/








