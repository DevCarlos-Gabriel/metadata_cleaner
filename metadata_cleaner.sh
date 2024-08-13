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

# Instalando ferramentas:
#============================================================

# Instalando exiftool:

if [[ -f /etc/os-release ]]
then

. /etc/os-release
fi

if ! type exiftool > /dev/null 2>&1
then
   echo "Instalando Exiftool, isso deve levar algum tempo..."

   #Verificando qual o tipo do sistema
   
text_default="Instalando Exiftool com "

   if command -v apt &> /dev/null
   then
      echo "$text_default apt"
      sudo apt-get install --reinstall -y libimage-exiftool-perl > /dev/null 2>&1
   elif command -v pacman &> /dev/null
   then
      echo "$text_default pacman"
      sudo pacman -S --noconfirm perl-image-exiftool > /dev/null 2>&1
   elif command -v dnf &> /dev/null
   then
      echo "$text_default dnf"
      sudo dnf install -y perl-Image-ExifTool > /dev/null 2>&1
   elif command -v zypper &> /dev/null
   then
      echo "$text_default zypper"
      sudo zypper install -y exiftool > /dev/null 2>&1
   else
      echo "Erro: Nenhum gerenciador de pacotes encontrado!"
      exit 1
   fi

   echo "Prosseguindo para a proxima etapa..."

   sleep 2s
fi
#============================================================

# limpando metadados da(s) imagem(ns)
#============================================================
echo -e "Limpando metadados...\n"

dir="img"

for img in "$dir"/*; do
   if [[ $img == *.jpg || $img == *.jpeg || $img == *.png ]]; then
   
   exiftool -all= $img
   
   echo -e "\nOs metadados da imagem já foram limpos!"
   fi
done
#============================================================