	@echo off

	IF "%1"=="" goto noIntroducido

	IF exist %1\*.* goto directorio
	IF exist %1 goto fichero
	echo %1 no es nada & goto fin
		
	:directorio
	echo es un directorio
	goto fin

	
	:fichero
	echo es un fichero
	goto fin

	:noIntroducido
	echo No se introdujo una mierda

	:fin
	exit /B	

	EJERCICIO MEJORADO
	@echo off 

	:bucle
	IF "%1"=="" goto noIntroducido
	IF exist %1\nul goto directorio
	IF exist %1 goto fichero
	echo %1 No es nada & goto vuelta
		
	:directorio
	echo es un directorio 
	goto vuelta

	:fichero
	echo Es un fichero
	goto vuelta

	:vuelta
	shift
	goto bucle

	:noIntroducido
	echo Final del programa

	:fin
	exit /B	