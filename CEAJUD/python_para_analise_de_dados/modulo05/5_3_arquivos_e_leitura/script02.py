arq = open("documento.txt", "r")
linha = arq.readline()
while linha != "":
    print(linha, end="")
    linha = arq.readline()
arq.close()
# O código acima lê o arquivo "documento.txt" linha por linha e imprime cada linha na tela.
# O método readline() lê uma linha do arquivo e retorna o conteúdo dessa linha.
# O loop continua até que não haja mais linhas para ler (linha == "").
# O método close() fecha o arquivo após a leitura.