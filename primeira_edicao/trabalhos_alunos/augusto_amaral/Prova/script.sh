#Esse comando irá excluir todos os branchs que já foram fechados
git fetch --prune --prune-tags
# Esse comando irá limpar todos os branchs que não foram apagados local mas que ainda ficaram na máqina
bash -c "git branch -r | awk '{print \$1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print \$1}' | xargs git branch -d"