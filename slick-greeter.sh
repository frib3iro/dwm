#!/usr/bin/env bash

# Criando o arquivo slick-greeter.conf
echo "Criamdo o arquivo slick-greeter.conf"
touch /etc/lightdm/slick-greeter.conf
sleep 1s
cat >> '/etc/lightdm/slick-greeter.conf' << EOF
[Greeter]
background=/usr/share/backgrounds/archlinux/car02.jpg
EOF

echo "Editando o arquivo lightdm.conf"
sleep 1s
sed -i 's/#greeter-session=example-gtk-gnome/greeter-session=lightdm-slick-greeter/' /etc/lightdm



