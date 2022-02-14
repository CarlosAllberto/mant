#!/usr/bin/zsh

echo ""
echo "\e[0;32mINSTALANDO DEPENDENCIAS...\e[m"
echo ""

apt install python3
pip install googletrans==3.1.0a0
pip install colorama

echo ""
echo "\e[0;32mMOVENDO MANT PARA /usr/bin\e[m"
echo ""

chmod +x ./mant
cp ./mant /usr/bin

echo ""
echo ""
echo "\e[0;32m-- MANT INSTALADO --"
echo ""
echo "PARA RODAR DIGITE:"
echo "  mant ls -h"
echo ""
echo "PARA VER O HEP DIGITE:"
echo "  mant -H\e[m"
echo ""
