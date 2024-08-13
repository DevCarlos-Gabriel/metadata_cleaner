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
2. **Execute o script**:
    ```sh
    ./metadata_cleaner.sh
    ```

# Exemplo de uso 📋

Ao executar o script, primeiro ele verifica se o sistema já tem instalado a ferramenta exiftool, caso não esteja, o código tenta identificar a distro e instalar o exiftool, depois irá percorrer todas as imagens no diretório especificado e limpar os metadados das imagens JPEG, JPG e PNG.

## Limpando metadados de uma imagem 🧹

1. Adicione imagens ao diretório `img`, ou se você achar melhor, modifique a variável `dir` para o diretório que você quiser;
2. Exectute o script e espere os arquivos serem limpos;
3. Por fim, se você der um `ls` dentro da pastas das imagens:

   ```sh
   imagem.jpg imagem.jpg_original
   ```

   Você verá duas ou mais imagens (dependendo da quantidade de arquivos que o diretório tenha), a imagem com o nome original, contem todos os metadados, já o outro arquivo é limpo de todos aqueles que podem te identificar.

# Considerações Finais 📝

Contribuições são bem-vindas! Sinta-se à vontade para abrir um PR ou relatar problemas.

# Licença 📄

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](https://github.com/DevCarlos-Gabriel/metadata_cleaner/blob/main/LICENSE) para mais detalhes.
