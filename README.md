# Segmentation Model

Fine-tuning a segmentation model for Latin printed text in Roman script

---

## Objective

Automate the retrieval of Bible Verses during segmentation behind the label: **`MainZone-Head`**

---

## Project Setup

* Training data: `data/` from the repository [https://github.com/16thExegesisDH/HTR_1-Timotheus/](https://github.com/16thExegesisDH/HTR_1-Timotheus/)
* Training with  [**YALTAI**](https://github.com/ponteineptique/yaltai) and the model [yolov8.pt](https://docs.ultralytics.com/fr/models/yolov8/) 
* Data prepared and made interoperable with the model: [**LADaS (latest release)**](https://github.com/DEFI-COLaF/LADaS/releases/tag/2024-10-31)
* Labels: [SegmOnto documentation for LaDaS model](https://github.com/DEFI-COLaF/LADaS/blob/main/AnnotationGuide.md)
* Corpus-specific guidelines: [here](https://github.com/16thExegesisDH/Pre-segmentation/blob/main/README.md)

---

## Corpus


| Folder ID | File ID | Resp | Number of Files | Author | Title | Printer | Date | Place | Library | Books |
|-----------|------------------|------|--------------|--------|-------|---------|------|-------|---------|-----------------------|
| Lefevre_1-Tim_001 | bsb11059254_00499-bsb11059254_00501 | FG | 3 | Jacques Lefèvre d’Étaples | Commentarii in epistolas D. Pauli | Anonymus | 1512 | Paris | Regensburg Staatliche Bibliothek | [999/2Script.801](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb11059254-9) |
| Bugenhagen_1-Tim_001 | bsb00027764_00155-bsb00027764_00172 | FG | 18 | Johannes Bugenhagen | In epistulam Pauli ad Timotheum | Anonymus (Adam Petri?) | 1524 | Basel | Bayerische Staatsbibliothek München | [Res/Exeg. 309 b Beibd.3](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb00027764-8) |
| Cajetan_1-Tim_001 | bsb10143002_00312-bsb10143002_00317 | FG | 6 | Thomas Cajetan | Epistolae Pavli et Aliorvm Apostolorvm ad Graecam Veritatem Castigatae | Giunta, Luca Antonio | 1531 | Venice | Bayerische Staatsbibliothek München | [2 Exeg. 610](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb10143002-9) |
| Unbekannt_1-Tim_001 | 952805-952828 | FG | 24 | Unbekannt | Commentarius in priorem Timothei epistolam à viro summae pietatis studio conscriptus | Heinrich Petri | 1533 | Basel | Universitätsbibliothek Basel | [UBH FG VIII2 16:7](https://doi.org/10.3931/e-rara-3101) |
| Bullinger_1-Tim_001 | 7325935-7326099 | FG | 32 | Heinrich Bullinger | In D. Apostoli Pauli ad Thessalonicenses, Timotheum, Titum & Philemonem epistolas | Christoph Froschauer | 1536 | Zürich | Zentralbibliothek Zürich | [VD 16 B 5144 / Vischer C 251](https://doi.org/10.3931/e-rara-23723) |
| Pellicanus_1-Tim_001 | 844101-844110 | FG | 11 | Conrad Pellicanus | In omnes apostolicas epistolas Pauli commentarii | Froben Workshop (Frocher) | 1539 | Zürich | Zentralbibliothek Zürich | [III B 14 \| G](https://doi.org/10.3931/e-rara-2604) |
| Calvin_1-Tim_001 | 6293982-6293996 | FG | 15 | Jean Calvin | Commentarii in utranque Pauli epistolam ad Timotheum | Jean Girard | 1548 | Geneva | Bibliothèque de Genève | [Bb 1493 (2)](https://doi.org/10.3931/e-rara-5708) |
| Aretius_1-Tim_001 | bsb10313792_00016-bsb10313792_00178 | FG | 163 | Benedictus Aretius | In epistolas ad Timotheum, Titum et Philemonem | Jean Le Preux | 1580 | Morges | Bayerische Staatsbibliothek München | [Exeg. 53 Beibd.1](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb10313792-3) |
| Hyperius_1-Tim_001 | 16892665-16892676 | FG | 12 | Andreas Hyperius | Commentarii in epistolas D. Pauli ad Timotheum | Christoph Froschauer | 1582 | Zürich | Zentralbibliothek Zürich | [C 85 \| G](https://doi.org/10.3931/e-rara-62382) |
| Bucer_Eph_test | bsb0003503_00001-bsb0003503_0041 | NS/FG | 41 | Jacques Lefèvre d’Étaples | Commentarii in epistolas D. Pauli | Anonymus | 1512 | Paris | Regensburg Staatliche Bibliothek | [999/2Script.801](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb11059254-9) |
| Bucer_Rm_test | bsb11059254_00466-bsb11059254_00484 | BN/FG | 19 | Martin Bucer | Metaphrases et enarrationes in Epistolam ad Romanos | Wendelin Rihel | 1536 | Strasbourg | Regensburg Staatliche Bibliothek | [999/2Script.662](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb11059175-0) |
| Lefevre_Rm_test | bsb11059254_00203-bsb11059254_00222 | MC/FG | 19 | Martin Bucer | Epistolam ad Ephesios | Anonymus | 1527 | Strasbourg | Bayerische Staatsbibliothek München | [Polem. 408 Beibd.2](https://mdz-nbn-resolving.de/urn:nbn:de:bvb:12-bsb00035303-6) |

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
* Adapt according to [our dataset](https://github.com/16thExegesisDH/HTR_1-Timotheus/tree/main/data) descript in the following [corpus](https://github.com/16thExegesisDH/Segmentation_model/blob/main/data/corpus_segmentation_model.csv)


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
