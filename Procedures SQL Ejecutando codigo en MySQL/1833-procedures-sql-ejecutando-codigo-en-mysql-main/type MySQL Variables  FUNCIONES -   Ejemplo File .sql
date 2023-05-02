SET GLOBAL log_bin_trust_function_creators = 1;

CALL f_define_sabor;

/*PARA FUNCIONES CREADAS SE LLAMA CON --SELECT--
fUNCIONA QUE CUALUIER FUNCION PROM,IA DE MySQL

*/

SELECT f_define_sabor('Maracuyá');

SELECT NOMBRE_DEL_PRODUCTO, SABOR, f_define_sabor(SABOR) AS Sabordologo
FROM tabla_de_productos;

SELECT NOMBRE_DEL_PRODUCTO, SABOR
FROM tabla_de_productos
WHERE f_define_sabor(SABOR) = 'Delicioso';


