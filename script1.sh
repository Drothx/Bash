#!/bin/bash

# Le but étant de créer un script qui affiche son propre nom et tous ses arguments.

#           a.EX:./monscript.sh hello world
#           b.Affiche :«monnom : monscript.sh»
#           c.Affiche:«mes arguments:hello world»


#!/bin/bash

# INSTRUCTIONS et EXPLICATIONS

# On commence par afficher son nom.
# "$0" correspond au nom du script exécuté. 
echo "mon nom : $0"

# On affiche les arguements renseignés lors de l'exécution du script.

# "$1" correspond au nom du premier paramètre renseigné
# "$2" correspond au nom du second paramètre renseigné

echo "Mes arguments: $1 $2 "