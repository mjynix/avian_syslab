baseName="DRR458345"
mkdir bams vars depths outputs

#rf
minimap2 -ax map-ont referenceseq.fasta DRR458345.fastq.gz | samtools view -bS - > "${baseName}.bam"

samtools sort -o "${baseName}.sorted.bam" "${baseName}.bam"
samtools index "${baseName}.sorted.bam"

freyja variants "${baseName}.sorted.bam" --variants "${baseName}.tsv" --depths "${baseName}.depth" --ref referenceseq.fasta
freyja variants "DRR458345.sorted.bam" --variants "DRR458345.tsv" --depths "DRR458345.depth" --ref referenceseq.fasta



freyja demix "${baseName}.tsv" "${baseName}.depth" --output "${baseName}.demixed" #--barcodes barcode_h5nx_gisaid.csv
freyja demix "DRR458345.tsv" "DRR458345.depth" --output "DRR458345.demixed" --barcodes barcode_h5nx_gisaid.csv

