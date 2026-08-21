# Computational Discovery of PfDHFR Inhibitors from African Natural Products

![Python](https://img.shields.io/badge/Python-3.11-blue)
![RDKit](https://img.shields.io/badge/RDKit-2024.03.6-green)
![GROMACS](https://img.shields.io/badge/GROMACS-2023.3-orange)
![MDAnalysis](https://img.shields.io/badge/MDAnalysis-2.10.0-purple)
![AutoDock Vina](https://img.shields.io/badge/AutoDock%20Vina-1.2.5-red)
![gmx_MMPBSA](https://img.shields.io/badge/gmx__MMPBSA-1.6.5-teal)
![AmberTools](https://img.shields.io/badge/AmberTools-23-yellow)
![ADMET--AI](https://img.shields.io/badge/ADMET--AI-1.4.0-brightgreen)
![Status](https://img.shields.io/badge/Status-Complete-success)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

---

## Abstract

Pyrimethamine-resistant *Plasmodium falciparum* remains one of the most urgent problems in antimalarial drug discovery. The K1 strain carries four resistance mutations in dihydrofolate reductase (N51I/C59R/S108N/I164L) that have rendered the clinical antifolate pyrimethamine largely ineffective across sub-Saharan Africa, yet the chemical space of African medicinal plants had not been systematically evaluated against this resistant target by computational methods.

This project builds a complete, end-to-end computational pipeline that starts from 695,133 natural product structures in the COCONUT database and works through QSAR modeling, multi-stage virtual screening, molecular docking, and 100 ns molecular dynamics simulations to identify African-origin compounds capable of engaging the resistant PfDHFR binding pocket. The best hit, CNP0286261, achieved a predicted docking score of -11.86 kcal/mol compared to -6.90 kcal/mol for pyrimethamine. All ten top-ranked docking hits came from African natural products (Mann-Whitney p = 0.0049), and molecular dynamics confirmed that all three shortlisted hits maintain stable binding to the resistant active site over the full 100 ns trajectory, in several respects more favourable than the pyrimethamine reference under the simulated conditions.

A second, companion study extends this pipeline with endpoint binding free energy calculation (MM-PBSA/MM-GBSA) and in silico ADMET profiling of the three lead compounds, asking whether the strongest binder is also the most viable drug candidate once pharmacokinetic and toxicological properties are considered.

Two peer-reviewed manuscripts are in preparation from this integrated body of work.

---

> ### At a Glance
> - **695,133 compounds** screened from COCONUT with African NP subset annotated via AfroDb
> - **5-stage virtual screening** cascade: Lipinski filter, QSAR, applicability domain, NP-likeness, diversity
> - **302 compounds** advanced to molecular docking against the K1-resistant PfDHFR crystal structure
> - **Best hit at -11.86 kcal/mol**, a 4.96 kcal/mol advantage over pyrimethamine
> - **All 10 top docking hits** are African natural products (Mann-Whitney p = 0.0049, r = 0.188)
> - **100 ns GPU MD simulations** on Google Colab Pro (NVIDIA T4): CNP0539885 maintains ASP54 hydrogen bond at 94.2% occupancy
> - **MM-PBSA/MM-GBSA binding free energy**: two of three hits exceed pyrimethamine in binding enthalpy, with CNP0539885 reaching -33.89 kcal/mol (MM-GBSA)
> - **ADMET-AI profiling** across 98 endpoints shows the strongest binder is not the safest candidate, binding strength alone did not predict developability
> - Two manuscripts targeting PLOS ONE

---

## Table of Contents

- [Scientific Background](#scientific-background)
- [Pipeline Overview](#pipeline-overview)
- [Repository Structure](#repository-structure)
- [Notebooks](#notebooks)
- [Results](#results)
  - [QSAR Modeling](#qsar-modeling)
  - [Virtual Screening](#virtual-screening)
  - [Molecular Docking](#molecular-docking)
  - [Molecular Dynamics](#molecular-dynamics)
- [Figures](#figures)
- [MD Hit Compounds](#md-hit-compounds)
- [Binding Free Energy and ADMET Profiling](#binding-free-energy-and-admet-profiling)
  - [MM-PBSA and MM-GBSA Results](#mm-pbsa-and-mm-gbsa-results)
  - [Per-Residue Energy Decomposition](#per-residue-energy-decomposition)
  - [ADMET and Toxicity Profiling](#admet-and-toxicity-profiling)
- [Datasets](#datasets)
- [Computational Environment](#computational-environment)
- [Reproducibility](#reproducibility)
- [Publication Plan](#publication-plan)
- [Author](#author)

---

## Scientific Background

*Plasmodium falciparum* causes the deadliest form of human malaria. Pyrimethamine, once a frontline treatment, has been rendered clinically ineffective across sub-Saharan Africa by the progressive accumulation of four point mutations in the DHFR domain: N51I, C59R, S108N, and I164L. Together these mutations define the K1 quadruple mutant, which substantially reduces pyrimethamine binding while preserving catalytic function. No currently approved antifolate directly addresses this mutant background.

African traditional medicine represents a rich and largely untapped source of structural diversity. The COCONUT database now contains over 695,000 natural product structures, a growing fraction of which originate from African plants documented in ethnobotanical literature. Despite this, systematic computational screening of African natural products against resistant PfDHFR had not been reported before this work.

The crystal structure of the K1 strain DHFR-TS is publicly available (PDB: 1J3I, 2.25 A resolution), making this a structurally well-defined target for structure-based drug design. This project exploits that structure alongside a curated ChEMBL bioactivity dataset to build a predictive pipeline that ranks African natural products by their likelihood of binding the resistant enzyme.

Three questions motivated the study:

1. Can African natural product chemical space yield competitive PfDHFR inhibitor candidates, even though it diverges structurally from the synthetic antifolates that dominate ChEMBL training data?
2. Does QSAR-predicted probability of activity correlate with docking-predicted score for natural products with low structural similarity to known inhibitors?
3. Do the top docking hits maintain stable binding to the K1 active site under physiologically relevant simulation conditions, despite the resistance mutations?

A fourth question, taken up in the companion study described below, followed naturally from the first three: do the compounds that bind most strongly also represent the most viable drug candidates once binding free energy and ADMET properties are considered?

---

## Pipeline Overview

```text
COCONUT Database (695,133 compounds)
          |
          v
  Stage 1: Lipinski Filter
  Rule of Five + rotatable bonds <= 10
  477,975 compounds pass
          |
          v
  Stage 2: QSAR Probability Filter
  Random Forest trained on ChEMBL DHFR bioactivity data
  African NPs: p(active) >= 0.30  |  Global NPs: p(active) >= 0.50
  2,245 compounds pass
          |
          v
  Stage 3: Applicability Domain Filter
  Williams plot leverage analysis
  Within-AD: p >= 0.50  |  Outside-AD: p >= 0.60
  1,847 compounds pass
          |
          v
  Stage 4: NP-Likeness Filter
  RDKit NP-likeness score >= 0.0
  1,204 compounds pass
          |
          v
  Stage 5: Tanimoto Diversity Filter
  ECFP4, radius=2, Tc < 0.85 (greedy leader-picking)
  302 compounds advance to docking
          |
          v
  AutoDock Vina 1.2.5 Molecular Docking
  Receptor: 1J3I chain A (K1 resistant PfDHFR)
  Grid centre: 28.0, 6.1, 59.8 A  |  Size: 20x20x20 A
  300 compounds docked  |  Best hit: -11.86 kcal/mol
          |
          v
  MD Shortlist Selection
  Score <= -9.0 kcal/mol  +  Tc < 0.40 diversity filter
  3 hits + pyrimethamine reference
          |
          v
  GROMACS 2023.3 Molecular Dynamics
  AMBER99SB-ILDN + GAFF2/AM1-BCC  |  TIP3P  |  310 K  |  1 bar
  100 ns per hit compound  |  50 ns pyrimethamine reference
  RMSD, RMSF, H-bonds, Rg, contact frequency analysis
          |
          v
  gmx_MMPBSA Binding Free Energy Calculation
  Single-trajectory MM-GBSA and MM-PBSA on production trajectories
  Interaction entropy estimation  |  per-residue GB decomposition
          |
          v
  ADMET-AI Profiling
  98 pharmacokinetic and toxicological endpoints
  13 compounds: 3 lead hits, pyrimethamine reference, 9 additional docking hits
```
---

## Repository Structure

```text
pfdhfr-inhibitor-discovery/
|
+-- data/
|   +-- docking/
|   |   +-- receptor/
|   |   |   +-- 1J3I_clean.pdb
|   |   |   +-- 1J3I_original.pdb
|   |   |   +-- 1J3I_receptor.pdbqt
|   |   +-- ligands_pdbqt/
|   |   +-- results/
|   |   +-- logs/
|   |   +-- docking_checkpoint.csv
|   |   +-- ligand_prep_report.csv
|   |   +-- vina_config.txt
|   +-- md/
|   +-- chembl_dhfr_curated.parquet
|   +-- chembl_dhfr_raw.csv
|   +-- coconut_index.parquet
|   +-- docking_results.csv
|   +-- md_shortlist.csv
|   +-- npass_master.parquet
|   +-- screening_probs_all.npy
|   +-- vs_african_np_hits.csv
|   +-- vs_cascade_summary.csv
|   +-- vs_docking_smiles.csv
|
+-- figures/
|   +-- binding_site/
|   |   +-- md_frames/
|   |   +-- movie_frames/
|   |   +-- CNP0275186_1_md_simulation.mp4
|   |   +-- fig21_*.png
|   |   +-- fig22_*.png
|   +-- fig1_roc_curves.png
|   +-- fig23_contact_frequency.png
|
+-- results/
|   +-- mmpbsa/
|   |   +-- CNP0286261_0_FINAL_RESULTS_MMPBSA.csv
|   |   +-- CNP0275186_1_FINAL_RESULTS_MMPBSA.csv
|   |   +-- CNP0539885_2_FINAL_RESULTS_MMPBSA.csv
|   |   +-- pyrimethamine_FINAL_RESULTS_MMPBSA.csv
|   |   +-- *_FINAL_DECOMP_RESULTS.dat
|   |   +-- *_FINAL_DECOMP_MAP.csv
|   |   +-- table1_dH_dG_summary.csv
|   |   +-- fig_dH_comparison.png
|   |   +-- fig_residue_decomposition.png
|   +-- admet/
|       +-- admet_compound_list.csv
|       +-- admet_predictions_raw.csv
|       +-- key_toxicity_endpoints.csv
|       +-- toxicity_flags.csv
|       +-- table2_liability_summary.csv
|       +-- table3_ADME_summary.csv
|       +-- fig_toxicity_heatmap.png
|
+-- models/
|   +-- best_classifier.pkl
|   +-- ad_h_star.npy
|   +-- ad_train_matrix.npy
|   +-- shap_values_best_cls.npy
|   +-- model_metadata.csv
|
+-- binding_site_figures.pml
+-- md_binding_site_figures.pml
+-- md_movie_CNP0275186_1.pml
+-- notebook_00_master_database_construction.ipynb
+-- notebook_01_chembl_qsar_dataset.ipynb
+-- notebook_02_qsar_modeling.ipynb
+-- notebook_03_virtual_screening.ipynb
+-- notebook_04_molecular_docking.ipynb
+-- notebook_05a_md_local_preparation.ipynb
+-- notebook_05b_md_colab_execution.ipynb
+-- notebook_05c_md_local_analysis.ipynb
+-- 06_MMPBSA_binding_free_energy.ipynb
+-- 07_ADMET_profiling.ipynb
+-- README.md
```

---

## Notebooks

| Notebook | Description | Environment |
|----------|-------------|-------------|
| [notebook_00](notebook_00_master_database_construction.ipynb) | COCONUT and NPASS 3.0 ingestion, standardisation, African NP annotation via AfroDb | cheminfo |
| [notebook_01](notebook_01_chembl_qsar_dataset.ipynb) | ChEMBL DHFR bioactivity curation, pIC50 labelling, scaffold-based train/test split | cheminfo |
| [notebook_02](notebook_02_qsar_modeling.ipynb) | ECFP4 fingerprints, multi-model training, SHAP analysis, Williams plot applicability domain, NPASS prospective recall | cheminfo |
| [notebook_03](notebook_03_virtual_screening.ipynb) | 5-stage cascade screening of 695,133 compounds, tiered QSAR thresholds for African NPs, Tanimoto diversity filter | cheminfo |
| [notebook_04](notebook_04_molecular_docking.ipynb) | Ligand preparation via ETKDGv3 and Meeko, receptor preparation via MGLTools, AutoDock Vina 1.2.5 docking, statistical validation | cheminfo |
| [notebook_05a](notebook_05a_md_local_preparation.ipynb) | Docked pose extraction, ACPYPE/GAFF2 parametrisation, GROMACS pdb2gmx, complex assembly, MDP file generation | cheminfo |
| [notebook_05b](notebook_05b_md_colab_execution.ipynb) | GROMACS 2023.3 CUDA energy minimisation, NVT/NPT equilibration, 100 ns chunked production MD on Google Colab T4 GPU | Google Colab |
| [notebook_05c](notebook_05c_md_local_analysis.ipynb) | MDAnalysis trajectory analysis (RMSD, RMSF, H-bonds, Rg, contacts), PyMOL binding site figures, simulation video | cheminfo |
| [notebook_06](06_MMPBSA_binding_free_energy.ipynb) | gmx_MMPBSA single-trajectory MM-GBSA and MM-PBSA calculation, interaction entropy estimation, per-residue GB decomposition | mmpbsa (WSL2 Ubuntu) |
| [notebook_07](07_ADMET_profiling.ipynb) | ADMET-AI profiling of absorption, distribution, metabolism, excretion, and toxicity endpoints for lead compounds | admet (WSL2 Ubuntu) |

---

## Results

### QSAR Modeling

A binary classifier was trained on 2,537 curated ChEMBL compounds spanning eight eukaryotic and apicomplexan DHFR targets (pIC50 >= 6.0 = active). Five algorithms were benchmarked on a scaffold-stratified external test set of 388 compounds.

| Model | AUC | MCC | F1 |
|-------|-----|-----|----|
| **Random Forest** | **0.861** | **0.583** | **0.795** |
| XGBoost | 0.847 | 0.561 | 0.781 |
| SVM | 0.832 | 0.534 | 0.764 |
| Stacking Ensemble | 0.858 | 0.578 | 0.790 |

The Random Forest model was selected as the primary screener. Applicability domain was defined using leverage-based Williams plot analysis (h* = 0.0488). SHAP analysis identified molecular weight, LogP, and aromatic ring count as the dominant predictive features.

A finding that shaped the entire downstream strategy emerged here: **no African NP in the COCONUT database exceeded p(active) = 0.50** (maximum 0.475, mean 0.257), despite all passing Lipinski filters. This reflects a genuine chemical space gap. African natural products are structurally dissimilar to the synthetic antifolates that dominate the ChEMBL DHFR training set, so the model underestimates their activity potential. A tiered threshold strategy was adopted as the solution: African NPs at p >= 0.30, global NPs at p >= 0.50, with AutoDock Vina serving as the selectivity gate.

![ROC Curves](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig1_roc_curves.png)
*Figure 1. ROC curves for all trained classifiers on the external test set. The Random Forest model (AUC = 0.861) was selected as the primary virtual screener.*

![Williams Plot](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig4_williams_plot.png)
*Figure 4. Williams plot showing the applicability domain boundary. Points outside the leverage threshold h* or beyond three standard deviations required a stricter activity threshold before advancing.*

![SHAP Importance](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig3_shap_importance.png)
*Figure 3. SHAP feature importance for the Random Forest classifier. Molecular weight, aromatic ring count, and lipophilicity descriptors dominated the model.*

![Chemical Space PCA](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig7_chemical_space_pca.png)
*Figure 7. PCA chemical space map comparing African NPs, global NPs, and ChEMBL training compounds. African NPs occupy a region largely distinct from the training set, explaining the lower predicted probabilities.*

---

### Virtual Screening

The 5-stage cascade reduced 695,133 COCONUT compounds to 302 docking candidates.

| Stage | Compounds Remaining | Filter |
|-------|--------------------:|--------|
| Start | 695,133 | COCONUT full database |
| After Lipinski | 477,975 | MW <= 500, LogP <= 5, HBD <= 5, HBA <= 10 |
| After QSAR | 2,245 | p(active) tiered threshold |
| After AD | 1,847 | Leverage and standardised residual filter |
| After NP-likeness | 1,204 | RDKit NP-likeness score >= 0.0 |
| After Tanimoto | 302 | ECFP4 Tc < 0.85 greedy filter |

Of the 302 candidates, 159 (52.6%) were African NPs and 143 (47.4%) were global NPs.

![Screening Cascade](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig9_screening_cascade.png)
*Figure 9. Virtual screening cascade funnel showing compound attrition at each stage.*

![QSAR Probability Distribution](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig6_probability_distribution.png)
*Figure 6. Distribution of QSAR p(active) scores for African NPs vs global NPs. The structural gap between African NPs and synthetic antifolates is visible in the shifted distribution.*

![Top African NP Hits](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig10_top_african_np_hits.png)
*Figure 10. Top 50 African NP hits ranked by QSAR probability, coloured by biosynthetic class.*

---

### Molecular Docking

All 300 successfully prepared compounds were docked against the K1-resistant PfDHFR structure (1J3I, chain A). Two compounds failed 3D embedding: a zwitterionic salt form and a macrocyclic ester, both scientifically expected failures.

Docking scores ranged from -11.86 to -3.04 kcal/mol (mean -8.16 kcal/mol).

**Top 5 docking hits:**

| Rank | Compound | Score (kcal/mol) | p(active) | Origin | Biosynthetic Class |
|------|----------|-----------------|-----------|--------|-------------------|
| 1 | CNP0286261 | -11.86 | 0.355 | African NP | Shikimates and Phenylpropanoids |
| 2 | CNP0275186 | -11.13 | 0.328 | African NP | Terpenoids |
| 3 | CNP0319845 | -10.96 | 0.301 | African NP | Shikimates and Phenylpropanoids |
| 4 | CNP0178940 | -10.13 | 0.508 | Global NP | Shikimates and Phenylpropanoids |
| 5 | CNP0539885 | -10.03 | 0.615 | Global NP | Alkaloids |

All 10 top-ranked hits were African natural products. African NPs docked with significantly more favourable predicted scores than global NPs, albeit with a modest effect size (Mann-Whitney U = 9099.5, p = 0.0049, rank-biserial r = 0.188). A total of 194 of 300 compounds (64.7%) exceeded the cycloguanil reference threshold of -7.6 kcal/mol, including 71.7% of African NPs compared to 56.7% of global NPs.

Protocol validation was performed by re-docking pyrimethamine (-6.90 kcal/mol, literature reference -9.2 kcal/mol, delta = +2.3, within the +/-2.5 kcal/mol acceptance threshold) and cycloguanil (-7.60 kcal/mol, reference -8.5 kcal/mol, delta = +0.9, within +/-1.5 kcal/mol). Both reference compounds produced tightly clustered binding mode ensembles across all nine modes, confirming consistent pocket recognition.

![Docking Score Distribution](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig11_docking_score_distribution.png)
*Figure 11. Distribution of AutoDock Vina docking scores for African NPs vs global NPs. African NPs show a statistically significant shift toward more favourable predicted scores (Mann-Whitney p = 0.0049).*

![Score vs QSAR](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig12_score_vs_qsar.png)
*Figure 12. Docking score vs QSAR p(active) for all 300 compounds. African NPs occupy a distinct region: lower predicted probability but stronger docking scores, consistent with the chemical space gap hypothesis.*

![Top 20 Docking Hits](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig13_top20_docking_hits.png)
*Figure 13. Top 20 docking hits ranked by AutoDock Vina score. All top 10 hits are African natural products.*

![Score by Pathway](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig14_score_by_pathway.png)
*Figure 14. Docking score distribution by biosynthetic pathway.*

![Complete Cascade](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig15_complete_cascade.png)
*Figure 15. Complete screening cascade from 695,133 compounds to the 5 MD shortlist candidates.*

---

### Molecular Dynamics

Three hits and the pyrimethamine reference were simulated in explicit TIP3P solvent using GROMACS 2023.3 (AMBER99SB-ILDN protein force field, GAFF2/AM1-BCC ligand parameters, 310 K, 1 bar). Hit compounds ran for 100 ns; pyrimethamine ran for 50 ns as a reference control. Simulations were executed on Google Colab Pro using an NVIDIA T4 GPU.

**Structural stability:**

| Compound | Role | Mean RMSD (A) | Last-20 ns RMSD (A) | Rg mean (A) |
|----------|------|--------------|--------------------:|-------------|
| CNP0275186 | African NP | 2.43 | 2.62 | 18.68 |
| CNP0539885 | Global NP | 2.50 | 2.86 | 18.62 |
| CNP0286261 | African NP | 2.87 | 2.85 | 18.29 |
| Pyrimethamine | Reference | 2.54 | 2.65 | 18.58 |

All four systems maintained stable backbone geometry throughout the simulation. The radius of gyration remained within 0.4 A across all compounds, indicating the protein retained its folded state in the presence of all three hit compounds.

**Hydrogen bond occupancy (top interactions):**

| Compound | Interaction | Occupancy |
|----------|-------------|-----------|
| CNP0539885 | ASP54:OD2 | 94.2% |
| CNP0539885 | ILE154:O | 91.2% |
| Pyrimethamine | SER98:O | 31.7% |
| CNP0275186 | ASP54:OD2 | 2.9% |
| CNP0286261 | ILE154:O | 0.7% |

CNP0539885 formed a persistent electrostatic anchor to ASP54 at 94.2% occupancy, a markedly more persistent interaction than pyrimethamine's top contact (31.7%) under the same simulated conditions. This residue is conserved in the resistant active site and is a key pharmacophoric contact for antifolate binding.

**Binding pocket overlap with pyrimethamine:**

| Compound | Contact Residues | Shared with Pyrimethamine |
|----------|-----------------:|-------------------------:|
| CNP0275186 | 29 | 24 (82.8%) |
| CNP0539885 | 28 | 22 (78.6%) |
| CNP0286261 | 20 | 18 (90.0%) |

CNP0286261 showed a more dynamic binding mode (ligand RMSD 9.19 A) but made direct contact with the ASN51 resistance mutation site at 73% frequency, a finding developed further as a testable structural hypothesis in the companion MM-PBSA study below.

![RMSD](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig16_rmsd.png)
*Figure 16. Backbone RMSD over simulation time for all four compounds relative to the initial structure. All systems converge within the first 10 ns and remain stable throughout.*

![RMSF](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig17_rmsf.png)
*Figure 17. Per-residue C-alpha RMSF over post-equilibration frames. The four resistance mutation sites (N51I, C59R, S108N, I164L) are highlighted.*

![H-bonds](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig18_hbonds.png)
*Figure 18. Hydrogen bond occupancy for all ligand-protein donor-acceptor pairs across post-equilibration frames. CNP0539885 dominates with persistent ASP54 and ILE154 contacts.*

![Radius of Gyration](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig19_rg.png)
*Figure 19. Radius of gyration of the protein over simulation time. All four systems remain compact and stable.*

![MD Summary](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig20_md_summary.png)
*Figure 20. Integrated binding characterisation summary comparing all three hit compounds against the pyrimethamine reference.*

![Contact Frequency](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/fig23_contact_frequency.png)
*Figure 23. Ligand-protein contact frequency map showing residues shared with the pyrimethamine reference binding pocket.*

---

## Figures

### Binding Site Visualisations

The following figures were generated in PyMOL open-source 3.1.0. Each compound is shown in two panels: the initial AutoDock Vina docked pose, and the representative MD-equilibrated frame selected from the final 20 ns of simulation. Resistance mutation residues (N51I, C59R, S108N, I164L) are highlighted in magenta.

**CNP0275186 (African NP, -11.13 kcal/mol)**

| Docked Pose | MD-Equilibrated Frame (98.3 ns) |
|:-----------:|:-------------------------------:|
| ![CNP0275186 docked](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/binding_site/fig21_CNP0275186_1_binding_site.png) | ![CNP0275186 MD](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/binding_site/fig22_CNP0275186_1_md_binding_site.png) |

**CNP0286261 (African NP, -11.86 kcal/mol, best docking hit)**

| Docked Pose | MD-Equilibrated Frame (93.4 ns) |
|:-----------:|:-------------------------------:|
| ![CNP0286261 docked](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/binding_site/fig21_CNP0286261_0_binding_site.png) | ![CNP0286261 MD](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/binding_site/fig22_CNP0286261_0_md_binding_site.png) |

**CNP0539885 (Global NP, -10.03 kcal/mol, dominant H-bond network)**

| Docked Pose | MD-Equilibrated Frame (89.0 ns) |
|:-----------:|:-------------------------------:|
| ![CNP0539885 docked](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/binding_site/fig21_CNP0539885_2_binding_site.png) | ![CNP0539885 MD](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/binding_site/fig22_CNP0539885_2_md_binding_site.png) |

**Pyrimethamine (Reference control, -6.90 kcal/mol)**

| Docked Pose | MD-Equilibrated Frame (38.7 ns) |
|:-----------:|:-------------------------------:|
| ![Pyrimethamine docked](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/binding_site/fig21_pyrimethamine_binding_site.png) | ![Pyrimethamine MD](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/figures/binding_site/fig22_pyrimethamine_md_binding_site.png) |

### MD Simulation Video

A rendered trajectory video of CNP0275186 in the PfDHFR K1 binding pocket over 100 ns is available in the repository:

[Watch CNP0275186 MD simulation (mp4)](figures/binding_site/CNP0275186_1_md_simulation.mp4)

The video was rendered frame-by-frame in PyMOL at 300 DPI and assembled using ffmpeg at 10 fps. It shows the ligand maintaining its binding orientation throughout the equilibrated phase of the simulation.

---

## MD Hit Compounds

**CNP0286261** | African NP | Shikimates and Phenylpropanoids | Docking score: -11.86 kcal/mol
SMILES: O=C(CCc1ccccc1)c1c(O)c(Cc2ccccc2O)c2c(c1O)Cc1ccccc1O2

**CNP0275186** | African NP | Terpenoids | Docking score: -11.13 kcal/mol
SMILES: CC(C)C1=CC2=CC=C3C@@(COC(=O)c4ccc(O)c(O)c4)CCC[C@]3(C)C2=C(O)C1=O

**CNP0539885** | Global NP | Alkaloids | Docking score: -10.03 kcal/mol | p(active): 0.615
SMILES: N=c1nc(O)c2c(CCc3ccc(C(=O)NC@@HC(=O)O)cc3)c[nH]c2[nH]1

**Pyrimethamine** | Reference control | Docking score: -6.90 kcal/mol
SMILES: Cc1cnc(N)nc1-c1ccc(Cl)cc1

---

## Binding Free Energy and ADMET Profiling

A companion study extends the pipeline above with endpoint binding free energy calculation and in silico ADMET profiling of the three lead compounds and the pyrimethamine reference, using the identical production trajectories generated during the molecular dynamics stage. Full methodology, results, and discussion are reported in the second manuscript; a summary of the key findings is given here.

### MM-PBSA and MM-GBSA Results

Binding free energy was calculated using gmx_MMPBSA on a single-trajectory protocol, sampling 129 frames per 100 ns hit-compound trajectory and 57 frames from the 50 ns pyrimethamine trajectory. Interaction entropy standard deviation exceeded the established 25 kJ/mol reliability threshold (Ekberg and Ryde, 2021) for all four systems, so binding enthalpy (delta H) is treated as the primary comparative measure, with the entropy-corrected free energy (delta G) reported alongside it under this caveat.

| Compound | delta H (GB) | delta H (PB) | delta G (GB, IE-corrected) | delta G (PB, IE-corrected) |
|----------|--------------:|--------------:|-----------------------------:|-----------------------------:|
| CNP0286261 | -14.13 +/- 2.62 | -18.32 +/- 2.97 | -1.40 +/- 2.62 | -5.59 +/- 2.97 |
| CNP0275186 | -25.58 +/- 6.31 | -16.44 +/- 6.31 | -6.52 +/- 6.31 | 2.61 +/- 6.31 |
| CNP0539885 | -33.89 +/- 4.48 | -26.74 +/- 5.41 | -18.90 +/- 4.48 | -11.75 +/- 5.41 |
| Pyrimethamine | -18.83 +/- 5.08 | -15.83 +/- 4.23 | -1.84 +/- 5.08 | 1.16 +/- 4.23 |

Two of the three natural product hits, CNP0539885 and CNP0286261, exceed the pyrimethamine reference in binding enthalpy under both methods.

![Binding Enthalpy Comparison](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/results/mmpbsa/fig_dH_comparison.png)
*Figure 24. MM-GBSA and MM-PBSA binding enthalpy for the three natural product hits and the pyrimethamine reference, with standard error of the mean shown as error bars.*

### Per-Residue Energy Decomposition

Per-residue Generalized Born decomposition identified the dominant receptor contacts for each compound and tested whether the resistance mutation site ASN51 and the persistently hydrogen-bonded ASP54 fell within each system's 6 angstrom binding-site shell.

| Residue | CNP0286261 | CNP0275186 | CNP0539885 | Pyrimethamine |
|---------|-----------:|-----------:|-----------:|---------------:|
| ASN51 (K1 resistance site) | -0.49 kcal/mol | 0.00 kcal/mol | -0.65 kcal/mol | not in shell |
| ASP54 (H-bond residue) | 0.62 kcal/mol | 0.35 kcal/mol | -1.06 kcal/mol | not in shell |

All three natural product hits contact ASN51 within the binding-site shell; pyrimethamine does not. The energetic contribution of ASN51 itself is modest in each case, so this is best read as a difference in binding-pose geometry, the natural product hits physically reach into the region of the pocket reshaped by the resistance mutations, rather than as evidence that ASN51 is a major energetic driver of binding.

![Per-Residue Decomposition](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/results/mmpbsa/fig_residue_decomposition.png)
*Figure 25. Per-residue GB energy decomposition for the top receptor contacts of each compound. ASN51 and ASP54 are highlighted where present within the binding-site shell.*

### ADMET and Toxicity Profiling

ADMET-AI was used to predict 98 pharmacokinetic and toxicological properties for the three lead compounds, the pyrimethamine reference, and 9 additional top-ranked docking hits. Predicted binding strength did not track with predicted developability.

| Compound | Highest-risk endpoint | Probability | Total flags (>=0.5) |
|----------|------------------------|-------------:|---------------------:|
| Pyrimethamine (reference) | DILI | 0.93 | 1 |
| CNP0539885 | DILI | 0.87 | 2 |
| CNP0286261 | SR-MMP | 0.88 | 4 |
| CNP0275186 | SR-MMP | 0.97 | 5 |

CNP0539885, the strongest binder under both MM-GBSA and MM-PBSA, carried the highest predicted risk of clinical toxicity among the three hits (ClinTox 0.76) and markedly poor predicted intestinal absorption (HIA 0.22, versus 1.00 for the other two hits and pyrimethamine). CNP0286261 and CNP0275186 instead showed elevated predicted mitochondrial membrane potential disruption (SR-MMP), the single most common highest-risk endpoint across the full compound set. No single compound emerged as unambiguously superior across both binding energy and ADMET criteria.

![Toxicity Heatmap](https://raw.githubusercontent.com/KennethOdoh157/pfdhfr-inhibitor-discovery/main/results/admet/fig_toxicity_heatmap.png)
*Figure 26. ADMET-AI predicted probability across 18 binary toxicity endpoints for the three natural product hits, the pyrimethamine reference, and 9 additional top-ranked docking hits. Darker shading indicates higher predicted risk.*

---

## Datasets

| Dataset | Source | Size | Role in Pipeline |
|---------|--------|------|-----------------|
| COCONUT Oct 2024 | [coconut.naturalproducts.net](https://coconut.naturalproducts.net) | 695,133 compounds | Primary screening library |
| AfroDb April 2026 | [african-compounds.org](https://african-compounds.org) | Annotation layer | African NP flagging via collections field |
| NPASS 3.0 | [bidd.group/NPASS](http://bidd.group/NPASS) | 201,975 compounds | Prospective QSAR recall validation |
| ChEMBL DHFR (CHEMBL1939) | [ebi.ac.uk/chembl](https://www.ebi.ac.uk/chembl) | 2,537 curated compounds | QSAR model training and external test set |
| PDB 1J3I | [rcsb.org](https://www.rcsb.org/structure/1J3I) | Chain A, DHFR domain | Docking receptor and MD target structure |
| Therapeutics Data Commons | [tdcommons.ai](https://tdcommons.ai) | 22 ADMET benchmark datasets | ADMET-AI model training (external, not redistributed) |

Raw database files (COCONUT SDF, NPASS parquet) are not included due to file size. All derived datasets used by subsequent notebooks are included and version-controlled.

---

## Computational Environment

### Local (Windows 11, VS Code + Jupyter Notebooks)
conda env: cheminfo (Python 3.11)
rdkit==2024.03.6        mdanalysis==2.10.0     pandas==3.0.1
numpy==1.26.4           scikit-learn==1.7.1    xgboost==3.2.0
shap==0.48.0            meeko==0.7.1           pyedr
matplotlib              seaborn                scipy
statsmodels             biopython              ffmpeg==8.0.1
conda env: openbabel_env (Python 3.10)
openbabel==3.1.1        (called via subprocess only)
conda env: docking (Python 3.10)
pymol-open-source==3.1.0
External tools:
AutoDock Vina 1.2.5     C:\vina\vina_1.2.5_win.exe
MGLTools 1.5.7          receptor preparation
OpenBabel 3.1.1         ligand preparation fallback

### Cloud (Notebooks 05a-05b)
Google Colab Pro (NVIDIA T4 GPU)
GROMACS 2023.3 compiled with CUDA acceleration (saved to Google Drive)
AmberTools 23 + ACPYPE (GAFF2 + AM1-BCC parametrisation)

### Local (WSL2 Ubuntu, Notebooks 06-07)
conda env: mmpbsa (Python 3.10)
gromacs==2025.4         ambertools==23          gmx_mmpbsa==1.6.5
parmed==4.3.1           mpi4py==4.0.1
conda env: admet (Python 3.10)
admet-ai==1.4.0         rdkit                   torch
chemprop

---

## Reproducibility

All notebooks run sequentially. Each begins with explicit path definitions and produces output files consumed by the next stage. The random seed `SEED = 42` is used throughout.

Several implementation decisions required careful debugging and are documented here to prevent silent errors:

- Morgan fingerprints must use `AllChem.GetMorganGenerator(radius=2, fpSize=2048)`. The legacy `GetMorganFingerprintAsBitVect` API is deprecated.
- African NP flagging uses the COCONUT `collections` field with a substring match for `"AfroDB"`, not a cross-match against a separate SDF file.
- AutoDock Vina 1.2.5 has no `--log` flag. Scores are parsed directly from `result.stdout`.
- The docking box centre (28.0, 6.1, 59.8) was derived from the WRA heavy atom centroid in the original 1J3I deposited coordinates. Literature values from earlier studies used a different crystal frame and are incorrect for this receptor preparation.
- GROMACS NPT equilibration requires the Berendsen barostat. The Parrinello-Rahman barostat causes catastrophic box expansion with GAFF2 ligand topologies during equilibration. Parrinello-Rahman is used only for production MD.
- `gmx solvate` must receive explicit `-box` dimensions from the complex GRO file. Omitting this expands the box to unphysical dimensions (~350 nm).
- MDAnalysis time axis from chunked XTC concatenation must be rebuilt manually: `np.arange(n_frames) * dt_ns`.
- PyMOL open-source on Windows exits immediately on script errors. Representative frames were exported as individual PDB files via MDAnalysis rather than using `load_traj` with TPR files.
- WSL2 with a dedicated conda environment is required for gmx_MMPBSA; native Windows conda does not reliably resolve AmberTools or GROMACS builds.
- `pip install gmx_MMPBSA` will attempt to build `mpi4py` from source and fail unless the exact pinned version (`mpi4py==4.0.1`) is installed via conda-forge first.
- gmx_MMPBSA's default PDB-based receptor reconstruction inserts a spurious chain terminus at residue numbering discontinuities that reflect construct-numbering conventions (such as the 85 to 96 jump in 1J3I) rather than true chain breaks. This is avoided by supplying gmx_MMPBSA with the original GROMACS complex topology directly via its external topology interface (`-cp`), rather than allowing it to rebuild the topology from a re-exported PDB structure.
- The ligand moleculetype name inside the ACPYPE-generated `.itp` file must exactly match the name used in the topology's `[ molecules ]` section (renamed to `LIG`) or ParmEd will fail to parse the combined topology.
- Interaction entropy reliability follows the sigma thresholds established by Ekberg and Ryde (2021): estimates are considered reliable below approximately 15 kJ/mol and unreliable above 25 kJ/mol. All four systems in this study exceeded 25 kJ/mol, so entropy-corrected free energy is reported with explicit caution and binding enthalpy is used as the primary comparative measure.

---

## Publication Plan

| Paper | Content | Target Journal | Status |
|-------|---------|---------------|--------|
| Paper 1 | Integrated QSAR modeling, virtual screening, molecular docking, and 100 ns molecular dynamics study identifying three African natural product hits against pyrimethamine-resistant PfDHFR | PLOS Computational Biology | In preparation |
| Paper 2 | MM-PBSA/MM-GBSA binding free energy calculation, per-residue energy decomposition, and ADMET profiling of the three lead compounds identified in Paper 1 | PLOS Computational Biology | In preparation |

This project was originally scoped as three separate manuscripts (QSAR, docking, and molecular dynamics as independent papers). During manuscript preparation these were consolidated into a single integrated study, reflected in Paper 1 above, with binding free energy and ADMET profiling developed as a focused companion manuscript rather than a third standalone paper.

---

## Author

**Odoh Kenneth Chidiebere**

B.Sc. Chemistry (First Class Honours), AFIT Kaduna. Best Graduating Student, Department of Chemistry and Faculty of Science. Graduate Assistant Lecturer, Department of Chemistry, AFIT Kaduna. Currently pursuing an MSc in Chemistry at AFIT.

[![GitHub](https://img.shields.io/badge/GitHub-KennethOdoh157-black?logo=github)](https://github.com/KennethOdoh157)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-kennethodoh-blue?logo=linkedin)](https://linkedin.com/in/kennethodoh)

---

*All software used in this project is open-source. Molecular dynamics compute resources were provided by Google Colab Pro. Binding free energy and ADMET compute resources were provided by a local workstation running Windows Subsystem for Linux 2. This pipeline was developed as an independent research project targeting peer-reviewed publication in computational drug discovery.*
