USE ventas_jugos;

CREATE TABLE tb_indentificacion(
ID INT AUTO_INCREMENT NOT NULL,
DESCRIPCION VARCHAR(50) NULL,
PRIMARY KEY (ID) 
);

SELECT * FROM tb_indentificacion;

INSERT INTO tb_indentificacion
(DESCRIPCION) VALUES('CLIENTE A');

SELECT * FROM tb_indentificacion;

INSERT INTO tb_indentificacion
(DESCRIPCION) VALUES('CLIENTE B');
INSERT INTO tb_indentificacion
(DESCRIPCION) VALUES('CLIENTE C')
;INSERT INTO tb_indentificacion
(DESCRIPCION) VALUES('CLIENTE D')
;INSERT INTO tb_indentificacion
(DESCRIPCION) VALUES('CLIENTE E');

SELECT * FROM tb_indentificacion;

DELETE FROM tb_indentificacion
WHERE ID = 3;

DELETE FROM tb_indentificacion
WHERE ID = 7;

SELECT * FROM tb_indentificacion;

INSERT INTO tb_indentificacion
(DESCRIPCION) VALUES('CLIENTE F');

INSERT INTO tb_indentificacion
(DESCRIPCION) VALUES('CLIENTE G');



INSERT INTO tb_indentificacion
(ID ,  DESCRIPCION) VALUES(100, 'CLIENTE G');

SELECT * FROM tb_indentificacion;

INSERT INTO tb_indentificacion
(DESCRIPCION) VALUES('CLIENTE H');

SELECT * FROM tb_indentificacion;