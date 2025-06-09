import numpy as np
matriz = np.ones((4,4), dtype=int)
matriz[0][0] = 33
matriz += 14
matriz[1] *= 2
print(matriz)