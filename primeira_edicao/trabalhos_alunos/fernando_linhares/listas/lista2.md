# Lista de exercícios 2 - Linux
## Aluno: Fernando Viana Linhares

1. Explique a definição de “Linux”

  - Linux é o núcleo do sistema operacional, programa responsável pelo funcionamento do computador, que faz a comunicação entre hardware (impressora, monitor, mouse, teclado) e software (aplicativos em geral). O conjunto do kernel e demais programas responsáveis por interagir com este é o que denominamos sistema operacional. O kernel é o coração do sistema.

2. Dado os diretórios da primeira tabela, correlacione-os com suas funções na segunda tabela:

| Opção | Diretório |
| ----- |:---------:|
|  a    |   /dev    |
|  b    |   /etc    |
|  c    |   /usr    |
|  d    |   /opt    |

| Opção | Função    |
| ----- |:---------:|
|  c    |   Localização de arquivos, programas e bibliotecas do escopo de usário ficam; não são dados essenciais    |
|  a    |   Diretório destino das mapeações de cada hardware    |
|  d    |  Aqui são encontrados softwares adicionais e proprietários   |
|  b    |   Local onde as configurações do sistema ficam disponíveis de forma global    |

3. Escolha 3 (três) diretórios Linux a partir da raiz (/) e explique sua respectiva função.

  - /tmp - Diretório responsável por armazenar aquivos temporários

  - /bin - Diretório responsável por armazenar os executáveis de alguns comandos básicos do sistema, como o su, tar, cat, rm, pwd, etc. Geralmente isto soma de 5 a 7 MB, pouca coisa.

  - /root - Diretório responsável por armazenar o Kernel e alguns arquivos usados pelo Lilo (o gerenciador de boot do sistema), que são carregados na fase inicial do boot.

  4. Qual a finalidade de existirem grupos em sistemas operacionais baseados no Linux?

  - A principal finalidade é a organizar os acessos ao sistema operacional em si.

5. Descreva cada permissão:

- rw-rw-rw-= Todos os usuários do sistema têm permissão de leitura e escrita.
- lr-x---rwx - é um link. O dono pode ler e executar, o grupo do dono não tem permissões, os demais usuários têm todas as permissões.
- drwxr-xr-x= é um diretório. O dono tem todas as permissões, o grupo do dono e os demais usuários tem permissão de ler e executar.
- .rw-r--r--= é um arquivo comum. O dono tem permissão de ler e escrever, o grupo do dono e os demais usuários tem permissão de ler.
- drwxrwxrwx - é um diretório. Todos os usuários do sistema possuem todas as permissões.          

6. Defina STDIN, STDOUT e STDERR

- STDIN : “Standard Input” São as entradas padrão que os programas ou comandos podem receber como parâmetro de execução. Significa entrada padrão. Aceita texto como entrada.
- STDOUT : Significa “Standard Output” É a saída padrão gerada por um programa ou comando que foi executado, podendo ser efeitos no sistema ou uma mensagem. Significa saída padrão. A saída de texto de um comando é armazenada no fluxo stdout.
- STDERR : Significa "Standard Error" É uma saída padrão que guarda as mensagens de erros geradas pelos programas/comandos. Significa erro padrão. Sempre que um comando enfrenta um erro, a mensagem de erro é armazenada neste fluxo.

7. Diferencie uma CLI de uma GUI, apontando suas vantagens e desvantagens.

- CLI e GUI são os diferentes tipos de interfaces de usuário. Principalmente eles diferem nos gráficos empregados no sistema operacional. Para executar uma operação no sistema CLI, é necessário escrever um comando. Por outro lado, na GUI, os usuários forneceram recursos visuais (gráficos) que incluem imagens e ícones, o que facilita os usuários a executar uma tarefa diretamente.

  - CLI vantagens: As CLI são mais precisas que as GUI, mas exigem domínio sobre os comandos e sintaxe. Enfatiza sobre Processo cognitivo como uma tarefa primária. A CLI é apropriada para a computação cara, onde a precisão da entrada é a prioridade.
  - CLI desvantagens:
    - A CLI é adequada para o usuário que a utiliza regularmente e pode memorizar a variedade de comandos e opções.
    - A digitação incorreta pode resultar em completo caos.
    - Eles são adequados para modelagem e não para gráficos interativos.
  - GUI vantagens: É uma interface fácil de usar para usuários iniciantes. É intuitivo, fácil de aprender e reduz carga cognitiva. Ao contrário da CLI, os usuários da GUI não precisam se lembrar de comandos, pois isso requer reconhecimento e bom análise exploratória e gráficos.
  - CLI desvantagens:
    - Falta de precisão
    - A replicação da análise e a refazer as etapas são difíceis
    - Não é adequado para modelagem  

