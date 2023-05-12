/* MYSQLSLAP*/

-- SIn INDICE - registro X registro
SELECT * FROM facturas WHERE FECHA_VENTA = '20170101';

-- creando INDICE
ALTER TABLE facturas  ADD INDEX(FECHA_VENTA);
SELECT * FROM facturas WHERE FECHA_VENTA = '20170101';

----------------------------------------------------
-- SIn PK INDICE CLAVE EXTERNA - registro X registro
SELECT * FROM facturas1 WHERE FECHA_VENTA = '20170101';

-- creando INDICE
ALTER TABLE facturas  ADD INDEX(FECHA_VENTA);
SELECT * FROM facturas WHERE FECHA_VENTA = '20170101';

-- SE DEBE AÑADIR SIN ESPACION EN SIGNOS   RECUERDA mysqldump   -uroot -p -  en BIN
mysqlslap -uroot -p  -- concurrency = 100 --iterations=10 --create-schema = jugos_ventas --query = " SELECT * FROM facturas WHERE FECHA_VENTA = '20170101'";


