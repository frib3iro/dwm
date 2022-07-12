#!/usr/bin/env bash

# variaveis
b='\e[34;1m'
g='\e[32;1m'
r='\e[31;1m'
y='\e[33;1m'
f='\e[m'
s='\e[32;1m>>>\e[m'

# Lista de pacotes para instalar com o yay
listayay=(tumbler-extra-thumbnailers lightdm lightdm-gtk-greeter lightdm-slick-greeter 4kvideodownloader cava consolas-font crunch debtap downgrade google-chrome mintstick mint-y-icons onedriver pyrit sardi-icons spotify timeshift ttf-ms-fonts ttf-ubuntu-font-family xcursor-breeze)

# Instalando o yay
echo
echo -e "${s} ${b}Instalando o yay...${f}"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

# Instalando pacotes com o yay
echo
echo -e "${s} ${b}Instalando pacotes com yay...${f}"
for i in ${listayay[@]}
do
    echo
    echo -e "${s} ${b}Instalando o pacote $i ${f}"
    if yay -S $i --noconfirm; then
        echo -e "${s} ${g}Pacote $i instalado com sucesso!${f}"
    else
        echo -e "${s} ${r}Houve erro na instalação do pacote $i!${f}"
    fi
done

cd /home/fabio && rm -rf go yay
