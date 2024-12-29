#!/bin/bash

# Liste der zu prüfenden Ordner
directories=(
    "$HOME/.vim"
    "$HOME/.vim/autoload"
    "$HOME/.vim/backup"
    "$HOME/.vim/colors"
    "$HOME/.vim/plugged"
)

# Schleife durch die Ordnerliste
for dir in "${directories[@]}"; do
    if [ -d "$dir" ]; then
        echo "Der Ordner $dir existiert bereits."
    else
        echo "Der Ordner $dir existiert nicht. Er wird angelegt..."
        mkdir -p "$dir" && echo "Ordner $dir wurde erfolgreich erstellt." || echo "Fehler beim Erstellen des Ordners $dir."
    fi
done


