	@echo off
	
	IF "%3"=="" (
		goto fin		

	) ELSE (
		IF EXIST %1\* (
			echo "El primer parametro es un directorio"
			IF EXIST %2 ( 
				echo "El segundo parametro es un fichero"
			) ELSE (
				goto fin
			)
		) ELSE (
			goto fin
		)

		IF "%3"=="A" goto aniadir
		IF "%3"=="R" goto reemplazar
	)

	:fin
	echo Parametros no introducidos
	exit /B

	:aniadir
	echo "Se aniade el contenido"
	dir %1 >> %2
	exit /B

	:reemplazar
	echo "Se reemplazara el contenido"
	dir %1 > %2
	exit /B
