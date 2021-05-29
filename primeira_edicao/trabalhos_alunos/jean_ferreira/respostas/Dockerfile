# imagem base para SO
FROM debian:latest

# define o mantenedor da imagem
LABEL maintainer="Jean Vassalo"

# Atualiza a imagem com os pacotes
RUN apt-get update && apt-get upgrade -y

# Mostra o hostname
ENTRYPOINT ["hostname"]