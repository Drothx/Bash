#!/bin/bash

# Le but étant de créer un script qui permet de générer deux suites d’entier. Les bornes sont données par l’utilisateur.
# Ensuite le script retourne le message «True» si les deux suites d’entiers on un intervalle en commun.


#!/bin/bash 
# On commence par renseigner les intervalles

echo "intervalle n°1"
read a1                     # intervalle n°1
read a2                     # intervalle n°1

echo "intervalle n°2"
read b1                     # intervalle n°2
read b2                     # intervalle n°2 

if [ $a1 -gt $a2 ]
then 
    echo "Les bornes de l'intervalle n°1 sont à l'envers."
fi 

if [ $b1 -gt $b2 ]
then 
    echo "Les bornes de l'intervalle n°2 sont à l'envers."
fi 

if [ $a2 -lt $b1 -o $b2 -lt $a1 ]       # verifie que a2 est inferieur a b1   et que   b2 n'est pas inferieur a a1 
then 
    echo "Il n'y a aucun éléments en commun !"
else 
    echo " True "                       # true nous comfirme que les deux suites d’entiers on un intervalle en commun
fi