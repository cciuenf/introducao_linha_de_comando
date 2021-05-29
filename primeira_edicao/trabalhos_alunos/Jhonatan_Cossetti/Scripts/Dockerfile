FROM debian:latest
#Aqui vamos definir a imagem base

LABEL maintainer: "Jhonatan"
#Aqui definimos o mantenedor da imagem

RUN apt-get update && apt-get upgrade -y
#Vai atualizar a imagem com os pacotes

RUN apt install nginx -y 
#Instala o NGINX no sistema

CMD ["nginx", "-g" "daemon off;"]
#Comando que dá o inicio ao NGINX no Container

ENTRYPOINT ["less"]