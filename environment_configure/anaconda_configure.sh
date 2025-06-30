#!/bin/bash
set -e
# url: https://www.anaconda.com/download
anaconda_file_name=Anaconda3-2025.06-0-Linux-x86_64.sh
conda_home=$HOME/anaconda3/bin/
wget https://repo.anaconda.com/archive/$anaconda_file_name
bash $anaconda_file_name  -b
rm $anaconda_file_name
$conda_home/conda env create -f environment_myconda.yml
$conda_home/conda init
echo 'conda activate myconda' >> ~/.bashrc
ln -s $HOME/anaconda3/envs/myconda/bin/x86_64-conda-linux-gnu-gcc $HOME/anaconda3/envs/myconda/bin/gcc
ln -s $HOME/anaconda3/envs/myconda/bin/x86_64-conda-linux-gnu-g++ $HOME/anaconda3/envs/myconda/bin/g++
$HOME/anaconda3/envs/myconda/bin/npm install -g typescript
$HOME/anaconda3/envs/myconda/bin/npm install -g @vue/cli
