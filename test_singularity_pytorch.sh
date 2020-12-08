#!/bin/bash
#$ -l rt_G.small=1
#$ -l h_rt=12:00:00
#$ -j y
#$ -cwd

source /etc/profile.d/modules.sh
module load singularitypro/3.5
# This doesn't work. $SGE_LOCALDIR becomes /local/4626165.1.gpu on calculation server.
#singularity run --nv $SGE_LOCALDIR/hitoshi_python_dl_101_ubuntu1804_F22T17_v2.sif python test_pytorch_gpu.py
singularity run --nv /home/acc12128xw/hitoshi_python_dl_101_ubuntu1804_F22T17_v2.sif python test_pytorch_gpu.py

