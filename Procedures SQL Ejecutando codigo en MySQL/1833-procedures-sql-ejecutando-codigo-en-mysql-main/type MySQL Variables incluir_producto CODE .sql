CREATE PROCEDURE `incluir_producto` ()
BEGIN
DECLARE vcodigo VARCHAR(20) DEFAULT '3003001';
DECLARE vnombre VARCHAR(20) DEFAULT 'Sabor Intenso';
DECLARE vsabor VARCHAR(20) DEFAULT 'Tutti Frutti';
DECLARE vtamano VARCHAR(20) DEFAULT '700 ml';
DECLARE venvase VARCHAR(20) DEFAULT 'Botella PET';
DECLARE vprecio DECIMAL(4,2) DEFAULT 7.25;
INSERT INTO tabla_de_productos (CODIGO_DEL_PRODUCTO,NOMBRE_DEL_PRODUCTO,SABOR,TAMANO,ENVASE,PRECIO_DE_LISTA)
     VALUES ('1001001','Sabor Alpino','Mango','700 ml','Botella',7.50);
END