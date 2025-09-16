
# Segmentation_model  
Fine-tuning of a segmentation model for Latin printed text in Roman script  

---

## Objectif 
Automate as much as possible the retrieval of verses during segmentation behind the label: **MainZoneHead**

---

## 📂 Project Setup
- Training data under `data/`  
- Model trained with **yaltai**  
- Using labels from **Segmento**  

---

##  Methodology
###  1.  Verify compatibility of ALTO data  
They must have the following labeling:  

- the labelling correspond to the ontology Segmento. Uses of Segmento according to our data link(linktocome)
###  2.  If needed, correct ALTO with the following python script:  

[script/main.py](https://github.com/16thExegesisDH/Segmentation_model/tree/main/script)

### 3. Train the model

### 4. test the model 
- Run evaluation on PhD students’ datasets (October 2025).
