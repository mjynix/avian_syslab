# 🧪 How to Run the Temporal Data Processing Pipelines

This repository contains two scripts for processing and visualizing temporal and spatial sequencing data:

- `singulardemix.sh` — variant calling and deconvolution using Freyja
- `map.sh` — geospatial mapping of sample locations

---

## 🛠️ 1. Prerequisites

Install the required tools and Python libraries:

# System dependencies
sudo apt update
sudo apt install -y samtools minimap2 python3-pip

# Python libraries
pip install pandas geopandas matplotlib contextily shapely

## Processing: 

For singulardemix.sh:

Place your .fastq.gz file (e.g., DRR458345.fastq.gz) and referenceseq.fasta in the working directory.

Optional: include a barcode for labeled lineage deconvolution.

Ensure sample reads are high quality and reference genomes are indexed.

For map.sh:

Provide a metadata file with columns: Latitude, Longitude, and an index (sample IDs).

Metadata must align with sample IDs and include consistent, labeled fields.


