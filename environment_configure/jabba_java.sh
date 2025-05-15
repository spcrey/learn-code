#!/bin/bash
set -e
# https://github.com/shyiko/jabba
export JABBA_VERSION=0.11.2
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh
source ~/.bashrc
jabba install openjdk@1.17.0
jabba install openjdk@1.11.0
jabba alias default openjdk@1.17.0
