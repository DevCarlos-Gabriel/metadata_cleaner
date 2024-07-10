#!/bin/bash

dir="img"

for img in "$dir"/*; do
   if [[ $img == *.jpg || $img == *.jpeg || $img == *.png ]]; then
   
   exiftool -all= $img
   
   echo "Os metadados da imagem já foram limpos!"
   fi
done
