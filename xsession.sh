#!/bin/bash

clear

# As root create a file like this:

echo -e "${s}${b}Criando o diretorio xsessions...${f}"
sleep 2s
mkdir /usr/share/xsessions

echo -e "${s}${b}Criando o arquivo dwm.desktop...${f}"
sleep 2s
touch /usr/share/xsessions/dwm.desktop

# with these permissions

# Mudando o layout do teclado no xorg
echo -e "${s}${b}Injetando o conteudo no arquivo dwm.desktop...${f}"
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

echo -e "${s}${b}Listando o arquivo dwm.desktop...${f}"
echo
echo -e "${s}${b}O arquivo dwm.desktop deve estar igual a esse...${f}"
echo "-rw-r--r-- 1 root root 108 Jun 27 17:24 /usr/share/xsessions/dwm.desktop"
echo
ls -l /usr/share/xsessions/dwm.desktop

