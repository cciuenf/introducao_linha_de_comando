#!/bin/bash

#eu uso esse script toda vez que suspendo meu notebook porque meu mouse fica esquisito, então eu reinicio o modulo do mouse e ele volta ao normal! :D

#sudo da permissao de root, modprobe -r remove um modolo, nesse caso o modulo do mouse se chama psmouse, eu uso o ponto e virgula pra logo apos esse comando executar o segundo que inicia o moduso psmouse.
sudo modprobe -r psmouse ; sudo modprobe psmouse ;

