# Avian Influenza Analysis Pipeline

This is a final report on how to run the script for my final project. 

My project investigates the evolutionary spread and variants of avian influenza using environmental and wastewater samples. By applying phylogenetic tools to previously under-analyzed datasets, I aim to look into how avian influenza evolves and spreads geographically and temporally. 

# About This Pipeline
The pipeline is designed to process raw sequencing data (FASTA/FASTQ), align sequences, perform variant calling and lineage deconvolution (via Freyja), generate maximum-likelihood phylogenetic trees (via IQTree and TreeTime), and visualize data through time-series and geospatial plots. It is built for exploratory research and is not intended for clinical or diagnostic use. Original directions were provided to me by mentors.

# Disclaimer
I do not claim ownership of any external packages used in this project. All software and datasets used are the property of their respective creators. This repository is an educational and research-based implementation for non-commercial academic purposes.

# Abstract: 
To investigate the spread and evolution of avian influenza, I constructed a time-calibrated maximum likelihood phylogenetic tree and generated a geospatial case distribution map from 2018–2023. I applied Freyja, which was originally used for mixed SARS-CoV-2 wastewater analysis, to avian influenza environmental samples, revealing evolving viral lineages at low concentrations. These findings indicate potential reassortment and zoonotic spillover risks. Using GISAID sequences and EMPRES-i outbreak data, I visualized regional spread via migration routes and environmental spots. This approach highlights the potential of environmental surveillance for early detection, offering a cost-effective method for monitoring viral evolution and public health threats.

