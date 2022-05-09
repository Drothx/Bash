#!/bin/bash

# Le but étant de créer un script qui demande à l’utilisateur de taper son nom et son prénom. Ces informations sont ensuite affichées sur le STDIN.


#!/bin/bash

# Le script fonctionnera sous forme de condition on utilisera "if" pour chacune d'entres elles.


#################################################################################################################################################

# Condition si l'argument est "c"

# RAPPEL IMPORTANT: $1 contient le nom du premier paramètres

# Cette ligne se traduit par la vérification de l'argument renseigné par l'utilisateur: -c.
if [ "$1" = "-c" ] 
    then

    # Vérification si deux arguments sont renseignés.
    if [ "$#" -gt "1" ] 
        
        # Si présence d'un troisième argument, celui-ci est un dossier.
        then
        if [ -d "$3" ] 

           # On se deplace dans ce dossier pour créer le fichier dans le chemin renseigné.
            then
            cd "$3"

            #Création du fichier.
            touch "$2" 

        #Création du fichier.
        else
            touch "$2"

        # Fin du troisième if.
        fi

    # Avertissement envers l'utilisateur qu'aucun nom de fichier n'a été renseigné.
    else
    echo "Attention ! Aucun nom de fichier n'a été renseigné, il faut donc en renseigner un !" 
    
    # Fin du second if.
    fi 

# Fin du premier if.                                                                                                
fi                                                                                                  

#################################################################################################################################################

# Condition si l'argument est "r"

# Cette ligne se traduit par la vérification de l'argument renseigné par l'utilisateur: -r.
if [ "$1" = "-r" ]
    
    # Vérification si deux arguments sont renseignés.
    then
    if [ "$#" -gt "1" ]
        
        # Vérification si le second argument est un fichier.
        then
        if [ -f "$2" ]
           
            # On affiche le contenu du fichier.
            then
            cat "$2"
        
        # Avertissement envers l'utilisateur qu'aucun fichier de ce nom n'existe. 
        else
            echo "Attention ! Le fichier n'existe pas."
        
        # Fin du troisième if  
        fi

    # Avertissement envers l'utilisateur qu'aucun nom de fichier n'a été renseigné.
    else
        echo "Attention ! Aucun nom de fichier n'a été renseigné, il faut donc en renseigner un !"
    
    # Fin du second if.
    fi

# Fin du premier if.
fi

#################################################################################################################################################

# Condition si l'argument est "a"

# Cette ligne se traduit par la vérification de l'argument renseigné par l'utilisateur: -a.
if [ "$1" = "-a" ]
    then

        # Cette condidtion se traduit par la vérification que le second argument est bien un fichier. 
        if [ -f "$2" ] && [ "$#" -ge "2" ]
            then

                # Cette condidtion se traduit par la vérification de la présence de trois arguments. 
                if [ "$#" -ge "3" ]
                    then

                        # Cette condidtion se traduit par la vérification que le troisième argument est bien un fichier.
                        if [ -f "$3" ]
                             then

                        # !! Pour rappel: ">>" Ceci ajoute à un fichier ou crée le fichier s'il n'existe pas. !!

                        # # On affiche le contenu du fichier. 
                        cat "$3" >> "$2" 

                            # Ecriture dans le fichier.
                            else
                              echo "$3" >> "$2"   

                        # Fin du quatrième if.
                        fi

                    # Avertissement envers l'utilisateur qu'il n'est pas possible d'écrire dans le fichier.
                    else
                        echo "Il n'est possible d'écrire dans le fichier !"

                # Fin du troisième if.
                fi

             # Avertissement envers l'utilisateur qu'aucun fichier de ce nom n'existe.         
             else
                echo "Attention ! Aucun fichier modifiable, il n'existe probablement pas."

        # Fin du second if.
        fi

# Fin du premier if.        
fi

#################################################################################################################################################

# Condition si l'argument est "d"

# Cette ligne se traduit par la vérification de l'argument renseigné par l'utilisateur: -d.
if [ "$1" = "-d" ]
    then

    # On verifie la présence de deux arguments.
    if [ "$#" -gt "1" ]
        then

        # Vérification si le second argument renseigné est un fichier.
        if [ -f "$2" ]
            then

            # Cette option permet de détruire le fichier.
            rm "$2" 

        # Avertissement envers l'utilisateur qu'aucun fichier de ce nom n'existe.    
        else
            echo "Attention ! Le fichier n'existe pas"

        # Fin du troisième if.
        fi

    # Avertissement envers l'utilisateur qu'aucun fichier de ce nom n'existe.     
    else
        echo "Attention ! Aucun nom de fichier n'a été renseigné, il faut donc en renseigner un !"

    # Fin du second if.
    fi

# Fin du premier if.    
fi

#################################################################################################################################################

# Condition si l'argument est "t"

# Cette ligne se traduit par la vérification de l'argument renseigné par l'utilisateur: -t.
if [ "$1" = "-t" ]
    then

    # On verifie la présence de deux arguments.
    if [ "$#" -gt "1" ]
        then

        # Vérification puis analyse du fichier.
        file "$2"

    # Avertissement envers l'utilisateur qu'aucun nom de fichier n'a été renseigné.
    else
        echo "Attention ! Aucun nom de fichier n'a été renseigné, il faut donc en renseigner un !"

    # Fin du second if    
    fi

# Fin du premier if    
fi

#################################################################################################################################################