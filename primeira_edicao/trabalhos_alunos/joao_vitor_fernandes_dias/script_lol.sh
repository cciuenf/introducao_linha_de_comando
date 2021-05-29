#   Criar um diretorio "lista_de_campeoes_preferidos"
mkdir lista_de_campeoes_preferidos
#   Acessar o diretorio "lista_de_campeoes_preferidos"
cd lista_de_campeoes_preferidos
#   Inserir uma lista com meus campeoes preferidos em um arquivo de texto
echo Teemo  > main_champs.txt && echo Braum  >> main_champs.txt && echo Thresh  >> main_champs.txt && echo Karma  >> main_champs.txt
#   Organizar a minha lista em ordem alfabetica e o insere em outro arquivo
sort main_champs.txt > sorted_main_champs.txt
#   Remove o arquivo não organizada 
rm main_champs.txt
#   Retorna ao diretorio inicial
cd ..