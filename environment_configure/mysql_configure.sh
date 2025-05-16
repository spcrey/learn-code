#!/bin/bash
set -e
echo "[mysqld]" >> /home/crey/develop/anaconda3/envs/myconda/etc/my.cnf
echo "datadir=/home/crey/develop/anaconda3/envs/myconda/data" >> /home/crey/develop/anaconda3/envs/myconda/etc/my.cnf
mkdir -p /home/crey/develop/anaconda3/envs/myconda/data
# 执行后会出现临时密码
conda run -n myconda mysqld --initialize --user=mysql --basedir=/home/crey/develop/anaconda3/envs/myconda --datadir=/home/crey/develop/anaconda3/envs/myconda/data
conda run -n myconda mysql.server start &