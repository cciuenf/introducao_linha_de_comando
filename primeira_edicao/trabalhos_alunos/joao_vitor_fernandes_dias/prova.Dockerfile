#   adiciona a imagem do ubuntu
FROM ubuntu:16.04
#   imprime a lista de arquivos e diretórios
RUN ls
#   imprime a data
RUN date
#   comando executado quando o container é executado
ENTRYPOINT ["echo","texto do echo"]
