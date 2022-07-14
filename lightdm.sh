#!/bin/bash

clear

# Instalando o lightdm com slick-greeter
pacman -S lightdm lightdm-gtk-greeter lightdm-slick-greeter
sleep 2s
systemctl enable lightdm.service
sleep 2s

# Apos criar o arquivo slick-greeter.conf, apague todo o conteudo do arquivo e deixe somente as linhas abaixo.

#sudo touch slick-greeter.conf
#sudo echo > "[Greeter]" /etc/lightdm/slick-greeter.conf
#sudo echo >> "background=/usr/share/backgrounds/archlinux/wallpaper.jpg" /etc/lightdm/slick-greeter.conf

# Execute este comando para ter uma previa do lightdm
#dm-tool switch-to-greeter

# As root create a file like this:
echo "Criando o diretorio xsessions..."
sleep 2s
mkdir /usr/share/xsessions

echo "Criando o arquivo dwm.desktop..."
sleep 2s
touch /usr/share/xsessions/dwm.desktop

echo "Injetando o conteudo no arquivo dwm.desktop..."
sleep 2s
cat >> '/usr/share/xsessions/dwm.desktop' << EOF
[Desktop Entry]
Encoding=UTF-8
Name=dwm
Comment=Dynamic window manager
Exec=dwm
Icon=dwm
Type=XSession
EOF

