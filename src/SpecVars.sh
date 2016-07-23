#!/bin/bash

## Este script revisa los argumentos de un script

# Definicion de variables
ERRORLOG="$0.err"

#Ejemplo1
#if cp archivo1.txt archivo1.txt.bkup 2> $0.err
#then
#	echo "el comando se ejecuto correctamente"
#fi


#Ejemplo2
if cp archivo1.txt archivo1.txt.bkup 2> $ERRORLOG
then
	if cp archivo2.txt archivo2.txt.bkup 2> $ERRORLOG
	then
 		echo "el respaldo de ambos archivos se ejecuto correctamente"
	fi
else
	echo "El archivo1 no pudo ser respaldado, por lo tanto el archivo2 
tampoco fue respaldado, verifique $ERRORLOG"
	cat $ERRORLOG | mail -s "error de respaldo" ivettevindas@hotmail.com
fi

