#!/bin/bash

# Répertoire de sauvegarde
# SAVE_DIR="./shell-Velib"
SAVE_DIR="/home/hakou/Mokhtari_Abdelheq/shell-Velib"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Vérifie si le répertoire existe, sinon le créer
if [ ! -d "$SAVE_DIR" ]; then
  mkdir -p "$SAVE_DIR"
fi
# # Récupère les données JSON et les enregistre
curl -s "https://opendata.paris.fr/api/explore/v2.1/catalog/datasets/velib-disponibilite-en-temps-reel/exports/json?lang=fr&timezone=Europe%2FBerlin" -o "$SAVE_DIR/velib_data_$TIMESTAMP.json"
