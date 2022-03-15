	@echo off
	
	set /p var= Introduzca los dos primeros caracteres=
	set /p direct= Ingrese la ruta que desea escanear=

	Rem %var:~0,2% 
	Rem "con esta instruccion cogeremos solo los dos primeros caracteres de la variable introducida"

	IF EXIST %direct%\nul (	
			FOR /R %%f in (%direct%\%var:~0,2%*.*) do echo %%f >> PRUEBA.txt
	) ELSE (
			echo "No existe ningun directorio asi"
			goto fin
	)
	
	FOR /F "tokens=*" %%i in (PRUEBA.txt) do echo %%i
	del PRUEBA.txt	

	:fin
	exit /B
