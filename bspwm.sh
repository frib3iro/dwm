#!/usr/bin/env bash

# -------------------------------------------------------
# Licença : GNU/GPL v3.0
# Script : [bspwm.sh]
# Descrição :
# Versão : 0.1
# Autor : Fabio Junior Ribeiro <rib3iro@live.com>
# Data : 08/12/2020
# Licença : GNU/GPL v3.0
# -------------------------------------------------------
# Uso :
# -------------------------------------------------------
# variaveis ---------------------------------------------
R='\e[31;1m'
G='\e[32;1m'
B='\e[34;1m'
Y='\e[33;1m'
F='\e[m'
S='\e[32;1m::\e[m'
# -------------------------------------------------------
clear
# Tela de boas vindas
echo -e "${S} ${B}Bem vindo a instalação do bspwm${F}"
sleep 1s
clear

# Dependencies
echo -e "${S} ${B}Instalando as dependencias...${F}"
sleep 1s
sudo apt-get install libxcb-xinerama0-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-util0-dev libxcb-ewmh-dev libxcb-keysyms1-dev libxcb-shape0-dev
sleep 1s

# Building and Installing
echo -e "${S} ${B}Clonando repositórios e instalando...${F}"
sleep 1s
git clone https://github.com/baskerville/bspwm.git
sleep 1s
git clone https://github.com/baskerville/sxhkd.git
sleep 1s
cd bspwm && make && sudo make install
sleep 1s
cd ../sxhkd && make && sudo make install
sleep 1s

# Uninstalling

# cd bspwm && sudo make uninstall
# sleep 1s
# cd ../sxhkd && sudo make uninstall
# sleep 1s

# Running bspwm
echo -e "${S} ${B}Criando diretórios e copiando arquivos...${F}"
sleep 1s
mkdir -p ~/.config/{bspwm,sxhkd}
sleep 1s
cp /usr/local/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
sleep 1s
cp /usr/local/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
sleep 1s
chmod u+x ~/.config/bspwm/bspwmrc
sleep 1s

# vim /home/fabio/.xinitrc
echo -e "${S} ${B}Criando e editando o arquivo .xinitrc...${F}"
sleep 1s
echo "sxhkd &" >> /home/fabio/.xinitrc
sleep 1s
echo "exec bspwm" >> /home/fabio/.xinitrc

echo -e "${S} ${B}Instalando pacotes...${F}"
sleep 1s
sudo apt install xdg-user-dirs xdg-utils xorg build-essential cmake firefox-esr-l10n-pt-br xfce4-terminal xfonts-terminus compton feh rofi dunst -y

echo -e "${S} ${B}Criando pastas do usuário...${F}"
sleep 1s
xdg-user-dirs-update
# --------------------------------------------------------------------------

