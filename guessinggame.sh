#!/bin/bash

# Function to get the number of files in the current directory
get_file_count() {
    ls -1 | wc -l
}

# Get the actual file count
file_count=$(get_file_count)

echo "Bienvenue dans le jeu Guessing Game !"
echo "Devinez combien de fichiers se trouvent dans le répertoire courant."

while true; do
    read -p "Entrez votre estimation : " guess

    # Vérification de l'entrée utilisateur
    if [[ ! $guess =~ ^[0-9]+$ ]]; then
        echo "Veuillez entrer un nombre valide."
        continue
    fi

    # Comparaison de la réponse
    if [[ $guess -lt $file_count ]]; then
        echo "Trop bas ! Essayez encore."
    elif [[ $guess -gt $file_count ]]; then
        echo "Trop haut ! Essayez encore."
    else
        echo "Félicitations ! Vous avez deviné correctement."
        break
    fi
done
