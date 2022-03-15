	:empezar
 	
	set /p var=Escriba el nombre del archivo=

	IF EXIST %var% (
		echo "El archivo existe"
	) ELSE (
		echo "No existe"
	)

	EJERCICIO MEJORADO
	@echo off
	:empezar
	IF "%1"=="" goto noIntroducido

	IF EXIST %1 (
		echo "El archivo existe"
	) ELSE (
		echo "No existe"
	)
	
	goto fin	

	:noIntroducido
	echo No se introdujo nada
	
	:fin
	exit /B	
