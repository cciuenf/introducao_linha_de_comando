#!/bin/sh

# Esse script serve para automatizar a inicialização dos servidores locais do meu trabalho,
# todos os dias eu preciso entrar nas pastas e inicializar os servidores locais e as APIs.
# Agora, com esse script não preciso mais, basta roda-lo,
# se quiser inicializar o GAME passa '1' como parametro,
# se quiser inicializar o PORTAL ADMIN passa '2' parametro,
# se quiser inicializar o GAME e o PORTAL ADMIN, basta não passar parametros ou passar qualquer outro parametro

if [ $1 = '1' ] # verificando se a variavel passada é igual a 1, sendo verdadeiro deve executar somente os comandos referente ao GAME
then
    # comando para abrir e inicializar o API-GAME e o GAME do no terminal do gnome
    gnome-terminal \
    --tab --title="API GAME" --command="bash -c 'cd; cd tindin/api-game/; npm start'" \
    --tab --title="GAME" --command="bash -c 'cd; cd tindin/game/; npm start'"
elif [ $1 = '2' ] # verificando se a variavel passada é igual a 3, sendo verdadeiro deve executar somente os comandos referente ao PORTAL ADMIN
then
    # comando para abrir e inicializar o API-PORTAL-ADMIN e o PORTAL-ADMIN no terminal do gnome
    gnome-terminal \
    --tab --title="API PORTAL ADMIN" --command="bash -c 'cd; cd tindin/api-portal-admin/; npm start'" \
    --tab --title="PORTAL ADMIN" --command="bash -c 'cd; cd tindin/portal-admin/; npm start'" 
else # caso não seja passada nenhuma variavel, ou qualquer variavel diferente de 1 ou 2, deve executar os comandos referente ao GAME e ao PORTAL ADMIN
    # comando para abrir e inicializar o API-GAME, GAME, API-PORTAL-ADMIN e o PORTAL-ADMIN no terminal do gnome    
    gnome-terminal \
    --tab --title="API GAME" --command="bash -c 'cd; cd tindin/api-game/; npm start'" \
    --tab --title="GAME" --command="bash -c 'cd; cd tindin/game/; npm start'" \
    --tab --title="API PORTAL ADMIN" --command="bash -c 'cd; cd tindin/api-portal-admin/; npm start'" \
    --tab --title="PORTAL ADMIN" --command="bash -c 'cd; cd tindin/portal-admin/; npm start'" 
fi # fim do if