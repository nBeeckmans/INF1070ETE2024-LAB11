#!/bin/bash

echo "Liste des scripts shell du répertoire /bin";

# grep -I : ignore les fichiers binaires
# grep -l : donne le nom du fichier au lieu du resultat de la recherche
# 2> /dev/null : enleve les erreurs de l'affichage (ex : acces aux fichiers dont on a pas la permission
find /bin/* -type f -executable -exec grep -Il "/bin/.*sh" {} \; 2> /dev/null;

echo "Liste des executables du répertoire /bin";

# grep "\w" : une lettre, un chiffre ou '_' (pas d'espace ou de charactere speciaux)
find /bin/* -type f -executable -exec file {} \; | grep LSB | grep -oE "/bin/\w*"
