#!/bin/bash
set -e
# conda env create -f environment_myconda.yml
ln -s $HOME/anaconda3/envs/myconda/bin/x86_64-conda-linux-gnu-gcc $HOME/anaconda3/envs/myconda/bin/gcc
ln -s $HOME/anaconda3/envs/myconda/bin/x86_64-conda-linux-gnu-g++ $HOME/anaconda3/envs/myconda/bin/g++
echo 'conda activate myconda' >> ~/.bashrc
source ~/.bashrc
# npm install -g typescript
# npm install -g @vue/cli
# conda env update -f environment.yml