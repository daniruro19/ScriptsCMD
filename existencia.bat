IF EXIST C:\Users\nul goto existe
echo No existe el archivo
exit /B

:existe
echo El directorio existe

	IF EXIST Parad (
		echo "El archivo existe"
	) ELSE (
		echo "No existe"
	)