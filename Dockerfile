FROM ubuntu:20.10

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y sudo neovim

RUN useradd docker && usermod -aG sudo docker

RUN mkdir -p /home/docker && chown -R docker:docker /home/docker

RUN cd /home/docker

USER docker

CMD /bin/bash
