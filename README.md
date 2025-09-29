
# Segmentation_model  
Fine-tuning of a segmentation model for Latin printed text in Roman script  

---

## Objectif 
Automate as much as possible the retrieval of verses during segmentation behind the label: **MainZoneHead**

---

## 📂 Project Setup
- Training data under `data/`  
- Model fine-tune with library [**yaltai**](https://github.com/ponteineptique/yaltai) on [**LADaS**](https://github.com/DEFI-COLaF/LADaS) [last model](https://github.com/DEFI-COLaF/LADaS/releases/tag/2024-10-31)
- Using labels from **Segmento**

```
@article{Cl_rice_2023,
   title={You Actually Look Twice At it (YALTAi): using an object detection approach instead of region segmentation within the Kraken engine},
   volume={Historical Documents and...},
   ISSN={2416-5999},
   url={http://dx.doi.org/10.46298/jdmdh.9806},
   DOI={10.46298/jdmdh.9806},
   journal={Journal of Data Mining &amp; Digital Humanities},
   publisher={Centre pour la Communication Scientifique Directe (CCSD)},
   author={Clérice, Thibault},
   year={2023},
   month=dec }
```

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
