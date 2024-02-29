#!/bin/bash
#SBATCH --job-name=data_push_to_git
#SBATCH --output=/home/csci5541/pyo00005/data_push_output.out
#SBATCH --time=1:00:00
#SBATCH -p agsmall
#SBATCH --ntasks=1
#SBATCH --mem=1g
#SBATCH --mail-type=None
#SBATCH --mail-user=pyo00005@umn.edu

cd /home/csci5541/pyo00005/NLP_A3
git pull --rebase
git add .
git commit -m "Pushing current status onto git"
git push
