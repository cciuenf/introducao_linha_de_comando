#!/bin/bash
echo "Digite 1 para atualizar os pacotes ou 2 para exibir seus arquivos em formato Tree"

read number

echo "A sua opção de escolha foi $number!"

if [ $number -eq 1 ]
then
  echo "Atualizando..."
  sudo apt update
else
  echo "formatando..."
  tree
fi