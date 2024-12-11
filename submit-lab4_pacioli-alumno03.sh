#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno03/practica3/lab-git
#SBATCH -J submit_lab_pacioli-1-alumno03
#SBATCH --cpus-per-task=4
#SBATCH --output=/home/alumno03/practica3/lab-git/slurm-%j.out

#Llamar al script file-cut.sh
bash file-cut.sh


