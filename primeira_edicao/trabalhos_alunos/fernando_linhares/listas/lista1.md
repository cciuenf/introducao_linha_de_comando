# Lista de exercícios 1 - Docker
## Aluno: Fernando Viana Linhares

1. Resumidamente, o que significa a palavra contêiner?
- De acordo com a documentação do Docker, um contêiner é simplesmente um outro processo em nossa máquina que foi isolado de todos os outros processos na máquina host. Esse isolamento aproveita os namespaces e cgroups do kernel, recursos que estão no Linux há muito tempo. O Docker trabalhou para tornar esses recursos acessíveis e fáceis de usar.
Resumindo, o que ocorre na prática é que o docker destaca recursos e usa bibliotecas de kernel em comum. Os itens empacotados — ou até mesmo um ambiente inteiro — são dispostos no container e se tornam portáveis, o que torna o trabalho conjunto mais eficiente. Ao mesmo tempo, a implantação pode ser feita em ambientes não heterogêneos.

2. Cite algumas vantagens de dockerizar um programa/aplicação
  - Modularidade
  - Capacidade de reaproveitamento
  - Agilidade
  - Inicio rápido de um projeto e sem ter mais aquela famosa frase "funcina na minha máquina"
  - Camadas de controle de versão de imagens
  
3. Execute docker run --rm chuanwen/cowsay e descreva o resultado! Pode repetir a execução se quiser.

  - Gera um container com a imagem do chuanwen/cowsay. Nele, roda um código que cria uma vaca gera algumas frases. Por exemplo:
  ________________________________________
/ Shapiro, thank you for this useful link\
\ Be a bad boy and get started to work   /
 ----------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

