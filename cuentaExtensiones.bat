	Rem @echo off
	setlocal enabledelayedexpansion

	IF %1.==. echo No se ha indicado formato de archivo & goto fin
	IF %2.==. echo No se ha indicado ninguna ruta & goto fin

	SET num=0

	FOR %%f in (%2\*%1) do echo %%f & SET /A num=num+1 & echo !num!
	echo Hay %num% ficheros

	endlocal	

	:fin
	echo "El programa se cerrara"
	exit /B
	
