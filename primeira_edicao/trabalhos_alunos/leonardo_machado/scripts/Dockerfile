# Vou montar baseado na imagem do debian
FROM debian:8
# rodo esse comando para atualizar essa imagem
RUN apt-get -y update
# instalo pacotes para ifconfig
RUN apt-get -y install net-tools
# instalo pacote do ping
RUN apt-get -y install iputils-ping
# estou usando o comando ls para listar o diretorio
ENTRYPOINT ["ls"]

