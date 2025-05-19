#!/bin/bash
set -e
# url: https://www.anaconda.com/download/success
wget https://repo.anaconda.com/archive/Anaconda3-2024.10-1-Linux-x86_64.sh
bash Anaconda3-2024.10-1-Linux-x86_64.sh  -b
$HOME/anaconda3/bin/conda init
source ~/.bashrc
rm ./Anaconda3-2024.10-1-Linux-x86_64.sh
echo 'conda activate myconda' >> ~/.bashrc
