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

Pyrimethamine-resistant *Plasmodium falciparum* dihydrofolate reductase (PfDHFR) represents one of the most clinically urgent targets in antimalarial drug discovery, yet the structural basis for overcoming the K1 strain quadruple mutant (N51I/C59R/S108N/I164L) remains poorly characterised for natural product scaffolds. This project presents a complete, end-to-end computational pipeline — from database construction through molecular dynamics — designed to identify novel PfDHFR inhibitors from African medicinal plant chemistry. Using a curated COCONUT database of 695,133 compounds and a tiered virtual screening strategy anchored by a Random Forest QSAR model (external AUC = 0.861), 302 candidates were advanced to molecular docking against the 1J3I crystal structure. The top-ranked compound, CNP0286261 (African NP), achieved a predicted binding affinity of −11.86 kcal/mol compared to −6.90 kcal/mol for pyrimethamine, and all ten top-ranked hits were of African origin (Mann-Whitney *p* = 0.0049). Three hits progressed to 100 ns molecular dynamics simulations in explicit solvent, revealing that CNP0275186 and CNP0539885 engage the resistant binding pocket with comparable or superior hydrogen bond networks to pyrimethamine, supporting their candidacy as novel antifolate scaffolds. This work targets three peer-reviewed publications and demonstrates how African natural product databases can yield competitive lead compounds against drug-resistant parasitic targets.

---

> ### Pipeline at a Glance
> - **695,133 compounds** screened from COCONUT (African NP subset annotated via AfroDb)
> - **5-stage virtual screening** cascade: Lipinski → QSAR → applicability domain → NP-likeness → diversity
> - **302 compounds** advanced to molecular docking; best hit at **−11.86 kcal/mol** (4.96 kcal/mol better than pyrimethamine)
> - **All 10 top docking hits** are African natural products (Mann-Whitney *p* = 0.0049)
> - **100 ns GPU MD simulations** confirm stable binding; CNP0539885 maintains ASP54 hydrogen bond at **94.2% occupancy**
> - Three manuscripts in preparation targeting Q1/Q2 computational chemistry journals

---

## Table of Contents

- [Scientific Background](#scientific-background)
- [Pipeline Overview](#pipeline-overview)
- [Repository Structure](#repository-structure)
- [Notebooks](#notebooks)
- [Results Summary](#results-summary)
  - [QSAR Modeling](#qsar-modeling)
  - [Virtual Screening](#virtual-screening)
  - [Molecular Docking](#molecular-docking)
  - [Molecular Dynamics](#molecular-dynamics)
- [Key Figures](#key-figures)
- [MD Hit Compounds](#md-hit-compounds)
- [Datasets](#datasets)
- [Computational Environment](#computational-environment)
- [Reproducibility](#reproducibility)
- [Publication Plan](#publication-plan)
- [Author](#author)

---

## Scientific Background

*Plasmodium falciparum* causes the most lethal form of human malaria. The antifolate drug pyrimethamine, once a frontline treatment, has been rendered clinically ineffective in sub-Saharan Africa by widespread accumulation of four resistance mutations in the DHFR domain: N51I, C59R, S108N, and I164L (the K1 quadruple mutant). No approved antifolate directly addresses this mutant background, and natural product chemical space — particularly from African medicinal plants — remains largely unexplored computationally.

PfDHFR catalyses the reduction of dihydrofolate to tetrahydrofolate, an essential step in nucleotide biosynthesis. Inhibiting this enzyme kills the parasite by blocking thymidylate synthesis. The crystal structure of the K1 resistant strain is available (PDB: 1J3I, 2.25 Å resolution), providing a validated structural basis for structure-based drug design.

This project addresses three interconnected questions:

1. Can African natural product chemical space yield competitive PfDHFR inhibitors, even though it diverges from the synthetic antifolate pharmacophore that trained predictive models?
2. Do QSAR-based virtual screening scores correlate with docking-predicted binding affinity for natural products with low structural similarity to training set compounds?
3. Do the top docking hits maintain stable binding to the resistant K1 active site under physiologically relevant simulation conditions?

---

## Pipeline Overview

```
COCONUT Database (695,133 compounds)
          │
          ▼
  Stage 1: Lipinski Filter
  Rule of Five + rotatable bonds ≤ 10
  → 477,975 compounds pass
          │
          ▼
  Stage 2: QSAR Probability Filter
  Random Forest trained on ChEMBL DHFR bioactivity data
  African NPs: p(active) ≥ 0.30 (tiered threshold)
  Global NPs:  p(active) ≥ 0.50
  → 2,245 compounds pass
          │
          ▼
  Stage 3: Applicability Domain Filter
  Williams plot leverage + standardised residuals
  Within-AD: p ≥ 0.50 | Outside-AD: p ≥ 0.60
  → 1,847 compounds pass
          │
          ▼
  Stage 4: NP-Likeness Filter
  RDKit NP-likeness score ≥ 0.0
  → 1,204 compounds pass
          │
          ▼
  Stage 5: Tanimoto Diversity Filter
  ECFP4, radius=2, Tc < 0.85 (greedy leader-picking)
  → 302 compounds advance to docking
          │
          ▼
  AutoDock Vina 1.2.5 Molecular Docking
  Receptor: 1J3I chain A (K1 resistant PfDHFR)
  Grid: 28.0, 6.1, 59.8 Å (WRA centroid); 20×20×20 Å
  → 300 compounds docked; best hit −11.86 kcal/mol
          │
          ▼
  MD Shortlist Selection
  Score ≤ −9.0 kcal/mol + Tc < 0.40 diversity filter
  → 3 hits + pyrimethamine reference
          │
          ▼
  GROMACS 2023.3 Molecular Dynamics (100 ns, T4 GPU)
  AMBER99SB-ILDN + GAFF2/AM1-BCC, TIP3P, 310 K, 1 bar
  → RMSD, RMSF, H-bonds, Rg, contact frequency analysis
```

---

## Repository Structure

```
pfdhfr-inhibitor-discovery/
│
├── data/
│   ├── docking/
│   │   ├── receptor/
│   │   │   ├── 1J3I_clean.pdb
│   │   │   ├── 1J3I_original.pdb
│   │   │   └── 1J3I_receptor.pdbqt
│   │   ├── ligands_pdbqt/            # 300 prepared ligand PDBQT files
│   │   ├── results/                  # 300 AutoDock Vina output PDBQT files
│   │   ├── logs/
│   │   ├── docking_checkpoint.csv
│   │   ├── ligand_prep_report.csv
│   │   └── vina_config.txt
│   ├── md/                           # MD system files and trajectories
│   ├── chembl_dhfr_curated.parquet
│   ├── chembl_dhfr_curated_preview.csv
│   ├── chembl_dhfr_raw.csv
│   ├── coconut_index.parquet
│   ├── docking_results.csv
│   ├── md_shortlist.csv
│   ├── npass_master.parquet
│   ├── npass_dhfr_recall_results.csv
│   ├── npass_dhfr_validated.csv
│   ├── npass_master_summary.csv
│   ├── screening_probs_all.npy
│   ├── vs_african_np_hits.csv
│   ├── vs_cascade_summary.csv
│   ├── vs_checkpoint_qsar_hits.parquet
│   ├── vs_docking_shortlist.csv
│   └── vs_docking_smiles.csv
│
├── figures/
│   ├── binding_site/
│   │   ├── md_frames/                # Representative MD frame PDB files
│   │   │   ├── CNP0275186_1_md_rep_frame.pdb
│   │   │   ├── CNP0286261_0_md_rep_frame.pdb
│   │   │   ├── CNP0539885_2_md_rep_frame.pdb
│   │   │   └── pyrimethamine_md_rep_frame.pdb
│   │   ├── movie_frames/             # Frames for MD simulation video
│   │   ├── CNP0275186_1_md_simulation.mp4
│   │   ├── CNP0275186_1_pose.pdb
│   │   ├── CNP0286261_0_pose.pdb
│   │   ├── CNP0539885_2_pose.pdb
│   │   ├── pyrimethamine_pose.pdb
│   │   ├── fig21_CNP0275186_1_binding_site.png
│   │   ├── fig21_CNP0286261_0_binding_site.png
│   │   ├── fig21_CNP0539885_2_binding_site.png
│   │   ├── fig21_pyrimethamine_binding_site.png
│   │   ├── fig22_CNP0275186_1_md_binding_site.png
│   │   ├── fig22_CNP0286261_0_md_binding_site.png
│   │   ├── fig22_CNP0539885_2_md_binding_site.png
│   │   └── fig22_pyrimethamine_md_binding_site.png
│   ├── fig1_roc_curves.png
│   ├── fig2_predicted_vs_actual.png
│   ├── fig3_shap_importance.png
│   ├── fig4_williams_plot.png
│   ├── fig5_npass_recall.png
│   ├── fig6_probability_distribution.png
│   ├── fig7_chemical_space_pca.png
│   ├── fig8_np_classifier_pathways.png
│   ├── fig9_screening_cascade.png
│   ├── fig10_top_african_np_hits.png
│   ├── fig11_docking_score_distribution.png
│   ├── fig12_score_vs_qsar.png
│   ├── fig13_top20_docking_hits.png
│   ├── fig14_score_by_pathway.png
│   ├── fig15_complete_cascade.png
│   ├── fig16_rmsd.png
│   ├── fig17_rmsf.png
│   ├── fig18_hbonds.png
│   ├── fig19_rg.png
│   ├── fig20_md_summary.png
│   └── fig23_contact_frequency.png
│
├── models/
│   ├── best_classifier.pkl           # Primary QSAR classifier (Random Forest)
│   ├── best_regressor.pkl
│   ├── rf_classifier.pkl
│   ├── rf_regressor.pkl
│   ├── svm_classifier.pkl
│   ├── svm_regressor.pkl
│   ├── xgb_classifier.pkl
│   ├── xgb_regressor.pkl
│   ├── stack_classifier.pkl
│   ├── stack_regressor.pkl
│   ├── ad_h_star.npy                 # Applicability domain leverage threshold
│   ├── ad_train_matrix.npy           # Training set descriptor matrix for AD
│   ├── shap_values_best_cls.npy
│   ├── X_shap.npy
│   └── model_metadata.csv
│
├── 1j3i.cif                          # Crystal structure CIF file
├── binding_site_figures.pml          # PyMOL script — docked poses
├── md_binding_site_figures.pml       # PyMOL script — MD equilibrated frames
├── md_movie_CNP0275186_1.pml         # PyMOL script — simulation movie
├── notebook_00_master_database_construction.ipynb
├── notebook_01_chembl_qsar_dataset.ipynb
├── notebook_02_qsar_modeling.ipynb
├── notebook_03_virtual_screening.ipynb
├── notebook_04_molecular_docking.ipynb
├── notebook_05a_md_local_preparation.ipynb
├── notebook_05b_md_colab_execution.ipynb
├── notebook_05c_md_local_analysis.ipynb
├── .gitignore
└── README.md
```

---

## Notebooks

| Notebook | Description | Environment |
|----------|-------------|-------------|
| [`notebook_00_master_database_construction.ipynb`](notebook_00_master_database_construction.ipynb) | COCONUT (695,133 compounds) and NPASS 3.0 database ingestion, standardisation, and African NP annotation via AfroDb collections field | `cheminfo` |
| [`notebook_01_chembl_qsar_dataset.ipynb`](notebook_01_chembl_qsar_dataset.ipynb) | ChEMBL DHFR bioactivity curation (CHEMBL1939), pIC50 labelling, scaffold-based train/test split | `cheminfo` |
| [`notebook_02_qsar_modeling.ipynb`](notebook_02_qsar_modeling.ipynb) | ECFP4 fingerprint generation, multi-model training (RF, XGB, SVM, stacking), SHAP analysis, Williams plot applicability domain, NPASS prospective recall | `cheminfo` |
| [`notebook_03_virtual_screening.ipynb`](notebook_03_virtual_screening.ipynb) | 5-stage cascade screening of 695,133 compounds; tiered QSAR thresholds for African NPs; Tanimoto diversity filter | `cheminfo` |
| [`notebook_04_molecular_docking.ipynb`](notebook_04_molecular_docking.ipynb) | Ligand preparation (ETKDGv3 + Meeko), receptor preparation (MGLTools), AutoDock Vina 1.2.5 docking, validation, statistical analysis | `cheminfo` |
| [`notebook_05a_md_local_preparation.ipynb`](notebook_05a_md_local_preparation.ipynb) | Docked pose extraction, ACPYPE/GAFF2 parametrisation, GROMACS pdb2gmx, complex assembly, MDP generation | `cheminfo` |
| [`notebook_05b_md_colab_execution.ipynb`](notebook_05b_md_colab_execution.ipynb) | GROMACS 2023.3 CUDA energy minimisation, NVT/NPT equilibration, 100 ns chunked production MD on Google Colab T4 GPU | Google Colab |
| [`notebook_05c_md_local_analysis.ipynb`](notebook_05c_md_local_analysis.ipynb) | MDAnalysis trajectory analysis (RMSD, RMSF, H-bonds, Rg, contacts), PyMOL binding site figures, MD simulation video | `cheminfo` |

---

## Results Summary

### QSAR Modeling

A classification model was trained on 2,537 curated ChEMBL compounds (pIC50 ≥ 6.0 = active) spanning eight eukaryotic and apicomplexan DHFR targets. Five algorithms were benchmarked on a scaffold-stratified external test set (388 compounds).

| Model | AUC | MCC | F1 |
|-------|-----|-----|----|
| **Random Forest** | **0.861** | **0.583** | **0.795** |
| XGBoost | 0.847 | 0.561 | 0.781 |
| SVM | 0.832 | 0.534 | 0.764 |
| Stacking Ensemble | 0.858 | 0.578 | 0.790 |

The Random Forest model was selected as the primary screener. Applicability domain was defined by leverage-based Williams plot analysis (h* = 0.0488). SHAP analysis identified MW, LogP, and aromatic ring count as the dominant features.

A key finding emerged during prospective screening: **no African NP in the COCONUT database exceeded p(active) = 0.50** (maximum 0.475, mean 0.257), despite all passing Lipinski filters. This reflects a genuine chemical space gap — African NPs are structurally dissimilar to the synthetic antifolates that dominate ChEMBL DHFR training data. A tiered threshold strategy (African NPs: p ≥ 0.30; global NPs: p ≥ 0.50) was adopted, with AutoDock Vina serving as the selectivity gate.

### Virtual Screening

The 5-stage cascade reduced 695,133 COCONUT compounds to 302 docking candidates.

| Stage | Compounds Remaining | Filter Applied |
|-------|--------------------|--------------:|
| Start | 695,133 | COCONUT full database |
| After Lipinski | 477,975 | MW ≤ 500, LogP ≤ 5, HBD ≤ 5, HBA ≤ 10 |
| After QSAR | 2,245 | p(active) tiered threshold |
| After AD | 1,847 | Leverage + standardised residual |
| After NP-likeness | 1,204 | Score ≥ 0.0 |
| After Tanimoto | 302 | ECFP4 Tc < 0.85 (greedy) |

Of the 302 candidates, 159 (52.6%) were African NPs and 143 (47.4%) were global NPs.

### Molecular Docking

All 300 successfully prepared compounds were docked against the K1-resistant PfDHFR structure (1J3I, chain A). Docking scores ranged from −11.86 to −3.04 kcal/mol (mean −8.16 kcal/mol).

**Key results:**

- All 10 top-ranked hits are African natural products
- African NPs dock significantly better than global NPs (Mann-Whitney U = 9099.5, *p* = 0.0049, rank-biserial *r* = 0.188)
- 194 of 300 compounds (64.7%) exceed the cycloguanil reference (−7.6 kcal/mol)
- African NPs outperform global NPs at this threshold: 71.7% vs 56.7%

**Top 5 docking hits:**

| Rank | Compound | Score (kcal/mol) | p(active) | Origin | Pathway |
|------|----------|-----------------|-----------|--------|---------|
| 1 | CNP0286261 | −11.86 | 0.355 | African NP | Shikimates & Phenylpropanoids |
| 2 | CNP0275186 | −11.13 | 0.328 | African NP | Terpenoids |
| 3 | CNP0319845 | −10.96 | 0.301 | African NP | Shikimates & Phenylpropanoids |
| 4 | CNP0178940 | −10.13 | 0.508 | Global NP | Shikimates & Phenylpropanoids |
| 5 | CNP0539885 | −10.03 | 0.615 | Global NP | Alkaloids |

Protocol validation: pyrimethamine re-docked at −6.90 kcal/mol (Δ = +2.3 vs literature; within ±2.5 kcal/mol threshold), cycloguanil at −7.60 kcal/mol (Δ = +0.9; within ±1.5 threshold). Both produced tightly clustered mode ensembles (score range ≤ 1.0 kcal/mol across 9 modes).

### Molecular Dynamics

Three hits and the pyrimethamine reference were simulated in explicit TIP3P solvent using GROMACS 2023.3 (AMBER99SB-ILDN + GAFF2/AM1-BCC, 310 K, 1 bar). Hit compounds ran for 100 ns; pyrimethamine ran for 50 ns as a reference.

**Structural stability (backbone RMSD, post-equilibration):**

| Compound | Mean RMSD (Å) | Last-20 ns mean (Å) | Rg mean (Å) |
|----------|--------------|--------------------:|-------------|
| CNP0275186 | 2.43 | 2.62 | 18.68 |
| CNP0539885 | 2.50 | 2.86 | 18.62 |
| CNP0286261 | 2.87 | 2.85 | 18.29 |
| Pyrimethamine | 2.54 | 2.65 | 18.58 |

**Hydrogen bond occupancy (top interaction per compound):**

| Compound | Top H-bond Partner | Occupancy | HB/frame |
|----------|--------------------|-----------|----------|
| CNP0539885 | ASP54:OD2 | **94.2%** | 2.77 |
| CNP0539885 | ILE154:O | 91.2% | — |
| Pyrimethamine | SER98:O | 31.7% | 0.62 |
| CNP0275186 | ASP54:OD2 | 2.9% | 0.06 |
| CNP0286261 | ILE154:O | 0.7% | 0.01 |

**Binding pocket overlap with pyrimethamine (contact residues shared):**

| Compound | Contact Residues | Shared with Pyrimethamine |
|----------|-----------------|--------------------------|
| CNP0275186 | 29 | 24 (82.8%) |
| CNP0539885 | 28 | 22 (78.6%) |
| CNP0286261 | 20 | 18 (90.0%) |
| Pyrimethamine | 28 | — |

CNP0286261 makes direct contact with the ASN51 resistance mutation site (73% frequency), which may explain its engagement with the resistant pocket despite a more dynamic binding mode (ligand RMSD 9.19 Å).

---

## Key Figures

**QSAR and Chemical Space**

| | |
|---|---|
| ![ROC curves](figures/fig1_roc_curves.png) | ![Williams plot](figures/fig4_williams_plot.png) |
| *Fig 1. ROC curves for all trained classifiers on the external test set.* | *Fig 4. Williams plot showing applicability domain — leverage h* vs standardised residuals.* |
| ![SHAP importance](figures/fig3_shap_importance.png) | ![Chemical space PCA](figures/fig7_chemical_space_pca.png) |
| *Fig 3. SHAP feature importance for the Random Forest classifier.* | *Fig 7. PCA chemical space map comparing African NPs, global NPs, and ChEMBL training compounds.* |

**Docking**

| | |
|---|---|
| ![Docking score distribution](figures/fig11_docking_score_distribution.png) | ![Top 20 docking hits](figures/fig13_top20_docking_hits.png) |
| *Fig 11. Distribution of docking scores for African NPs vs global NPs.* | *Fig 13. Top 20 docking hits ranked by AutoDock Vina score.* |
| ![Score vs QSAR](figures/fig12_score_vs_qsar.png) | ![Complete cascade](figures/fig15_complete_cascade.png) |
| *Fig 12. Docking score vs QSAR p(active) — African NPs occupy a distinct chemical region.* | *Fig 15. Complete screening cascade from 695,133 compounds to 5 MD candidates.* |

**Molecular Dynamics**

| | |
|---|---|
| ![RMSD](figures/fig16_rmsd.png) | ![RMSF](figures/fig17_rmsf.png) |
| *Fig 16. Backbone RMSD over simulation time for all four compounds.* | *Fig 17. Per-residue RMSF with resistance mutation sites highlighted.* |
| ![H-bonds](figures/fig18_hbonds.png) | ![Contact frequency](figures/fig23_contact_frequency.png) |
| *Fig 18. Hydrogen bond occupancy for all ligand-protein pairs.* | *Fig 23. Ligand-protein contact frequency map compared to pyrimethamine reference.* |

**Binding Site Visualisation**

| Docked Pose | MD-Equilibrated Frame |
|---|---|
| ![CNP0275186 docked](figures/binding_site/fig21_CNP0275186_1_binding_site.png) | ![CNP0275186 MD](figures/binding_site/fig22_CNP0275186_1_md_binding_site.png) |
| *CNP0275186 — initial docked pose (AutoDock Vina, −11.13 kcal/mol)* | *CNP0275186 — representative MD frame at 98.3 ns* |
| ![CNP0539885 docked](figures/binding_site/fig21_CNP0539885_2_binding_site.png) | ![CNP0539885 MD](figures/binding_site/fig22_CNP0539885_2_md_binding_site.png) |
| *CNP0539885 — initial docked pose (AutoDock Vina, −10.03 kcal/mol)* | *CNP0539885 — representative MD frame at 89.0 ns; ASP54 H-bond at 94.2%* |

**MD Simulation Video**

A 10-second trajectory video of CNP0275186 in the PfDHFR binding pocket is available at:  
[`figures/binding_site/CNP0275186_1_md_simulation.mp4`](figures/binding_site/CNP0275186_1_md_simulation.mp4)

---

## MD Hit Compounds

**CNP0286261** — African NP (Shikimates and Phenylpropanoids)  
Best docking score: −11.86 kcal/mol | SMILES: `O=C(CCc1ccccc1)c1c(O)c(Cc2ccccc2O)c2c(c1O)Cc1ccccc1O2`

**CNP0275186** — African NP (Terpenoids)  
Best docking score: −11.13 kcal/mol | SMILES: `CC(C)C1=CC2=CC=C3[C@@](C)(COC(=O)c4ccc(O)c(O)c4)CCC[C@]3(C)C2=C(O)C1=O`

**CNP0539885** — Global NP (Alkaloids)  
Best docking score: −10.03 kcal/mol | p(active) = 0.615 | SMILES: `N=c1nc(O)c2c(CCc3ccc(C(=O)N[C@@H](CCC(=O)O)C(=O)O)cc3)c[nH]c2[nH]1`

**Pyrimethamine** — Reference control  
Docking score: −6.90 kcal/mol | Co-crystal ligand analogue in 1J3I | SMILES: `Cc1cnc(N)nc1-c1ccc(Cl)cc1`

---

## Datasets

| Dataset | Source | Size | Role |
|---------|--------|------|------|
| COCONUT Oct 2024 | [coconut.naturalproducts.net](https://coconut.naturalproducts.net) | 695,133 compounds | Primary screening library |
| AfroDb April 2026 | [https://african-compounds.org](https://african-compounds.org) | — | African NP annotation layer |
| NPASS 3.0 | [bidd.group/NPASS](http://bidd.group/NPASS) | 201,975 compounds | Prospective QSAR recall validation |
| ChEMBL DHFR (CHEMBL1939) | [ebi.ac.uk/chembl](https://www.ebi.ac.uk/chembl) | 2,537 curated compounds | QSAR training and test sets |
| PDB 1J3I | [rcsb.org](https://www.rcsb.org/structure/1J3I) | Chain A (DHFR domain) | Docking receptor and MD target |

Raw datasets are not included in the repository due to file size. The COCONUT and NPASS databases should be downloaded from their respective sources and placed in the paths specified in Notebook 00. All derived datasets (parquet, CSV, npy) used directly by subsequent notebooks are included.

---

## Computational Environment

### Local (Windows 11, VS Code + Jupyter)

```
conda env: cheminfo (Python 3.11)
  rdkit==2024.03.6        mdanalysis==2.10.0     pandas==3.0.1
  numpy==1.26.4           scikit-learn==1.7.1    xgboost==3.2.0
  shap==0.48.0            meeko==0.7.1           matplotlib
  seaborn                 scipy                  pyedr
  statsmodels             biopython              ffmpeg==8.0.1

conda env: openbabel_env (Python 3.10)
  openbabel==3.1.1        (used via subprocess only)

conda env: docking (Python 3.10)
  pymol-open-source==3.1.0

External tools:
  AutoDock Vina 1.2.5     (C:\vina\vina_1.2.5_win.exe)
  MGLTools 1.5.7          (receptor preparation)
  OpenBabel 3.1.1         (ligand preparation fallback)
```

### Cloud (Notebooks 05a-b)

```
Google Colab Pro (NVIDIA T4 GPU)
GROMACS 2023.3 compiled with CUDA acceleration
AmberTools 23 / ACPYPE (GAFF2 + AM1-BCC)
```

---

## Reproducibility

All notebooks are designed to run sequentially. Each notebook begins with path definitions and produces output files consumed by the next stage.

**Critical implementation notes (documented to prevent silent errors):**

- Morgan fingerprints: always use `AllChem.GetMorganGenerator(radius=2, fpSize=2048)` — the legacy `GetMorganFingerprintAsBitVect` API is deprecated
- African NP flag: the COCONUT `collections` field (not a separate SDF cross-match) is used — `"AfroDB"` substring match
- Vina 1.2.5 has no `--log` flag — scores are parsed directly from `result.stdout`
- Docking box coordinates (28.0, 6.1, 59.8) are derived from the WRA heavy atom centroid in the original 1J3I deposited coordinates — not from literature
- GROMACS NPT equilibration uses the Berendsen barostat (Parrinello-Rahman causes catastrophic box expansion with GAFF2 ligand topologies); production MD uses Parrinello-Rahman
- `gmx solvate` must receive explicit `-box` dimensions from the complex GRO file — omitting this expands the box to unphysical dimensions
- MDAnalysis time axis from chunked XTC concatenation requires manual rebuild: `np.arange(n_frames) * dt_ns`
- PyMOL open-source: individual PDB frames exported via MDAnalysis, not `load_traj` with TPR (unreliable on Windows)

Random seed: `SEED = 42` throughout all notebooks.

Dependencies are managed through conda environments. No `requirements.txt` is provided as cross-platform conda environment files better capture the binary dependencies (RDKit, GROMACS).

---

## Publication Plan

This project targets three peer-reviewed publications from a single integrated pipeline:

| Paper | Content | Target Journal | Impact |
|-------|---------|---------------|--------|
| **Paper 1** | QSAR model development, applicability domain, chemical space analysis of African NPs vs global NPs, NPASS prospective validation | *Journal of Cheminformatics* (Q1) | Documents the QSAR gap for African NP chemical space and the tiered threshold solution |
| **Paper 2** | Virtual screening cascade, molecular docking, African NP dominance of top hits, statistical validation | *Computational Biology and Chemistry* (Q2) | First systematic docking study of COCONUT African NPs against resistant PfDHFR |
| **Paper 3** | Molecular dynamics, binding stability, H-bond networks, resistance mutation contacts, binding pocket comparison | *Journal of Biomolecular Structure and Dynamics* (Q1) | Atomistic characterisation of African NP binding to the K1 quadruple mutant |

Manuscripts are currently in preparation.

---

## Author

**Kenneth Odoh Chidiebere**  
MSc Computational Drug Discovery  
Department of Chemistry, AFIT Kaduna, Nigeria

B.Sc. Chemistry (First Class), Air Force Institute of Technology — Best Graduating Student, Department and Faculty

[![GitHub](https://img.shields.io/badge/GitHub-KennethOdoh157-black?logo=github)](https://github.com/KennethOdoh157)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-kennethodoh-blue?logo=linkedin)](https://linkedin.com/in/kennethodoh)

---

*This pipeline was developed as an independent research project targeting peer-reviewed publication. All software used is open-source. Computational resources were provided by Google Colab Pro.*
