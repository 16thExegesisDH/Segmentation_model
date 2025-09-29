#!/bin/bash

#SBATCH --partition=shared-cpu 
#SBATCH --time=00:05:00
#SBATCH --ntasks=6
#SBATCH --mem-per-cpu=6000 # in MB
#SBATCH --output=yaltaiseg2-out.%j 

# Load necessary modules.
module load CUDA/11.8.0 GCCcore/11.3.0 Python/3.9.6  bzip2/1.0.8

# Activate a Python virtual environment from a folder named 'yaltai-env' in the user's home directory.
#source ~/Segmentation_train/yaltaisegenv/bin/activate
source ~/yolo11l_env/bin/activate
#source ~/yaltai-env/bin/activate

#load the segmentation model 
python Segmentation_train/seg2.py
#python Scripts_segmentation/seg.py

srun yaltai kraken --device cpu -I "content/image/*" --suffix ".xml" segment --yolo ~/Segmentation_train/runs/detect/train2/weights/best.pt
#srun yaltai kraken --device cpu -I "content/image/*" --suffix ".xml" segment --yolo content/seg_model.pt

# still not working because a problem of compatibility in yolo11l and the visualisation, I have the new data but not in a xml template