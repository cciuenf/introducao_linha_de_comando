FROM ubuntu:20.10

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y sudo less iputils-ping telnet \
    locales locales-all software-properties-common gnupg

RUN apt-get install -y zsh fish

RUN useradd ccuenf && usermod -aG sudo ccuenf

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN mkdir -p /home/ccuenf && chown -R ccuenf:ccuenf /home/ccuenf

RUN cd /home/ccuenf

RUN echo "y" | unminimize

RUN echo 'ccuenf:ccuenf' | chpasswd

USER ccuenf

WORKDIR /home/ccuenf

RUN mkdir desktop videos pictures downloads documents

CMD /bin/sh
