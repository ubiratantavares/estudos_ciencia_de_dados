import numpy as np
dados = np.linspace(2, 32, 16, dtype=np.intc)
alterado = dados.reshape((-1,2))
print(alterado)