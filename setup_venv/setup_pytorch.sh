#module load python/3.8/3.8.2 cuda/10.1/10.1.243 cudnn/7.6/7.6.5
module load python/3.6/3.6.5 cuda/10.1/10.1.243 cudnn/7.6/7.6.5 nccl/2.5/2.5.6-1 openmpi/2.1.6 gcc/7.4.0

#python3 -m venv ~/venv/pytorch
source ~/venv/pytorch/bin/activate

pip3 install --upgrade pip setuptools
pip3 install wheel
pip3 install torch==1.7.1+cu101 torchvision==0.8.2+cu101 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html
HOROVOD_WITH_PYTORCH=1 HOROVOD_GPU_OPERATIONS=NCCL HOROVOD_NCCL_HOME=$NCCL_HOME pip3 install --no-cache-dir horovod

#pip3 install -r requirements.txt
