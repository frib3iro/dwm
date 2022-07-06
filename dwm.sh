#!/usr/bin/bash

clear

echo
echo ">>> Baixando dwm"
sleep 1s
wget https://dl.suckless.org/dwm/dwm-6.3.tar.gz

echo
echo ">>> Baixando dmenu"
sleep 1s
wget https://dl.suckless.org/tools/dmenu-5.1.tar.gz

echo
echo ">>> Baixando st"
sleep 1s
wget https://dl.suckless.org/st/st-0.8.5.tar.gz

echo
echo ">>> Descompactando arquivos"
sleep 1s
for i in *.gz; do
    tar -zxvf $i
    rm -rf $i
done
