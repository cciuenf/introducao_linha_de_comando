FROM ubuntu:20.10

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y sudo less iputils-ping telnet

RUN apt-get install -y zsh fish

RUN useradd ccuenf && usermod -aG sudo ccuenf

RUN mkdir -p /home/ccuenf && chown -R ccuenf:ccuenf /home/ccuenf

RUN cd /home/ccuenf

RUN echo "y" | unminimize

RUN echo 'ccuenf:ccuenf' | chpasswd

USER ccuenf

WORKDIR /home/ccuenf

RUN mkdir desktop videos pictures downloads documents

CMD /bin/sh
