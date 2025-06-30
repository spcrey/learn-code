#!/bin/bash
set -e
echo "[mysqld]" >> $HOME/anaconda3/envs/myconda/etc/my.cnf
echo "datadir=$HOME/anaconda3/envs/myconda/data" >> $HOME/anaconda3/envs/myconda/etc/my.cnf
mkdir -p $HOME/anaconda3/envs/myconda/data
# 执行后会出现临时密码
conda run -n myconda mysqld --initialize --user=mysql --basedir=$HOME/anaconda3/envs/myconda --datadir=$HOME/anaconda3/envs/myconda/data
# n&ah_wGq2#)
conda run -n myconda mysql.server start &
mysql -u root -p
# 重设密码
ALTER USER 'root'@'localhost' IDENTIFIED BY 'crey199854';