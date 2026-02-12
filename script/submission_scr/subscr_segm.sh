#!/bin/bash

#SBATCH --partition=debug-cpu 
#SBATCH --time=00:08:00
#SBATCH --mem=6G
#SBATCH --output=yaltaiseg3-out.%j 

#on teste une méthode sans module load

# PYTHON VIRTUAL ENVIRONMENT
source ~/p3.12-venv/bin/activate

# PAGE SEGMENTATION WITH YALTAI-KRAKEN 
yaltai kraken --verbose --raise-on-error -I "content/image_1/*.jpg" --alto --suffix ".xml" segment --yolo Layout-16th-Print-Lat.pt

# ALTO XML POST-PROCESSING
# Normalize and fix ALTO file endings (ensure proper </alto> closing tag)
python Segmentation_train/debug_alto.py

# Update <FileName> field to match the corresponding image filename (.jpg)
python Segmentation_train/change_xml_file_name2.py

# Rename label "default" to "DefaultLine" for schema consistency
python Segmentation_train/change_defaultline.py

# ARCHIVING RESULTS
# Create a ZIP archive containing all segmented ALTO XML files
zip -r altos_segmented.zip content/image_1/*xml

# ça a fonctionné le 11.02.26, le probleme c'est la qualités des images, si c'est trop penché le script fonctionne pas
# il utilise toute la mémoire dispo pour segmenter en il crache. 
#sacct --format JobID,State,MaxRSS verifier la config
# segmente 1 image en 30 seconde avec 1 600 000 K donc 1.6GB  