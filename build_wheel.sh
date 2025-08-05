#!/bin/bash

git clone https://github.com/haotang1995/my_vllm.git
cd my_vllm
git checkout $1 
export TORCH_CUDA_ARCH_LIST="7.0;7.5;8.0;8.6;8.9;9.0+PTX" 
export MAX_JOBS=8
python setup.py bdist_wheel  -d $2

