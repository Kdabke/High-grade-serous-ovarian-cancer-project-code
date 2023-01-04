#!/bin/bash
#
#$ -cwd
#$ -pe smp 6
#$ -l mem_free=20G
#$ -S /bin/bash
#$ -e /common/bermanblab/data/private_data/POC_ROC/POC_ROC_RNA-Seq/TCR_RNA_seq/MiXCR/scratch
#$ -o /common/bermanblab/data/private_data/POC_ROC/POC_ROC_RNA-Seq/TCR_RNA_seq/MiXCR/scratch



module load java

INDIR="/common/bermanblab/data/private_data/POC_ROC/coetzeesg_pocroc"
INFILE1="${INDIR}/$1"
INFILE2="${INDIR}/$2"
OUTPUT=$3

/home/dabkek/apps/mixcr-3.0.13/mixcr analyze shotgun \
        --species hs \
        --starting-material rna \
        --only-productive \
	${INFILE1} ${INFILE2} ${OUTPUT}
  
