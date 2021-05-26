# PROVA TÓPICOS EM SO
#
### Aluno: José Arthur de Mello Mulatinho
#
### Data:26/05/2021
#
## Questão 1:

docker build -t imagemprova .
docker run --name containerp -it imagemprova

## Questão 2

echo "Deletando arquivos de download"
cd $HOME
rm ./Downloads -rf
mkdir Downloads

## Questão 3

git config --global user.name "jose mulatinho"
git config --global user.email "j4mmbr@gmail.com"
git checkout -b jose_mulatinho/avaliacao_primeira_edicao

