# Define a imagem base
FROM debian:latest

# Define o mantenedor da imagem
LABEL maintainer="Thiago"

# Atualiza a imagem com os pacotes
RUN apt-get update && apt-get upgrade -y

#Executa o comando "more"
ENTRYPOINT ["more"]

# Expoe a porta 80
EXPOSE 80


