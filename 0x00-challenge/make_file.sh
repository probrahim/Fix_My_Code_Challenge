#!/bin/bash

# Demander à l'utilisateur de saisir le nom du fichier sans extension
read -p "Veuillez entrer le nom du fichier sans extension : " nom_fichier

# Ajouter l'extension .py
nom_fichier="$nom_fichier.py"

# Définir le contenu du script Python
python_code='''#!/usr/bin/python3
'''

# Écrire le contenu dans le fichier Python
echo "$python_code" > "$nom_fichier"

# Ajouter les permissions d'exécution au fichier
chmod +x "$nom_fichier"

echo "Fichier '$nom_fichier' généré avec succès et permissions d'exécution ajoutées."

