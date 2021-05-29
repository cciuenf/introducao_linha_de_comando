#Este script exipe o path, cria um arquivo de texto de nome aleatorio e salva o path nesse arquivo.
cat $PATH |echo "$PATH" > $RANDOM.txt