# Charger la bibliothèque requise
library(jsonlite)

# Répertoire de sauvegarde et timestamp
save_dir <- "/home/hakou/Mokhtari_Abdelheq/R-Velib"
timestamp <- format(Sys.time(), "%Y%m%d_%H%M%S")

# Vérifie si le répertoire existe, sinon le créer
if (!dir.exists(save_dir)) {
  dir.create(save_dir, recursive = TRUE)
}

# Récupère les données JSON
url <- "https://opendata.paris.fr/api/explore/v2.1/catalog/datasets/velib-disponibilite-en-temps-reel/exports/json?lang=fr&timezone=Europe%2FBerlin"
json_data <- fromJSON(url)

# Sauvegarde des données avec horodatage
file_name <- paste0(save_dir, "/R-Velib", timestamp, ".json")
write_json(json_data, file_name)
