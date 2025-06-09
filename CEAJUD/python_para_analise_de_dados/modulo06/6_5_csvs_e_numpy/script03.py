import numpy as np
dados = np.ones((3,4), dtype=np.intc)
header = "Coluna0;Coluna1;Coluna2;Coluna3"
np.savetxt("dados.csv", dados, delimiter=";",
fmt="%d", header=header, comments="")