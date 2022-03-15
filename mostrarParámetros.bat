	@echo off
		
	:bucle
	IF "%1"=="" goto noIntroducido

	:leer
	echo %1
	goto vuelta	

	:vuelta
	shift
	goto bucle

	:noIntroducido
	echo Final del programa

	:fin
	exit /B	