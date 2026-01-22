#!/bin/bash

#SBATCH --partition=shared-gpu
#SBATCH --gpus=1
#SBATCH --time=00:30:00
#SBATCH --ntasks=6
#SBATCH --mem-per-cpu=6000 # in MB
#SBATCH --output=yaltaiseg-out.%j 

# Load necessary modules.
module load CUDA/11.8.0 GCCcore/11.3.0 Python/3.9.6

# Activate a Python virtual environment from a folder named 'yaltai-env' in the user's home directory.
source ~/Segmentation_train/yaltaisegenv/bin/activate
#load the segmentation model
#note that our segmentation model named model-train-test.pt is the last one of LaDaS : https://github.com/DEFI-COLaF/LADaS/releases/tag/2024-10-31
# try to run the file with cpu so change device=0 for device=cpu
yolo task=detect mode=train model=model-train-test.pt data=my-dataset/config.yml epochs=100 plots=True device=0 batch=8 imgsz=960
#use the model with a cpu
#srun yaltai kraken --device cpu -I "content/image/*" --suffix ".xml" segment --yolo content/seg_model.pt
