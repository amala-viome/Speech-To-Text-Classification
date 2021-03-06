#!/bin/bash

#SBATCH --verbose
#SBATCH --nodes=1
#SBATCH --time=60:00:00
#SBATCH --mem=60GB
#SBATCH --job-name=bdml_project_speech
#SBATCH --mail-type=ALL
#SBATCH --mail-user=asd508@nyu.edu
#SBATCH --output=slurm_%j.out
#SBATCH --gres=gpu:1 -c1

module load anaconda3/5.3.1
source activate bdml
python run.py --datacleaning true --train_path ../speechdata/train/ --valid_path ../speechdata/valid/ --test_path ../speechdata/test/ --arc VGG11
