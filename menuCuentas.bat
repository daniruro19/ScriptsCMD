	@echo off

	:program
	echo MENU PROGRAMA
	echo "1----->Ver las cuentas de usuario existentes"
	echo "2----->Aniadir una cuenta de usuario"
	echo "3----->Eliminar una cuenta de usuario"
	echo "4----->Salir de la aplicacion"

	set /p var=Elija una opcion=

	IF %var%==1 (
		cls
		net user
		goto program
	)

	IF %var%==2 (
		cls
		set /p nombreAniadir=Introduzca el usuario a crear=
		net user %nombreAniadir% IesZaidinVergeles210 /add
		goto program
	)

	IF %var%==3 (
		cls
		set /p nombreBorrar=Introduzca el usuario a borrar=
		net user %nombreborrar% /delete
		goto program
	)

	IF %var%==4 (
		echo Ha elegido usted salir del programa
		exit /B
	)


	:fin
	echo "ERROR=>El programa se cerrara"
	exit /B
