Essse arquivo vai relatar como foi minha experiência para instalar o SHH para o Git.

Eu comecei criando a chave SSH e depois adicionando ela ao ssh-agent, porém encontrei um erro. Eu salvei minha chave ssh no mesmo diretório de uma outr chave SSH que eu tinha instalada, onde eu uso para o meu GitLab da minha empresa.
Portanto, criei uma outra chave em um local diferente, com um nome de arquivo diferente. Nisso conesegui adicionar o ssh-agent. Fui nas configurações do GitHub e adicionei um novo SSH.
Deu tudo certo. Testei clonando projetos do meu GitHub e não pediu senha e nem usuário.