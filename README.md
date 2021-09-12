# To test ABCI batch job scripts

1. make singularity file (.sif) from docker .tar file
```
export dokimage=$HOME/local/docker_images/hitoshi_python_dl_101_ubuntu1804_F22T17_v2.tar
export sifimage=$HOME/local/sif_images/hitoshi_python_dl_101_ubuntu1804_F22T17_v2.sif

module load singularitypro/3.7
singularity build $sifimage docker-archive://$dokimage

e.g. 
singularity build hitoshi_allinone.sif docker-archive://hitoshi_allinone_latest.tar

```

2. you can use singularity image as like test_singularity_pytorch.sh
```
export sifimage=$HOME/local/sif_images/hitoshi_python_dl_101_ubuntu1804_F22T17_v2.sif
sifpython () {
    singularity run --nv $sifimage python $1
}
sifpython test_pytorch_gpu.py
```

3. You can submit scripts to calculation server. For example, 
```
bash submit_job.sh gpu_connection/test_singularity_pytorch.sh
bash submit_job.sh  gpu_connection/test_myenv_pytorch.sh
```

if you get output file such as test_myenv_pytorch.sh.o7246117 and it contains True, your abci job was successfully validated in calculation server.