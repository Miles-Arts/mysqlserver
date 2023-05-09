USE sakila;

/*Se crea la table con ENGINE por DEFAULT con InnoDB*/
CREATE TABLE df_tabla 
( ID INT, NOMBRE VARCHAR(100));


/*Para cambiar el ENGINE default de la tabla*/
ALTER TABLE df_tabla ENGINE = MyISAM;


/*Se crea la table especificando el ENGINE 
que necesitamos
*/
CREATE TABLE df_tabla1 
( ID INT, NOMBRE VARCHAR(100)) ENGINE = MEMORY;

/*Ver la información de los ENGINES */
SHOW ENGINES;




