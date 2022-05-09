#!/bin/bash

# Le but étant de créer un script qui prend comme argument deux répertoires. 
# Le script retourne les fichiers communs aux deux répertoires qui ne partage pas le nom d’un répertoire. 
# Les répertoires peuvent contenir des sous répertoires. Aucune commande automatique n’est admise


#!/bin/bash

IFS=$(echo -en "\n")

function search {
    for arg in $@
    do
            list=$(ls -la $arg)
            length=$(echo $list | wc -l )

            if [ $((length)) -eq 1 ]
            then
                    file=$(echo $list | cut -d ' ' -f 10)
                    md5sum $file >> file_list

            elif [ $((length)) -gt 3 ] 
            then
                    argrec=$(echo $list | tail -n +4 |awk '{print $9}')
                    echo argrec
                    $argrec=$(awk -v var="$@" '{print var$0}' <<< "$argrec")

#search "$@""$argrec"
                fi
        done
}
search "$1"