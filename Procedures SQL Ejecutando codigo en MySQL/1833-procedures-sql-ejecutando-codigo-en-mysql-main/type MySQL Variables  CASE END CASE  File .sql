SELECT DISTINCT SABOR FROM tabla_de_productos;

SELECT * FROM tabla_de_productos;


/*
---Sabores de Delicioso normales a sabores comunes---

Maracuyá  Delicioso
Limón Delicioso
Frutilla Delicioso
Uva Delicioso
Sandía Normal
Mango Nornal

Los demás Sabores Comúnes

*/

SELECT SABOR FROM tabla_de_productos
WHERE CODIGO_DEL_PRODUCTO = '1000889';


SELECT * FROM tabla_de_productos;
/*  1002334
1002767
1004327 
1088126
*/
CALL define_sabor('1037797');
CALL define_sabor('1002767');
CALL define_sabor('1004327');
CALL define_sabor('1088126');









