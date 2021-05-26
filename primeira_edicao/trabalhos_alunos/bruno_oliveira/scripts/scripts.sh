#!/bin/bash
echo "Por favor, digite 1 para ver a data ou 2 para ver o nome do computador na rede "

read number

if [ $number -eq 1 ]
then
  echo "data:"
    date
else
  echo "Nome do computador na rede:"
  hostname
fi