#!/usr/bin/bash

clear
echo ">>> Criando pasta arquivos..."
mkdir arquivos && cd arquivos

clear
echo ">>> Baixando dwm..."
sleep 1s
wget https://dl.suckless.org/dwm/dwm-6.3.tar.gz

clear
echo ">>> Baixando dmenu..."
sleep 1s
wget https://dl.suckless.org/tools/dmenu-5.1.tar.gz

clear
echo ">>> Baixando st..."
sleep 1s
wget https://dl.suckless.org/st/st-0.8.5.tar.gz

clear
echo ">>> Descompactando arquivos..."
sleep 1s
for i in *.gz; do
    tar -zxvf $i
    rm -rf $i
done

clear
echo "Criando o arquivo dwm.desktop..."
sleep 1s
cat > '/usr/share/xsessions/dwm.desktop' << EOF
[Desktop Entry]
Name=DWM
Comment=DWM
Exec=dwm
Icon=dwm
Type=XSession
EOF


