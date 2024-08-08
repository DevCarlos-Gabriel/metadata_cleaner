#!/bin/bash

# Testes do programa:
#============================================================

# Testando se temos conexão com a internet:

if ! wget -q --spider www.google.com
then
   echo "Erro! Sem conexão com a internet!"
   exit 1
fi

# Testando se o usuário é root:

if [[ $UID -ne "0" ]]
then
   echo "Erro: execute o script como ROOT"
   exit 1
fi

#============================================================

# Instalando ferramentas:
#============================================================

# Instalando exiftool:
if ! type exiftool > /dev/null 2>&1
then
   echo "Instalando Exiftool, isso deve levar algum tempo..."

   sudo apt-get install --reinstall libimage-exiftool-perl > /dev/null 2>&1

   echo "Prosseguindo para a proxima etapa..."

   sleep 2s
fi
#============================================================

echo -e "Limpando metadados...\n"

dir="img"

for img in "$dir"/*; do
   if [[ $img == *.jpg || $img == *.jpeg || $img == *.png ]]; then
   
   exiftool -all= $img
   
   echo -e "\nOs metadados da imagem já foram limpos!"
   fi
done
