#!/bin/bash
#$ -l rt_G.small=1
#$ -l h_rt=12:00:00
#$ -j y
#$ -cwd

source /etc/profile.d/modules.sh
module load gcc/7.4.0
module load python/3.8/3.8.2
source ~/myenv/bin/activate
python myscript.py
