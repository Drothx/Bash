#!/bin/bash

# Le but étant de créer un script qui permet d’authentifier des utilisateurs par nom et mot de passe. 
# Deux fichiers ont été créées pour que l'authentification réussisse ou non.

#!/bin/bash

# Saisie du Login
echo "Login :" 
read log

# Saisie du mot de passe
echo "password :"
read pass

# Message pour dire à l'utilisateur que son action a été prise ene compte.
echo "Authentification en cours..."

# On créé deux variables 
nombre=0
ajout=1

# On compte le 
for line in $(cat User.txt) 
    do
    nombre=$(( $nombre + $ajout ))                                                                                
    a=$(echo "$line")                                                                                    

# Cette condition procède à la vérfication des entrées des éléments de connexion.
    if [ "$a" = "$log" ]                                                                                        
        then
        p="p"
        num="$nombre$p"   

# Ici nous faisons une condition "if" afin de pouvoir réagir en fonctionn des situations: si le mot de passe est bon alors le premier message apparaît sinon le message d'erreur apparaît.

        if [ "$(sed -n $num pass.txt)" = "$pass" ]                                                             
            then
            echo "Vos identifiants sont corrects. Bienvenue !"
        else
            echo "Le mot de passe renseigné est érroné ! Réessayez une nouvelle fois !"
        fi
    fi
done

