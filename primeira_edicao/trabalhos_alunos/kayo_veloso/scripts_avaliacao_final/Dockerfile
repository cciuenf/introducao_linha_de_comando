# chama a ultima versão estavél do debian
FROM debian:latest

# atualizando os repositórios e o sistema operacional
RUN apt-get update
RUN apt-get -y upgrade

#instalando o fish no sistema
RUN apt install fish -y

# criando usuário e adiciondo ele aos grupos 'sudo' e 'kayo'
RUN useradd kayo 
RUN usermod -aG sudo kayo

# configurando linguagem (de acordo com https://hub.docker.com/_/debian?tab=description)
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

# cria o caminho /home/kayo
RUN mkdir /home/kayo

# muda o dono e o grupo dos diretórios /home/kayo para 'kayo' e 'kayo' respectivamente
RUN chown -R kayo:kayo /home/kayo

# muda para a pasta 'kayo'
RUN cd /home/kayo

# altera a senha do usuario
RUN echo 'kayo:12345' | chpasswd

# muda o usuário que vai executar os próximos comandos
USER kayo

# define o caminho onde serão executados os próximos comandos
WORKDIR /home/kayo

#cria o diretório em '/home/kayo'
RUN mkdir area_de_trabalho

# determina o sh como shell padrão
CMD /bin/sh

