#!/bin/bash
#$ -l rt_G.small=1
#$ -l h_rt=12:00:00
#$ -j y
#$ -cwd

source /etc/profile.d/modules.sh
module load singularitypro/3.5

# This doesn't work. $SGE_LOCALDIR becomes /local/4626165.1.gpu on calculation server.
# export sifimage=$SGE_LOCALDIR/local/sif_images/hitoshi_python_dl_101_ubuntu1804_F22T17_v2.sif
export sifimage=$HOME/local/sif_images/hitoshi_python_dl_101_ubuntu1804_F22T17_v2.sif
sifpython () {
    singularity run --nv $sifimage python $1
}

sifpython test_pytorch_gpu.py
