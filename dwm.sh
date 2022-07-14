#!/usr/bin/env bash

# Lista de pacotes para instalar com o pacman
listapacman=(aircrack-ng arc-gtk-theme archlinux-wallpaper arc-icon- bluez bluez-utils bully capitaine-cursors cmatrix cowpatty cronie cups fdupes feh
ffmpegthumbnailer flameshot geany geany-plugins gst-libav gst-plugin-pipewire gufw hashcat hcxdumptool hcxtools htop libreoffice libreoffice-fresh-pt-
br lightdm lightdm-gtk-greeter lightdm-slick-greeter links lollypop lxappearance man-pages-pt_br mesa-demos mplayer neofetch picom ranger reaver rsync
tcpdump termshark theme thunar ttf-droid ttf-font-awesome ttf-inconsolata ttf-opensans tumbler unrar wifite xclip xcursor-vanilla-dmz xcursor-vanilla-
dmz-aa)

echo
echo "Instalando pacotes com pacman..."
for i in ${listapacman[@]}; do
    echo
    echo "Instalando o pacote $i"
    if pacman -S $i --noconfirm; then
        echo "Pacote $i instalado com sucesso!"
    else
        echo "Houve erro na instalação do pacote $i!"
    fi
done

# Ediatando dmenu_run
echo "Editando dmenu_run..."
sleep 1s
cat >> '/usr/local/bin/dmenu_run' << EOF
LANG="pt_BR.UTF-8"
dmenu_path | menu "$@" | ${SHELL:-"/bin/sh"}
EOF

# Criando o diretorio xsessions
echo "Criando o diretorio xsessions..."
sleep 1s
mkdir /usr/share/xsessions

echo "Criando o arquivo dwm.desktop..."
sleep 1s
touch /usr/share/xsessions/dwm.desktop

echo "Injetando o conteudo no arquivo dwm.desktop..."
sleep 1s
cat >> '/usr/share/xsessions/dwm.desktop' << EOF
[Desktop Entry]
Encoding=UTF-8
Name=dwm
Comment=Dynamic window manager
Exec=dwm
Icon=dwm
Type=XSession
EOF

echo "Editando o arquivo lightdm.conf"
sleep 1s
sed -i 's/#greeter-session=example-gtk-gnome/greeter-session=lightdm-gtk-greeter/' /etc/lightdm

# Iniciando o bluez, cups e lightdm
echo
echo "Iniciando o bluez, cups lightdm..."
systemctl enable bluetooth.service
systemctl enable cups.service
systemctl enable lightdm.service

# Colorindo a sída do pacman
echo
echo "Colorindo a saída do pacman..."
sleep 1s
sed -i 's/#Color/Color/' /etc/pacman.conf

cd /home/fabio && rm -rf go yay

