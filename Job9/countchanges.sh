#!/bin/bash
nv=$(sudo find /home/tara/Git/shell.exe/Job9/Shell_Userlist.csv -mtime 1 | wc -l)

if [ $nv = "1" ]
then
	echo "Fichier modifié, relancement du script"
	../home/tara/Git/shell.exe/Job9/accessrights.sh
elif [ $nv = "0" ]
then
	echo "Aucune modification"
else
	echo "Vérifier le contenu du fichier"
fi
