import numpy as np

#criando a partir de uma lista
lista = [1,2,3]
array1 = np.array(lista)
print("Elemento em zero: ", array1[0])
for item in array1:
    print(item)

#criando diretamente
array2 = np.array([4,5,6])
for item in array2:
    print(item)