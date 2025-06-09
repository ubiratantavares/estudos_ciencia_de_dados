import numpy as np

dados = np.ones((4,3))

soma = dados.sum(0)

print(soma)

soma = dados.sum(1)

print(soma)
