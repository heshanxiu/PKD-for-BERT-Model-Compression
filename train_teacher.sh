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


source activate /home/she2/.conda/envs/ir
CUDA_VISIBLE_DEVICES=0 nohup python -u NLI_KD_training.py > finetune_teacher.txt &
