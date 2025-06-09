import numpy as np
dados = np.ones((3,4), dtype=np.intc)
np.savetxt("dados.csv", dados, delimiter=";", fmt="%d")
