#!/bin/bash

# Script Simples usando comandandos
# basicos usados durante a AARE
# passando alguns comandos que mostram
# informações basicas para o usuario

#exibe na tela essa frase
echo "Seu nome de usuario é:"
#mostra o nome do usuario
whoami
#exibe essa frase
echo "Quais arquivo estao nesse diretorio:"
#mostra a 
ls
#mostra a frase
echo "O script esta executando do diretorio:"
#mostra o diretorio atual onde esta rodando
pwd
#mostra frase
echo "O que tem escrito no arquivo de texto:"
#imprime o conteudo do arquivo de texto
cat t.txt
#mostra frase
echo "Em qual linha se encontra o padrao 'dale':"
#proucura o padrao no arquivo de texto e mostra a linha em que esta
grep -n dale t.txt

#Essa parte fiz so pra fechar o script
echo "=================================================================="
echo "DE ENTER QUANDO ACABAR"
read dale