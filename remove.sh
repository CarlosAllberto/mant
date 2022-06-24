#!/usr/bin/bash

echo "
qual seu sistema:
1 - Derivado do Debian ou Arch
2 - Termux
"
read -p "opcao: " opc

if [ $opc == 1 ]
    then
        rm -rf /usr/bin/mant
fi

if [ $opc == 2 ]
    then
        rm -rf /data/data/com.termux/files/usr/bin/mant
fi

echo "MANT DESINSTALADO..."
echo ""

