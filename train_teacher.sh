#!/bin/bash
#SBATCH -A csb180
#SBATCH --job-name="train_teacher"
#SBATCH --output="train_teacher.%j.%N.out"
#SBATCH --error="train_teacher.%j.%N.err"
#SBATCH --partition=gpu-shared
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --no-requeue
#SBATCH --gpus=1
#SBATCH -t 08:00:00

module load anaconda3
eval "$(conda shell.bash hook)"
conda activate /home/she2/anaconda3/envs/ir/

#/bin/bash -c "python -m rerank_eval_teacher"