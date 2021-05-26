# Prova Tópicos de Sistemas Operacionais
##### Aluno: Guilherme Oliveira Mussa Tavares
##### Data: 26/05/2021

## Questão 1.

Primeiramente, [implementei o Dockerfile](https://github.com/cciuenf/introducao_linha_de_comando/blob/main/primeira_edicao/trabalho_alunos/guilherme_tavares/Dockerfile), utilizando como base uma imagem da distribuição Alpine. Em seguida, entrei na mesma pasta do Dockerfile pelo terminal e executei o seguinte comando para criar a imagem:

```docker build -t imagem-exemplo .```

Depois, criei e executei um container a partir desta imagem recém-criada com o seguinte comando:

```docker run --name container1 -it imagem-exemplo```

Ao final da execução do container obtive o seguinte resultado (saída do comando ```date```):

```
Wed May 26 18:35:41 UTC 2021
```

## Questão 2.

O script desenvolvido foi um jogo de advinhação, o qual o usuário deve tentar acertar o número que foi gerado aleatoriamente que varia de 1 até 100. [Clique aqui para visualizar o código do shell script.](https://github.com/cciuenf/introducao_linha_de_comando/blob/main/primeira_edicao/trabalho_alunos/guilherme_tavares/guess-game.sh)


Exemplo de execução:

```
$ ./guess-game.sh
Digite um número qualquer de 1 até 100! Tente advinhar o número aleatório que eu gerei!
Número: 100
O número gerado é menor!
Número: 22
O número gerado é maior!
Número: 88
Você acertou!!!
```
