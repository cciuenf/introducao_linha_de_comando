# linux distro
FROM ubuntu:20.10

# cria um arquivo chamado inicio.txt
RUN touch inicio.txt

# preenche o arquivo com "Boas-vindas!"
RUN echo "Boas-vindas!" > inicio.txt

#o parâmetro padrão pro entrypoint é o aquivo inicio.txt
CMD ["inicio.txt"]

#executa o comando cat como entrypoint
ENTRYPOINT ["cat"]