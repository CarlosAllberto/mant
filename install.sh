#!/usr/bin/bash

echo ""
echo "INSTALANDO DEPENDENCIAS..."
echo ""

apt install python3
pip install googletrans==3.1.0a0
pip install colorama

echo ""
echo "INSTALANDO O MANT"
echo ""

chmod +x ./mant

echo "
qual seu sistema:
1 - derivado do debian
2 - termux
"

read -p "opcao: " opc

if [ $opc == 1 ]
    then
        cp ./mant /usr/bin
        echo "INSTALADO EM /usr/bin"
fi

if [ $opc == 2 ]
    then
        cp ./mant /data/data/com.termux/files/usr/bin
        echo "INSTALADO EM /data/data/com.termux/files/usr/bin"
fi

echo ""
echo ""
echo "-- MANT INSTALADO --"
echo ""
echo "PARA RODAR DIGITE:"
echo "  mant ls -h"
echo ""
echo "PARA VER O HELP DIGITE:"
echo "  mant -H"
echo ""
