


/*

9 mecanismos para almacenar

y se pueden usar varios en la DB

*ENGINE parámetro que indica 
		el mecanismo de almacenamiento empleado en la table


*LOS 3 Principales:
		-MyISQM
        -InnoDB
        -MEMORY

-MyISQM 
		-No es transaccional, n sirve para varios usuarios
        -sólo bloqueo  a nivel tabla -- lectura rápida--
        -tablas que cambian poco, registros fijos
        -la clave externa no soporta FULL TEXT
        -Almacenamiento compacto -optimiza espacio-
        -Implementa indices HASH y BTREE ventaja
        
        key_buffer_size 
						detenrmia el tamaño para almacenar 
						ídices entre 8MB - 4GB de acuerdo con OS

		concurrent_insert
							comportamiento de inserciones
                            concurrentes dentro de MyISQM
                            0 = inserciones simultáneas desactivadas
                            1 = inserciones simultáneas activadas (al tiempo)
                            2 = inserciones simultáneas activadas (intervalo de tiempo si - no)

		delay_key_write 
							atrasa la actualización, 
                            espera la inserción de data 
                            para actualizar los índices 
							-actualiza por bloques completos-
                          
        mas_write_lcojk_count
							Números de grabaciones de la tabla,
                            que tendran precedencia a la lectura
                            -prioriza las grabaciones antes de las lecturas
                            en vasrias conexiones

		preload_buffer_size
							tamaño buffer antes de ser usado 32 KB


Estas variables se utilizan cuando el DBA sepa del entorno 
proyecto - harware  - DB

--myisamchk Analiza y optimiza repara tablas MyISQM --las reconstruye--
--myisampack  Crea tablas compactas sólo lectura- no se puede hacer inserciones en  tablas
				(Mejor desempeño lectura)

--myisam_ftdump  Exhibe información más completa campos de texto


*/























