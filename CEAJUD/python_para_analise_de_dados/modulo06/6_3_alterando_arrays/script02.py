import numpy as np
dados = np.linspace(2, 32, 16, dtype=np.intc)
print(dados.shape)
print(dados)
alterado = dados.reshape((8,2))
print(alterado.shape)
print(alterado)