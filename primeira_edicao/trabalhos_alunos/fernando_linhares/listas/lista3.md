# Lista de exercícios 3 - Shell
## Aluno: Fernando Viana Linhares

1. Com suas palavras, explique o que é um shell
- Pra mim, o Shell é uma interface onde o usuário consegue acessar os serviços do sistema operacional. Ele interpreta e executa os comandos do usuário. Fica disposto na tela, aguardando os comandos do usuário.

2. Quero executar esta sequência de comandos: cat xx.txt, ls, sort e guardar num arquivo .txt. Cite ao menos uma forma de fazer isso, de maneira que o arquivo final tenha o conteúdo do ls e do cat, não importando a ordem dos comandos.

- cat > xx.txt // Cria o arquivo
- ls > arquivo.txt
- sort xx.txt arquivo.txt > final.txt

3. Qual a utilidade de usar a técnica de shebang?

- O #! shebang serve para dizer ao kernel qual será o interpretador a ser utilizado para executar os comandos presentes no arquivo.

Quando executamos um arquivo que começa com #!, o kernel abre o arquivo e pega tudo que está escrito após o shebang até o final da linha. Em seguida ele tenta executar um comando com o conteúdo desta string adicionando como parâmetro o nome do próprio arquivo.

Portanto se você tem arquivo executável chamado meuscript.sh, contendo um shell-script e começando com #!/bin/bash, quando você executa esse arquivo o kernel vai executar /bin/bash meuscript.sh.

4. Abaixo, serão listadas várias ações. Execute uma por vez no terminal e escreva o comando que usou logo em seguida.

| Ação | Comando |
| ----- |:---------:|
|  Verifique em qual diretório você está    |   pwd    |
|  Crie a estrutura de diretórios sugerida logo acima na home do usuário	    |   1- cd .. 2 - cd ./home 3 - mkdir ccuenf 4 - mkdir exercicios   |
|  Crie um arquivo “numeros.txt” com o cat, não importa a quantidade de númerosc    |   cat > numeros.txt     |
|  Duplique “numeros.txt” para “numeros1.txt” e “numeros2.txt”	    |   1 - cp numeros.txt numeros1.txt 2 - cp numeros.txt numeros2.txt |
|  Copie todos os arquivos com extensão .txt para a pasta “exercicios”		    |   cp numeros.txt numeros1.txt numeros2.txt exercicios  |
|  Exiba os arquivos da pasta “exercicios” com seus detalhes (permissões, tamanho e etc) sem sair da pasta atual			    |   ls exercicios -l |
|  Apague a pasta “ccuenf” e “exercicios”			|   rm exercicios ccuenf -r |

5. Liste todos os arquivos da pasta /bin, inverta a ordem (de Z para A) e depois salve num arquivo. Quais foram os comandos utilizados? Não é obrigatório executar a sequência em apenas uma linha.

- ls /bin | tac > text.txt

6. Crie um arquivo .txt com o centeúdo da execução de man <comando> - onde “comando” é qualquer comando linux conhecido e que possua um manual - e inverta a ordem das linhas, procure pela palavra “the” e conte o número de ocorrências. Coloque aqui seu resultado e qual comando usou para pegar o manual.

man rm > inicial.txt
tac inicial.txt > final.txt 
grep the final.txt
saída: 12

7. Escolha um ou mais programas da lista e tente instalá-lo, execute-o e descreva o resultado.

- sl : Ao executá-lo, pode ser observado uma locomotiva a vapor.
- nyancat: Podemos observar um gato correndo e marcando arco íris pelo caminho.
- cmatrix: Vários caracteres verdes aleatórios ao estilo Matrix vão caindo.

8. Qual o resultado das seguintes expressões?

- false && echo foo || echo bar = bar
- true && echo foo || echo bar = foo
- true || echo foo && echo bar = bar
- false || echo foo && echo bar = foo bar
