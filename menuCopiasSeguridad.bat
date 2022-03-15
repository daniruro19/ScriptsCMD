	@echo off

	:inicio
	echo MENU
	echo "1----> Copia de contabilidad"
	echo "2----> Copia de nominas"
	echo "3----> Copia de facturas"
	echo "4----> Salir del programa"

	set /p var= ¿Que desea hacer?=

	IF %var%==1 (
		echo Copiando la contabilidad
		copy ..\ASIR\* C:\Users\asir\Desktop\comandosCMD\PRUEBA
		goto inicio
	)

	IF %var%==2 (
		echo Copiando las nominas
		copy ..\ASIR\* C:\Users\asir\Desktop\comandosCMD\PRUEBA
		goto inicio
	)

	IF %var%==3 (
		echo Copiando las facturas
		copy ..\ASIR\* C:\Users\asir\Desktop\comandosCMD\PRUEBA
		goto inicio
	)

	IF %var%==4 (
		echo Saliendo del programa
		exit /B
	)

	echo "Caracter no valido, volviendo al menu"
	goto inicio