#!/bin/bash

blue='\e[44m'
red='\e[41m'
green='\e[42m'
mag='\e[45m'
end='\e[0m'


echo "*******************"
echo -e "*${red}Os-Release Sonucu${end}*"
echo "*******************"
cat /etc/os-release | grep VERSION 


echo "********************"
echo -e "*${blue}Lsb_Release Sonucu${end}*"
echo "********************"
lsb_release -a

echo "********************"
echo -e "*${mag}Hostnamectl Sonucu${end}*"
echo "********************"
hostnamectl

echo "***********************"
echo -e "*${green}Linux Çekirdek Sürümü${end}*"
echo "***********************"
uname -r
echo "***********************"
echo -ne "Update yapılsı mı ? y/n "
read secim

if [ $secim = "y" ]

then
sleep 1s
echo "Güncellemeye yapılıyor..."
sleep 2s
apt-get update && apt-get upgrade -y

else
	sleep 0.5s
	echo "Bye..."
	sleep 0.5s
fi
