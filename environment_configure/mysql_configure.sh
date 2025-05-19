#!/bin/bash
set -e
echo "[mysqld]" >> /home/crey/anaconda3/envs/myconda/etc/my.cnf
echo "datadir=/home/crey/anaconda3/envs/myconda/data" >> /home/crey/anaconda3/envs/myconda/etc/my.cnf
mkdir -p /home/crey/anaconda3/envs/myconda/data
# 执行后会出现临时密码
conda run -n myconda mysqld --initialize --user=mysql --basedir=/home/crey/anaconda3/envs/myconda --datadir=/home/crey/anaconda3/envs/myconda/data
# hme6(Ekleyk<
conda run -n myconda mysql.server start &
# 重设密码
ALTER USER 'root'@'localhost' IDENTIFIED BY 'crey199854';