/*

InnoDB y MEMORY

--InnoDB
		-El mas usado ahora en MySQL
        diseñado para varios usuarios en simultaneo
        
        -soporte transaccional completo / Soporte claves externas
		
		-Cache de Buffer configuaro por separado tanto base como indice

		-Bloqueo tabla a nivel línea

		-Indezación BTREE

		-BACK UP de la DB se puede hacer ONLINe sin bloqueo - con servidor activo


	innodb_data_file_path  
						-Determina camino y tamaño máximo del archivo 
                        sistema donde almacenará la información
                        
     innodb_data_home_dir 
						camino común del directorio de todos los archivos
                        innodb cuando se especifica graba todo dentro del directorio
                        * DEFAULT = /mysqldata
                        
     innodb_file_per_table 
						separa el almacenamiento de datos y sus indices
                        por defecto almacena datos e índices de forma compartida

Desempeño

		innodb_buffer_pool_size
						determina el tamaño de almacenamiento que innodb
                        va a usar para almacenar índices y datos cache

		
		innodb_flush_log_at_trx_commit
						Determina la frecuencia con el que el buffer
                        login es habilitado para el disco.
                        crece con el uso despues  de un lapso descarga al HD
                        
        innodb_log_file_size    
						tamaño en Bytes se crean archivos login-in
                        por defecto 5MB



--MEMORY crea tablas en memoria

	Mecanismo almacenamiento tablas RAM no en disco
	no soporta clave externa
    Acesso rápido a la información
    Bloqueo nivel tabla
    Indice Hash default y BTREE
    Formato líena de longitud fija
    (No soporta BLOB/TEXT)
    






*/



















