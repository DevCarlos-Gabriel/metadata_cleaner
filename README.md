# Script para Limpeza de Metadados de Imagens 🖼️

Este projeto é um script simples em bash para limpar todos os metadados das imagens presentes em um diretório especificado. O script usa a ferramenta `exiftool` para remover os metadados de imagens nos formatos JPEG, JPG e PNG.

# Funcionalidades ✨

- **Limpeza de Metadados**: Remove todos os metadados das imagens em um diretório especificado.

# Como Usar 🚀

1. **Clone o repositório**:
    ```sh
    git clone https://github.com/DevCarlos-Gabriel/metadata_cleaner.git metadata_cleaner
    cd metadata_cleaner
    ```
    
2. **Certifique-se de que `exiftool` está instalado:**:

   Para sistemas baseados em `Debian`:
    ```sh
    sudo apt-get install exiftool
    ```
    
    Para sistemas baseados em `Red Hat`:
    ```sh
    sudo yum install exiftool
    ```
    
3. **Execute o script**:
    ```sh
    ./metadata_cleaner.sh
    ```

# Exemplo de uso 📋

Ao executar o script, ele irá percorrer todas as imagens no diretório especificado e limpar os metadados das imagens JPEG, JPG e PNG.

## Limpando metadados de uma imagem 🧹

1. Adicione imagens ao diretório `img`, ou se você achar melhor, modifique a variável `dir` para o diretório que você quiser;
2. Exectute o script e espere os arquivos serem limpos;
3. Por fim, se você der um `ls` dentro da pastas das imagens:

   ```sh
   imagem.jpg imagem.jpg_original
   ```

   Você verá duas ou mais imagens (dependendo da quantidade de arquivos que o diretório tenha), a imagem com o nome original, contem todos os metadados, já o outro arquivo é limpo de todos aqueles que podem te identificar.

# Estrutura do Código 📂

```sh
dir="img"

for img in "$dir"/*; do
   if [[ $img == *.jpg || $img == *.jpeg || $img == *.png ]]; then
      exiftool -all= $img
      echo "Os metadados da imagem $img foram limpos!"
   fi
done
```

## O código é estruturado da seguinte forma:

1. Variável `dir`: Define o diretório contendo as imagens;
2. Laço `for`: Percorre todas as imagens no diretório especificado;
3. Condição `if`: Verifica se o arquivo é uma imagem `JPEG`, `JPG` ou `PNG`;
4. Comando `exiftool`: Limpa os metadados da imagem;
5. Mensagem de confirmação: Informa ao usuário que os metadados da imagem foram limpos.

# Considerações Finais 📝

Contribuições são bem-vindas! Sinta-se à vontade para abrir um PR ou relatar problemas.

# Licença 📄

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](https://github.com/DevCarlos-Gabriel/metadata_cleaner/blob/main/LICENSE) para mais detalhes.
