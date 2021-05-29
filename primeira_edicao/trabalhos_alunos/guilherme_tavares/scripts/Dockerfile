# Selecionando a imagem base da distro Alpine
FROM alpine:3.7

# Atualize a lista de pacotes disponíveis e atualiza os pacotes instalados
RUN apk update && apk upgrade

# Cria uma pasta com meu nome e sobrenome
RUN mkdir guilherme_tavares

# Executa o comando date assim que inicia o container
ENTRYPOINT ["date"]