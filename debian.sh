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
source variaveis.sh
clear
# Tela de boas vindas
echo -e "${S} ${B}Bem vindo a instalação do bspwm${F}"
sleep 1s
clear

# Por padrão, o sudo não está instalado no Debian, mas você pode instalá-lo. Primeiro ative o modo su:

su -

# Instale o sudo executando:

apt-get install sudo -y

# Depois disso, você precisaria brincar com usuários e permissões. Dê o sudo diretamente ao seu próprio usuário.

usermod -aG sudo yourusername

# Verifique se o arquivo sudoers foi adicionado ao grupo sudo. Execute: visudo para modificar o arquivo sudoers e adicione a seguinte linha (se estiver faltando):

# Allow members of group sudo to execute any command

%sudo   ALL=(ALL:ALL) ALL

# Você precisa se conectar ou reiniciar completamente o dispositivo para que as alterações entrem em vigor.

xdg-user-dirs xdg-utils

xdg-user-dirs-update

sudo apt install xorg build-essential cmake firefox-esr-l10n-pt-br xfce4-terminal xfonts-terminus rofi dunst -y

sudo dpkg-reconfigure -plow console-setup
