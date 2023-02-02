#!/usr/bin/bash

chmod +x ./mant

echo "
qual seu sistema:
1 - Derivado do Debian
2 - Derivado do Arch
3 - Termux
"

read -p "opcao: " opc

echo ""
echo "INSTALANDO DEPENDENCIAS..."
echo ""

if [ $opc == 1 ]
    then
        sudo apt install python3 -y
        sudo apt install python3-pip -y
        pip install googletrans==3.1.0a0
        pip install colorama
        pip install PyPDF2
        pip install fpdf
        sudo cp ./mant /usr/bin
        mkdir fonts ~/.local/lib/python*/**/fpdf/
        cp ./SpaceMono-Regular.ttf ~/.local/lib/python*/**/fpdf/fonts/
        echo "INSTALADO EM /usr/bin"
fi

if [ $opc == 2 ]
    then
        sudo pacman -S python
        sudo pacman -S python-pip
        pip install googletrans==3.1.0a0
        pip install colorama
        pip install PyPDF2
        pip install fpdf
        sudo cp ./mant /usr/bin
        mkdir fonts ~/.local/lib/python*/**/fpdf/
        cp ./SpaceMono-Regular.ttf ~/.local/lib/python*/**/fpdf/fonts/
        echo "INSTALADO EM /usr/bin"
fi

if [ $opc == 3 ]
    then
        apt install python -y
        pip install googletrans==3.1.0a0
        pip install colorama
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
