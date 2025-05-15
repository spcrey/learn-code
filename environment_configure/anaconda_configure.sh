#!/bin/bash
set -e
# url: https://www.anaconda.com/download/success
wget https://repo.anaconda.com/archive/Anaconda3-2024.10-1-Linux-x86_64.sh
bash Anaconda3-2024.10-1-Linux-x86_64.sh -p "$(jq -r '.installPath' config.json | envsubst)/anaconda3" -b
source ~/.bashrc
rm ./Anaconda3-2024.10-1-Linux-x86_64.sh
echo 'export CONDA_HOME="/home/crey/develop/anaconda3"' >> ~/.bashrc
echo 'conda activate myconda' >> ~/.bashrc
