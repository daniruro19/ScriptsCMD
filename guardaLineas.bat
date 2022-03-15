	Rem @echo off

	IF %1.==. echo No se introdujeron parametros & goto fin
	IF EXIST 30.txt (
		del 30.txt
	)

	
	:bucle
	FOR %%f in (%1) do echo %%f >> 30.txt && type %%f | find /v /c "" >> 30.txt 
	
	IF %2.==. (
		goto fin
	) ELSE (
		shift
		goto bucle
	)
		

	:fin
	echo El programa se cerrara
	exit /B