CREATE DEFINER=`root`@`localhost` PROCEDURE `incluir_producto_parametros`(
vcodigo VARCHAR(20),
vnombre VARCHAR(20),
vsabor VARCHAR(20),
vtamano VARCHAR(20),
venvase VARCHAR(20),
vprecio DECIMAL(4,2)
)
BEGIN
/*Se puede añadir las variables dentro de Procedure

DECLARE vcodigo VARCHAR(20) DEFAULT '3003001';
DECLARE vnombre VARCHAR(20) DEFAULT 'Sabor Intenso';
DECLARE vsabor VARCHAR(20) DEFAULT 'Tutti Frutti';
DECLARE vtamano VARCHAR(20) DEFAULT '700 ml';
DECLARE venvase VARCHAR(20) DEFAULT 'Botella PET';
DECLARE vprecio DECIMAL(4,2) DEFAULT 7.25;*/

DECLARE mensaje VARCHAR(40);
DECLARE EXIT HANDLER FOR 1062
/* Añadir mensaje de error*/
BEGIN

	SET  mensaje =   "Producto duplicado";
	/* 
	Para incluir un nuevo producto repetido avisa del error
	*/
	SELECT mensaje;
END;

INSERT INTO tabla_de_productos (CODIGO_DEL_PRODUCTO,NOMBRE_DEL_PRODUCTO,SABOR,TAMANO,ENVASE,PRECIO_DE_LISTA)
     VALUES (vcodigo, vnombre, vsabor, vtamano, venvase, vprecio);
SET  mensaje =   "Producto incluido con éxito";
/* 
Para incluir un nuevo prouducto avisa del éxito
*/
SELECT mensaje;
END