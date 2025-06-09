import numpy as np

dados = np.genfromtxt("dados.csv", delimiter=";", skip_header=0, dtype=np.intc)

print(dados)

resultado1 = dados[1].sum() # soma os elementos da linha 1

resultado2 = dados.sum(0)[2] # soma os elementos da coluna 2

print(resultado1, resultado2)