#!/bin/bash
set -e
conda env create -f environment.yml
ln -s /home/crey/develop/anaconda3/envs/myconda/bin/x86_64-conda-linux-gnu-gcc /home/crey/develop/anaconda3/envs/myconda/bin/gcc
ln -s /home/crey/develop/anaconda3/envs/myconda/bin/x86_64-conda-linux-gnu-g++ /home/crey/develop/anaconda3/envs/myconda/bin/g++
npm install -g typescript
npm install -g @vue/cli
# conda env update -f environment.yml