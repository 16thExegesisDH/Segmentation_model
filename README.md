# Segmentation Model

Fine-tuning a segmentation model for Latin printed text in Roman script

---

## Objective

Automate the retrieval of Bible Verses during segmentation behind the label: **`MainZoneHead`**

---

## Project Setup

* Training data: `data/`
* Fine-tuning with [**YALTAI**](https://github.com/ponteineptique/yaltai)
* Base model: [**LADaS (latest release)**](https://github.com/DEFI-COLaF/LADaS/releases/tag/2024-10-31)
* Labels: [SegmOnto documentation for LaDaS model](https://github.com/DEFI-COLaF/LADaS/blob/main/AnnotationGuide.md)
* Corpus-specific guidelines: [here](https://github.com/16thExegesisDH/Pre-segmentation/blob/main/README.md)

---

## References

```bibtex
@article{Cl_rice_2023,
   title={You Actually Look Twice At it (YALTAi): using an object detection approach instead of region segmentation within the Kraken engine},
   volume={Historical Documents and...},
   ISSN={2416-5999},
   url={http://dx.doi.org/10.46298/jdmdh.9806},
   DOI={10.46298/jdmdh.9806},
   journal={Journal of Data Mining & Digital Humanities},
   publisher={Centre pour la Communication Scientifique Directe (CCSD)},
   author={Clérice, Thibault},
   year={2023},
   month=dec
}

@online{segmonto2023,
  author    = {Simon Gabay and Ariane Pinche and Kelly Christensen and Jean-Baptiste Camps and Nicola Carboni},
  title     = {SegmOnto, A Controlled Vocabulary to Describe the Layout of Pages},
  date      = {2023},
  version   = {0.9},
  location  = {Genève / Lyon / Paris},
  url       = {https://segmonto.github.io/}
}

```

---

## Methodology

### 1. Verify ALTO Data Compatibility

* Ensure labeling follows **SegmOnto ontology**
* Adapt according to [our dataset](linktocome)

### 2. Correct ALTO if Necessary

Use the provided script:

```bash
python script/formate_data/main.py
```

### 3. Train the Model

* Fine-tune on `data/` with **YALTAI**

### 4. Test the Model

* Evaluate on **PhD students’ datasets** (October 2025)
* Benchmark metrics and qualitative analysis

---
