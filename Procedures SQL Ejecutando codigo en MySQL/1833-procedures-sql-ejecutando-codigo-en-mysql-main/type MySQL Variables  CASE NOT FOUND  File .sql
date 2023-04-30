SELECT DISTINCT SABOR FROM tabla_de_productos;

SELECT SABOR, CODIGO_DEL_PRODUCTO FROM tabla_de_productos;

SELECT * FROM tabla_de_productos;
/*  1002334
1002767
1004327 
1088126
*/
CALL define_sabor('1002334');
CALL define_sabor('1002767');
CALL define_sabor('1004327');
CALL define_sabor('1088126');

CALL define_sabor_con_error('1037797');


