/*Variables de Ambiente*/

/*
Variables que se declaran fuera del programa predefinidas 
antes de la inicialización

Más de 250 variables de MySQL


SHOW STATUS
-- Globales
-- Session


la ruta es   C:\ProgramData\MySQL

*/

SHOW STATUS;

/*tablas creada*/
SHOW GLOBAL STATUS LIKE 'Created_tmp_disk_tables';

/*tablas en memoria*/
SHOW GLOBAL STATUS LIKE 'Created_tmp_tables';


SHOW GLOBAL VARIABLES LIKE 'tmp_table_size';

/*Aumentar conecciones */
SET GLOBAL tmp_table_size = 136700160;






