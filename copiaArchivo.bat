   @echo off

   IF %1.==. ( echo No se introdujo parametro & goto fin )
   IF EXIST %1 ( pause
		 copy %1 C:\Users\usuario\Desktop\CMD
		 goto fin	
   ) ELSE (
		echo "El fichero no existe"
   )
    
	:error
	echo "Se produjo un error" 
	goto fin

	:fin 
	exit /B

