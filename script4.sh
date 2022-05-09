#!/bin/bash

# Le but étant de Créer un script qui prend comme argument le nom d’un fichier. 
# Le script doit rechercher le fichier dans le répertoire courant et remonter jusqu’à deux niveaux. 
# Le script va aussi rendre le nombre d’occurrences du fichier.

#!/bin/bash

# On commence par renseigner le nom du fichier que nous voulons rechercher.
echo "Recherche de $1 dans notre système en cours..."
first=`ls | grep $1 | wc -l`
second=`ls .. | grep $1 | wc -l`
third=`ls ../.. | grep $1 | wc -l`

# On affiche le ou les fichiers trouvé(s).
echo "Nous avons détecté $((first + second + third)) occurence(s) de fichier(s) contenant le(s) nom(s) $1." 
echo "Voulez-vous afficher le(s) résultat(s) (y/Y) ?"

# On affiche la réponse de l'utilisateur.
read answer 

# La réponse sera affichée peut importe si l"utilisateur entre un "y" ou un "Y".
if [[ $answer -eq "y" ]] || [[ $answer -eq 'Y' ]]; then
	ls | grep $1
	ls .. | grep $1
	ls ../.. | grep $1
fi