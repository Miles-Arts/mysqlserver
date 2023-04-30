SELECT * FROM tabla_de_productos;

/*
Precio >= 12 Producto Costoso;
Precio >= 7  y precio < 12  Producto Asequible;
PRecio < 7 Producto económico;
*/

SELECT PRECIO_DE_LISTA FROM  tabla_de_productos
WHERE CODIGO_DEL_PRODUCTO = '1000800';

CALL precio_producto('1000801'); 
CALL precio_producto('773912');
CALL precio_producto('1000800');














