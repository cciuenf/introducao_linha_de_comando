#!/bin/bash
# Autor: Guilherme Oliveira Mussa Tavares
# Script: guess-game.sh
# Descrição: Este script é um jogo de advinhação! 
# Você deve tentar advinhar um número aleatório
# que varia de 1 até 100.
# Data: 26/05/2021

# Atribuindo um número aleatório a uma variável
RANDOM_NUMBER=$(shuf -i 1-100 -n 1)
echo "Digite um número qualquer de 1 até 100! Tente advinhar o número aleatório que eu gerei!"

# Loop principal do jogo
while [[ $x -ne $RANDOM_NUMBER ]]; do
    echo -n "Número: "
    # Ler o palpite do usuário
    read x
    # Número é igual => Usuário venceu!
    if [[ $x -eq $RANDOM_NUMBER ]]; then
        echo "Você acertou!!!"
    # Número é menor => Avisa ao usuário que o número gerado é maior que o palpite
    elif [[ $x -lt $RANDOM_NUMBER ]]; then
        echo "O número gerado é maior!"
    # Número é maior => Avisa ao usuário que o número gerado é menor que o palpite    
    elif [[ $x -gt $RANDOM_NUMBER ]]; then
        echo "O número gerado é menor!"
    fi
done
