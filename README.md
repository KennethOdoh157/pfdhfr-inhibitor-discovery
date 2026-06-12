# Computational Discovery of PfDHFR Inhibitors from African Natural Products

![Python](https://img.shields.io/badge/Python-3.11-blue)
![RDKit](https://img.shields.io/badge/RDKit-2024.03.6-green)
![GROMACS](https://img.shields.io/badge/GROMACS-2023.3-orange)
![MDAnalysis](https://img.shields.io/badge/MDAnalysis-2.10.0-purple)
![AutoDock Vina](https://img.shields.io/badge/AutoDock%20Vina-1.2.5-red)
![Status](https://img.shields.io/badge/Status-Complete-success)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

---

## Abstract

Pyrimethamine-resistant *Plasmodium falciparum* remains one of the most urgent problems in antimalarial drug discovery. The K1 strain carries four resistance mutations in dihydrofolate reductase (N51I/C59R/S108N/I164L), rendering pyrimethamine ineffective across sub-Saharan Africa.

This project builds an end-to-end computational pipeline starting from 695,133 COCONUT natural products through QSAR modeling, virtual screening, docking, and molecular dynamics simulations. The best hit, CNP0286261, achieved a docking score of -11.86 kcal/mol versus -6.90 kcal/mol for pyrimethamine.

---

## Table of Contents

- Scientific Background
- Pipeline Overview
- Repository Structure
- Notebooks
- Results
- Figures
- MD Hit Compounds
- Datasets
- Computational Environment
- Reproducibility
- Publication Plan
- Author

---

## Scientific Background

*Plasmodium falciparum* DHFR is a validated drug target. The K1 quadruple mutant (N51I, C59R, S108N, I164L) confers strong resistance to antifolates.

African natural products represent underexplored chemical space, with >695,000 compounds in COCONUT. This study evaluates their potential against resistant PfDHFR (PDB: 1J3I).

---

## Pipeline Overview

COCONUT (695,133 compounds)  
→ Lipinski filtering  
→ QSAR screening  
→ Applicability domain filtering  
→ NP-likeness filtering  
→ Tanimoto diversity filtering  
→ 302 docking candidates  
→ AutoDock Vina docking  
→ MD simulation shortlist  
→ 100 ns GROMACS simulations  

---

## Repository Structure

```text
pfdhfr-inhibitor-discovery/
│
├── data/
│   ├── docking/
│   │   ├── receptor/
│   │   │   ├── 1J3I_clean.pdb
│   │   │   ├── 1J3I_original.pdb
│   │   │   └── 1J3I_receptor.pdbqt
│   │   ├── ligands_pdbqt/
│   │   ├── results/
│   │   ├── logs/
│   │   ├── docking_checkpoint.csv
│   │   ├── ligand_prep_report.csv
│   │   └── vina_config.txt
│   │
│   ├── md/
│   ├── chembl_dhfr_curated.parquet
│   ├── chembl_dhfr_raw.csv
│   ├── coconut_index.parquet
│   ├── docking_results.csv
│   ├── md_shortlist.csv
│   ├── npass_master.parquet
│   ├── screening_probs_all.npy
│   ├── vs_african_np_hits.csv
│   ├── vs_cascade_summary.csv
│   └── vs_docking_smiles.csv
│
├── figures/
│   ├── binding_site/
│   │   ├── md_frames/
│   │   ├── movie_frames/
│   │   ├── CNP0275186_1_md_simulation.mp4
│   │   ├── CNP0275186_1_md_simulation_white.mp4
│   │   ├── fig21_*.png
│   │   └── fig22_*.png
│   ├── fig1_roc_curves.png
│   └── fig23_contact_frequency.png
│
├── models/
│   ├── best_classifier.pkl
│   ├── ad_h_star.npy
│   ├── ad_train_matrix.npy
│   ├── shap_values_best_cls.npy
│   └── model_metadata.csv
│
├── notebooks/
│   ├── notebook_00_master_database_construction.ipynb
│   ├── notebook_01_chembl_qsar_dataset.ipynb
│   ├── notebook_02_qsar_modeling.ipynb
│   ├── notebook_03_virtual_screening.ipynb
│   ├── notebook_04_molecular_docking.ipynb
│   ├── notebook_05a_md_local_preparation.ipynb
│   ├── notebook_05b_md_colab_execution.ipynb
│   └── notebook_05c_md_local_analysis.ipynb
│
├── binding_site_figures.pml
├── md_binding_site_figures.pml
├── md_movie_CNP0275186_1.pml
└── README.md
```

---

## Notebooks

| Notebook | Description | Environment |
|----------|-------------|-------------|
| notebook_00 | Database construction (COCONUT, NPASS, AfroDB annotation) | cheminfo |
| notebook_01 | ChEMBL DHFR dataset curation | cheminfo |
| notebook_02 | QSAR modeling and SHAP analysis | cheminfo |
| notebook_03 | Virtual screening cascade | cheminfo |
| notebook_04 | Molecular docking (AutoDock Vina) | cheminfo |
| notebook_05a | MD preparation (GROMACS setup) | cheminfo |
| notebook_05b | MD simulation (Google Colab GPU) | Colab |
| notebook_05c | MD trajectory analysis | cheminfo |

---

## Results Summary

- 695,133 compounds screened
- 302 docking candidates
- Best binding affinity: -11.86 kcal/mol
- 3 MD-validated hit compounds
- Strong enrichment of African natural products among top hits

---

## Key Findings

- African natural products occupy a distinct chemical space from ChEMBL DHFR inhibitors
- QSAR underestimates NP activity due to domain shift
- Docking revealed strong enrichment of African compounds in top-ranked hits
- One ligand showed 94% hydrogen bond occupancy at ASP54 during MD

---

## Figures

Figures are located in `figures/` and include:

- QSAR ROC curves
- Virtual screening funnel
- Docking score distributions
- PCA chemical space
- MD RMSD/RMSF/Rg plots
- Binding site visualizations

---

## MD Hit Compounds

- CNP0286261 — -11.86 kcal/mol
- CNP0275186 — -11.13 kcal/mol
- CNP0539885 — -10.03 kcal/mol
- Pyrimethamine — reference

---

## Computational Environment

- Python 3.11 (conda: cheminfo)
- RDKit 2024.03.6
- scikit-learn 1.7.1
- GROMACS 2023.3 (CUDA)
- AutoDock Vina 1.2.5
- MDAnalysis 2.10.0
- PyMOL 3.1.0

---

## Reproducibility Notes

- Seed fixed at 42
- Consistent fingerprinting (ECFP4, 2048 bits)
- Docking grid centered on WRA centroid of 1J3I
- MD performed under AMBER99SB-ILDN + GAFF2
- Analysis performed using MDAnalysis trajectory reconstruction

---

## Publication Plan

- Paper 1: QSAR modeling (Journal of Cheminformatics)
- Paper 2: Virtual screening & docking (Comp. Biol. Chem.)
- Paper 3: Molecular dynamics validation (J. Biomol. Struct. Dyn.)

---

## Author

**Kenneth Odoh Chidiebere**  
MSc Computational Chemistry  
AFIT, Kaduna, Nigeria  

GitHub: https://github.com/KennethOdoh157  
LinkedIn: https://linkedin.com/in/kennethodoh  

---

*This project integrates QSAR, docking, and molecular dynamics to explore African natural products as inhibitors of resistant PfDHFR.*
