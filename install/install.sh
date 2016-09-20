#!/bin/bash
mysql_root_passwd="passwd"
mysql_mikbill_passwd="passwd"
# Где будут лежать рабочие конфиги/база
dir_root="/opt/cloud"
# Каталог для загрузки и с которого будет установка
dir_download="/opt/install"
# Загрузка библиотеки
mkdir $dir_download && wget -O $dir_download/install.lib https://raw.githubusercontent.com/mikbill/distr/master/install/install.lib
source $dir_download/install.lib

# install_docker

# Загрузка файлов
download (){
download_mysql
download_nginx
download_mikbill
download_radius
}
download
# Установка
install (){
install_mysql
install_nginx
install_mikbill
install_radius
}
install
# Загрузка скрипта для свободных обновлений
download_update_free
# Удаление установочных файлов
#install_clear

docker ps
