#!/bin/bash

# Le but étant de créer un script qui prend en argument le nom d’un répertoire (fullpath). 
# Il doit s’assurer que le fichier mis en argument est un répertoire, ensuite compter le nombre de répertoires, 
# Ainsi le nombre d’exécutable et le nombre de fichiers à l’intérieur. Le script affiche ces informations


#!/bin/bash

# On demande à l'utilisateur de renseigner le chemin voulut.
echo "Entrez le chemin (attention aux /):"
read chemin 

# Vérification du type de fichier, ici en l'occurence, un dossier.
if [ -d "$chemin" ] 
then

# Avec la commande, on se deplace vers le dossier renseigné ci-dessus.
cd "$chemin" 

# Calcul du/des dossier(s) présent(s) dans le répertoire.
dir=$(find -maxdepth 1 -type d | wc -l)

# Calcul du/des fichier(s) présent(s) dans le répertoire.
file=$(find -maxdepth 1 -type f | wc -l)

# Calcul du/des fichier(s) exécutable(s) présent(s) dans le répertoire.
exe=$(find -maxdepth 1 -type f -executable | wc -l) 

# Décompte du dossier courant.
dir=$( expr $dir - 1) 

# On affiche les résultats obtenus en faisant précisant le nomnbre de dossier(s) et de fichier(s) obtenus ainsi que la vérification d'un fichier exécutable.
echo "Le répertoire $chemin se compose de $dir dossiers(s), de $file fichier(s) et dont $exe fichier(s) executable(s)."

fi