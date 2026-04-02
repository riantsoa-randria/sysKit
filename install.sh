#!/bin/bash
set -e # arrête le script en cas d'erreur

INSTALL_DIR="$HOME/syskit"
BASHRC="$HOME/.bashrc"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "🔧 Installation de syskit..."

# Créer le répertoire d'installation si absent
mkdir -p "$INSTALL_DIR"

# TODO : copier lib/functions.sh et lib/aliases.sh dans $INSTALL_DIR
cp $SCRIPT_DIR/lib/functions.sh $INSTALL_DIR && cp $SCRIPT_DIR/lib/aliases.sh $INSTALL_DIR

# Vérifier si syskit est déjà chargé dans .bashrc
if grep -q "syskit" "$BASHRC"; then
	echo "🔧 syskit est déjà présent dans $BASHRC, on ne modifie pas."
else
# TODO : ajouter les deux lignes source dans .bashrc
	echo "source $INSTALL_DIR/functions.sh" >> $BASHRC
	echo "source $INSTALL_DIR/aliases.sh" >> $BASHRC
fi

echo "🔧 Installation terminée ! Lancez : source ~/.bashrc"
