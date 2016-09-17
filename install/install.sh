#!/bin/bash
mysql_root_passwd="passwd"
mysql_mikbill_passwd="passwd"

dir_root="/opt/mikbill"
dir_mysql="$dir_root/mysql"
dir_nginx="$dir_root/nginx"
dir_mikbill="$dir_root/mikbill"
dir_install="$dir_root/install"
#MySQL
dir_mysql_base="$dir_mysql/base"
#Nginx
dir_nginx_vhosts="$dir_nginx/vhosts"
dir_nginx_logs="$dir_nginx/logs"
#Mikbill
dir_mikbill_www="$dir_mikbill/www"

mkdir -p $dir_install
wget https://raw.githubusercontent.com/mikbill/distr/master/install/install.lib -O $dir_install/install.lib
source $dir_install/install.lib

# Создание каталогов
MKDIR
# Загрузка всех файлов
DOWNLOAD
# Установка контейнера Nginx
NGINX
# Установка контейнера MySQL
MYSQL
# Установка контейнера Mikbill
#MIKBILL

docker ps
