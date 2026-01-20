#!/bin/bash

#SBATCH --partition=shared-cpu 
#SBATCH --time=01:30:00
#SBATCH --ntasks=6
#SBATCH --mem-per-cpu=6000 # in MB
#SBATCH --output=yaltaiseg2-out.%j 

# note that the script function for the hpc cluster folder path : do not forget to change the path if necessary
#the python script use  for the present segmentation are contained in script/segmentation_help

# Load necessary modules.
module load CUDA/11.8.0 GCCcore/11.3.0 Python/3.9.6  bzip2/1.0.8

# Activate a Python virtual environment from a folder named 'yolo11l_env' in the user's home directory.
#source ~/Segmentation_train/yaltaisegenv/bin/activate
source ~/yolo11l_env/bin/activate

#load the segmentation model 
python Segmentation_train/seg2.py
#python Scripts_segmentation/seg.py

# la doucmentation n'est pas complete, ne pas oublier le -- alto pour avoir le bon format de données. 
srun yaltai kraken --device cpu -I "content/image/*" --alto --suffix ".xml" segment --yolo ~/Segmentation_train/runs/detect/train2/weights/best.pt

# uniformise file ending in </alto>
python Segmentation_train/debug_alto.py

# change the name of the FileName according to the filename.jpg
python Segmentation_train/change_xml_file_name2.py

# change the name of label "default" for "DefaultLine"
python Segmentation_train/change_defaultline.py
#zip the file 
zip -r altos_segmented.zip content/image/*xml
# Victoire! It finaly works! le 20.01.2026