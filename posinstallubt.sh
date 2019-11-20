#!/bin/bash

## Shell Script: Configuração Ubuntu ##

## Remover travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizar o repositório ##

sudo apt update && 

## Instalar pacotes e programas do repositório deb do Ubuntu ##

sudo apt install python3 python-pip wine nautilus-dropbox docker docker-compose git build-essential libssl-dev -y &&


## Instalar pacotes Snap ##

sudo apt install snapd -y

sudo snap install slack --classic &&  
sudo snap install skype --classic &&  
sudo snap install code --classic &&  
sudo snap install --edge node --classic && 
sudo snap install postbird &&
sudo snap install insomnia &&  
sudo snap install spotify &&
sudo snap install wps-office-multilang && 

## Adicionar repositório Flathub ##

sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && 

## Instalar Apps do Flathub ##

sudo flatpak install flathub com.obsproject.Studio -y &&
sudo flatpak install flathub com.sublimetext.three -y &&
sudo flatpak install flathub org.inkscape.Inkscape -y &&
 

## Softwares que precisam de download externo ##

mkdir /home/$USER/Downloads/programas

cd /home/$USER/Downloads/programas

## Baixar Chrome ##
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

## Baixar Bloco de notas - Simplenote ##
wget -c https://github.com/Automattic/simplenote-electron/releases/downloads/v1.10.0/Simplenote-linux-1.10.0-amd64.deb

## Instalar os arquivos que termina com .deb ##
sudo dpgk -i *.deb -y

## Programas do repositório ##
sudo apt-add-repository ppa:graphics-drivers/ppa -y

sudo apt install ubuntu-restricted-extras -y

sudo apt install winff -y

sudo apt install guvcview -y

sudo apt install virtualbox -y

sudo apt install flameshot -y

sudo apt install steam-installer steam-devices steam:i386 -y

sudo apt install ratbagd -y

sudo apt-add-repository ppa:libratbag-piper/piper-libratbag-git && sudo apt update && sudo apt install piper -y

##GIMP e PhotoGIMP by Diolinux ##

flatpak install flathub org.gimp.GIMP -y && wget -c https://doc-0s-1g-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/0v83rmt4mij9897co9ufvor2r1jcj1am/1567965600000/07452089978596344616/*/12i-ihCDSZelx30-oNHJaKAzUei1etsbS?e=download && unzip 12i-ihCDSZelx30-oNHJaKAzUei1etsbS?e=download && cd "PHOTOGIMP V2018 - DIOLINUX" && cd "PATCH" && mkdir -p /home/$USER/.var/app/org.gimp.GIMP/config/GIMP/2.10/ && cp -R * /home/$USER/.var/app/org.gimp.GIMP/config/GIMP/2.10/ &&

## Lutris e Wine ##
sudo add-apt-repository ppa:lutris-team/lutris

sudo apt update

sudo apt install lutris -y

sudo dpkg --add-architecture i386

wget -nc https://dl.winehq.org/wine-builds/winehq.key

sudo apt-key add winehq.key

sudo apt update

sudo apt install --install-recommends winehq-stable

sudo apt install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libsqlite3-0:i386

## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"