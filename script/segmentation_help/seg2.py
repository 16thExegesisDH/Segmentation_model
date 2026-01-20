"""
The script assumes that you have installed the ultralytics library and have a segmentation model file
named 'model_name.pt' available in the specified path.
"""

from ultralytics import YOLO

# Load the segmentation model
model = YOLO("Segmentation_train/runs/detect/train2/weights/best.pt") 

# Get info about the model
model.info()

# Fuse PyTorch Conv2d and BatchNorm2d layers
model.fuse()

print("Segmentation model loaded")