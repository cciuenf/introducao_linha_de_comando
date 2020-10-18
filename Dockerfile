FROM ubuntu:20.10

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y sudo

RUN useradd docker && usermod -aG sudo docker

RUN mkdir -p /home/docker && chown -R docker:docker /home/docker

RUN cd /home/docker

CMD /bin/bash
