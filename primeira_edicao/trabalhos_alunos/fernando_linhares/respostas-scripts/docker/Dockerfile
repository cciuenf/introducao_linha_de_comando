# FROM  - O primeiro argumento do Dockerfile deve ser sempre o FROM, 
# seguido da imagem e versão que será utilizada. Caso não seja informada a versão, 
# o Docker vai procurar a mais atual do seu repositório oficial. 

# define a imagem base
FROM debian:latest

# LABEL: coloca um metadado para o container;
# define o mantenedor da imagem
LABEL maintainer="Fernando Linhares"
#  RUN: executa os comandos dentro do container; 

# Atualiza a imagem com os pacotes
RUN apt-get update && apt-get upgrade -y

# Instala o NGINX para testar
RUN apt-get install nginx -y

#  EXPOSE: expõe a porta informada do container;
# Expoe a porta 80
EXPOSE 80

# Comando para iniciar o NGINX no Container
CMD ["nginx", "-g", "daemon off;"]
