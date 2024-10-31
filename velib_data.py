import requests
import json
import os
from datetime import datetime

# Répertoire de sauvegarde et horodatage
save_dir = "/home/hakou/Mokhtari_Abdelheq/python-Velib"
timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")

# Vérifie si le répertoire existe, sinon le créer
if not os.path.exists(save_dir):
    os.makedirs(save_dir)
    
# Récupère les données JSON
url = "https://opendata.paris.fr/api/explore/v2.1/catalog/datasets/velib-disponibilite-en-temps-reel/exports/json?lang=fr&timezone=Europe%2FBerlin"
response = requests.get(url)

# Sauvegarde des données
file_name = f"{save_dir}/velib_data_{timestamp}.json"
with open(file_name, "w") as json_file:
    json.dump(response.json(), json_file)
