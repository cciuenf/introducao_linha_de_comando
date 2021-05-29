
FROM debian:latest 
# define a imagem base

LABEL maintainer="Macoratti" 
# define o mantenedor da imagem

RUN apt-get update && apt-get upgrade -y 
# Atualiza a imagem com os pacotes

RUN apt-get install nginx -y 
# Instala o NGINX para testar

CMD ["nginx", "-g", "daemon off;"] 
# Comando para iniciar o NGINX no Container

ENTRYPOINT [ "less" ]