#!/bin/bash

# Le but étant de créer un script qui demande à l’utilisateur de taper son nom et son prénom. Ces informations sont ensuite affichées sur le STDIN.


# Nous posons la question pour obtenir les informations suivantes: Nom et Prénom

read -p "quel votre nom ? " nom
read -p "Quel est votre prenom ? " prenom


# On affiche la réponse des éléments renseignés.

read -p "Vous êtes $nom $prenom."

