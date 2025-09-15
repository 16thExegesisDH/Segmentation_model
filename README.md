
# Segmentation_model  
Fine-tuning of a segmentation model for Latin printed text in Roman script  

---
## Objectif
Automate as much as possible the retrieval of verses during segmentation behind the label: 'MainZoneHead''
---

## 📂 Project Setup
- Training data under `data/`  
- Model trained with **yaltai**  
- Using labels from **Segmento**  

---

##  Methodology

###  1.  Verify compatibility of ALTO data  
They must have the following labeling:  

```xml
<OtherTag ID="BT100001" LABEL="MainZone-Head" DESCRIPTION="block type MainZone-Head"/>
<OtherTag ID="BT100002" LABEL="MainZone-Lg" DESCRIPTION="block type MainZone-Lg"/>
<OtherTag ID="BT100003" LABEL="MainZone-Signature" DESCRIPTION="block type MainZone-Signature"/>
<OtherTag ID="BT100004" LABEL="GraphicZone-Decoration" DESCRIPTION="block type GraphicZone-Decoration"/>
<OtherTag ID="BT100005" LABEL="MainZone-P" DESCRIPTION="block type MainZone-P"/>
<OtherTag ID="BT100006" LABEL="MainZone-Continued" DESCRIPTION="block type MainZone-Continued"/>
<OtherTag ID="BT100007" LABEL="MarginTextZone-ManuscriptAddendum" DESCRIPTION="block type MarginTextZone-ManuscriptAddendum"/>
<OtherTag ID="BT100008" LABEL="MainZone-Sp" DESCRIPTION="block type MainZone-Sp"/>
<OtherTag ID="BT100009" LABEL="MarginTextZone-Notes" DESCRIPTION="block type MarginTextZone-Notes"/>
<OtherTag ID="BT100010" LABEL="MainZone-Other" DESCRIPTION="block type MainZone-Other"/>
<OtherTag ID="BT100011" LABEL="MainZone-Entry" DESCRIPTION="block type MainZone-Entry"/>
```
- the labelling correspond to the ontology Segmento. Uses of Segmento according to our data link(linktocome)
###  2.  If needed, correct ALTO with the following bash script:  
```bash
./formatage.sh
```
### 3. Train the model

### 4. test the model 
- Run evaluation on PhD students’ datasets (October 2025).
