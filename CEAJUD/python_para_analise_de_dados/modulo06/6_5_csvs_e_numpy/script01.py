import numpy as np

data = np.genfromtxt('ArquivoCNJ.csv', delimiter=';',

skip_header = 1, usecols = (13,24), dtype=(np.intc, np.intc))

print(data.shape)

print(data.sum(0))

