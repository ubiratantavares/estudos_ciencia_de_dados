import csv as c

media_idades = 0
media_salarios = 0
numero_funcionarios = 0

arq = open('../5_5_arquivos_delimitados/funcionarios.csv', 'r', encoding='utf-8')

csv_reader = c.reader(arq, delimiter=';')

next(csv_reader)  # Pular o cabeçalho

for linha in csv_reader:
    media_idades += int(linha[1])
    media_salarios += float(linha[2])
    numero_funcionarios += 1
arq.close()

print("Número de funcionários: ", numero_funcionarios)
print("Média de idades: ", media_idades / numero_funcionarios)
print("Média de salários: ", media_salarios / numero_funcionarios)