#!/bin/sh

# Esse script é usado para que quando o computador 
# inicializa ele realizar algumas configurações, sem precisar
# colocar os comandos manualmente.


# Altera o clock do processador.
-S cpupower frequency-set -d 3000000

# Altera  a velocidade de rolagem do mouse.
imwheel -b "4 5"

# Realiza a atualização das informações do pacote.
apt-get update 

# Realiza a atualização de pacotes.
apt-get upgrade 

  