#!/bin/bash
echo "Instalando npm"

sudo apt update

sudo apt-get install --yes nodejs && apt-get install --yes npm

mkdir node 

cd node

pwd

nano main.js