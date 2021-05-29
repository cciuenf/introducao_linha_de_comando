 # Selecionando a imagem base da distribuição Alpine
    FROM alpine:3.7

    # Atualize a lista de pacotes disponíveis
    RUN apk update && apk upgrade

    # Executa o comando date assim que inicia o container
ENTRYPOINT ["date"]