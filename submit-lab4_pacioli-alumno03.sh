#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno03/practica3/lab-git
#SBATCH -J submit_lab_pacioli-1-alumno03
#SBATCH --cpus-per-task=4
#SBATCH --output=/home/alumno03/practica3/lab-git/slurm-j%.out

for i in *.fastq
do
  total_lineas=$(wc -l < "$i")
  tercio=$((total_lineas / 3))
  head -n "$tercio" "$i" > "${i%.fastq}_cortado.fastq"
  echo "Archivo procesado: $i -> ${i%.fastq}_cortado.fastq"
done


