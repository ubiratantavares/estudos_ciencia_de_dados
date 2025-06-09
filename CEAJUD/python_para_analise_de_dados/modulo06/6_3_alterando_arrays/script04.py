import numpy as np
dados = np.linspace(2, 32, 16, dtype=np.intc)
alterado = dados.reshape((-1,2))
dados[0] = -5
print(dados)
print(alterado)