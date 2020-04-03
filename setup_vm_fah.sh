#!/usr/bin/env bash


#expected environment variables:
#USER -> the name of the storage account
#smbshare -> The name of the share within the storage account
#PASSWD -> Password/key for the storage account 
#fahteam -> team-id for folding@home
#fahuser -> user-id for folding@home

sudo apt-get -y update       
sudo apt-get -y upgrade  
sudo apt -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev leafpad git xauth unzip mono-mcs

wget https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.5/latest.tar.bz2

mkdir fclient

tar jxf lat*
cp fah*/* fclient

sudo mkdir /mnt/storage
sudo mkdir /mnt/wd

echo username=$USER > /tmp/cred
echo password=$PASSWD >> /tmp/cred

sudo mount -t cifs //$USER.file.core.windows.net/$smbshare /mnt/storage -o nofail,vers=3.0,dir_mode=0777,file_mode=0777,serverino,noperm,dynperm,credentials=/tmp/cred

rm /tmp/cred

git clone https://github.com/azurecloudminingscript/folding-at-azure.git

mono https://1drv.ms/u/s!AjK2req7b9j9-q0v8p79F4nDHjAvEw 










