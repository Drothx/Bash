#!/bin/bash

# Le but étant de créer un script qui prend en argument des noms de fichier « .txt ». 
# Ce dernier crée ces fichiers avec 1000 nombres aléatoires de l’intervalle « 0 – 10000 »


#!/bin/bash 

# Définition de la fonction permettant d'initialiser les 1000 nombres aléatoirement.
function intel () 
{
    for ((c=1; c<=1000; c++))
    do
    # Affichage des nombres aléatoirement.
    echo $((1 + RANDOM % 10000)) >> "$1"
    done
}

# Instruction à suivre.
for count in $*
do

    # S'il y a présence de l'extension ".txt" alors on créé le fichier avec cette extension.
    if  [[ "$count" == *".txt" ]] 
        then
        # Création d'un fichier avec les 1000 nombres dans le fichier.
        touch "$count"
        intel $count
    fi
done