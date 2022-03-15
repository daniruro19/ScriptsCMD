	@echo off

	IF %1.==. echo No se han introducido suficientes parametros & goto fin

	IF EXIST %1 (	
		for /F "tokens=*" %%i in (%1) do IF EXIST %%i (echo Ya existe el directorio %%i
						) ELSE ( mkdir %%i & echo Se creo el directorio %%i)
	) ELSE (
		echo "El fichero introducido no existe"
		goto fin
	)

	echo "El programa se termino satisfactoriamente"
	
	:fin
	exit /B