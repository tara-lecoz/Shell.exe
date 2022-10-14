#!/bin/bash
export IFS=","
cat Shell_Userlist.csv | sed 1d Shell_Userlist.csv | sed -e 's/ //g' | while read Id Prenom Nom Mdp Role || [ -n "$Role" ];
	do 
	sudo useradd $Prenom-$Nom
	echo "$Prenom-$Nom:$Mdp" | sudo chpasswd
	sudo usermod -u $Id "$Prenom-$Nom"
		if [[ "$Role" = *"Admin"* ]]
 		then
		sudo usermod -aG sudo "$Prenom-$Nom"
		fi
	done
