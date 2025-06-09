from pessoa import Pessoa
arq = open("pessoas.txt", "r")
pessoas = []
for linha in arq:
    lista = linha.replace("\n", "").split(",")
    pessoas.append(Pessoa(lista[0], lista[1]))
arq.close()
pessoas.sort(key=lambda x: x.idade)
for pessoa in pessoas:
    print(pessoa)