#!/bin/bash

echo "Esta es la parte 1"

while IFS= read -r nombre
do
        if [[ "$nombre" == *Ana* ]];then
        echo "Procesando $nombre ....."

        elif [[ "$nombre" == *Juan* ]];then
        echo "Procesando $nombre"

        elif [[ "$nombre" == *Marta* ]];then
        echo "Procesando $nombre ....."

        elif [[ "$nombre" == *Pedro* ]];then
        echo "Procesando $nombre ....."
fi
done <alumnos.txt

echo "Esta es la parte 2,5,7"

read -p " Introduce un nombre de usuario y vamos a comprobar si existe" usuario

        if id  "$usuario" &>/dev/null;then
      	  echo "El usuario existe en el sistema"

          echo "Vamos a comprobar el grupo"
          id -nG "$usuario"

          echo "Vamos a añadir los ficheros al usuario y comprobar que existan"

        for i in *tareas *examenes *copias
        do
        if [ -f "$i" ];then
        echo " Ya estan creados no hace falta"
        else

        echo "No los tienes creados vamos a crearlos"
	sudo chgrp "$usuario"

        mkdir -p tareas
	chmod 775 tareas

        mkdir -p examenes
   	chmod 775 examenes

        mkdir -p copias
  	chmod 775 copias

        touch bienvenidas.txt
	chmod 775 bienvendidas.txt

	echo "Se han creado correctamente los archivos"

        fi
        done

	echo "Vamo a hacer una copia de seguridad"
	rsync -av /home/"$usuario" /tareas/
	echo " La copia de seguridad se realizo cocrectamente"
	echo "Se realizado la copia de seguridad correctamente"


        else

        echo "El usuario no existe en el sistema"
        echo "No podemos comprobar sus grupos"

        echo " Ya que no existe el usuario vamos a crearlo"
        read -p "Introduce el usuario que quieres añadir" usuario 
        sudo useradd -m -s /bin/bash "$usuario"

	echo "Vamos a ver si tienes unos ficheros o directorios si no te los creo "

	for i in *tareas *examenes *copias
	do
	if [ -f  "$i" ];then
	echo " Ya estan creados no hace falta"
	else
	echo "No los tienes creados vamos a crearlos"
	sudo chgrp "$usuario"

	mkdir -p tareas
        chmod 775 tareas

        mkdir -p examenes
        chmod 775 examenes

        mkdir -p copias
        chmod 775 copias

        touch bienvenidas.txt
        chmod 775 bienvendidas.txt



	fi
	done

        echo "Vamo a hacer una copia de seguridad como nuevo usuario"
        rsync -av /home/"$usuario" /tareas/
        echo " La copia de seguridad se realizo correctamente"

        fi


echo " Esta es la parte 3"
echo "Vamos a añadir estas carpetas y  archivos a la plantilla de los usuarios"
cd  /etc/skel
mkdir -p tareas
mkdir -p examenes
mkdir -p copias
touch bienvenida.txt

echo "Se ejecuto correctamente el comando"



echo "Esta  es la parte 6"
cd tareas

for i in {1..30}
do
touch "tarea $i.txt"
echo "tarea $i.txt"

done

echo " Se crearon correctamente los 30 archivos de tarea"



echo "Esta es la parte 8"
touch registro.log
< registro.log 

echo " Se sobrescribio correctamente la informacion a registro.log"
