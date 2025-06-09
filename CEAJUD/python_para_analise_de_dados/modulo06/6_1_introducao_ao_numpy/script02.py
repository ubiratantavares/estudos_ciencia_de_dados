import numpy as np

#criando diretamente
array = np.array([[4,5,6],[7,8,9]])

for linha in array:
    for coluna in linha:
        print(coluna, end=' ')
        print()

print("Item na linha 1, coluna 2: ", array[1][2])