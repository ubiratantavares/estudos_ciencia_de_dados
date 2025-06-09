media_idades = 0
media_salarios = 0
numero_funcionarios = 0
arq = open("funcionarios.csv", "r", encoding="utf-8")
arq.readline()  # Lê a primeira linha (cabeçalho)
for linha in arq:
    dados = linha.split(";")
    media_idades += int(dados[1])
    media_salarios += float(dados[2])
    numero_funcionarios += 1
arq.close()

print("Número de funcionários: ", numero_funcionarios)
print("Média de idades: ", media_idades / numero_funcionarios)
print("Média de salários: ", media_salarios / numero_funcionarios)
