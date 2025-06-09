arq = open("documento.txt", "r")
for linha in arq:
    print(linha, end="")
arq.close()