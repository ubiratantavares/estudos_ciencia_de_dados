# exemplo 1
7 + 9 + 2 * 6
2.5 * 4
(50 + 7) / (8 * (3 -5/2))
 3 ^ 4

# exemplo 2
x = 15; x
x + 5
x * x / 2
2 ^ x
y = x / 3

# exemplo 3
vetor.num = c(1, 2, 5, 8, 1001)
sum(vetor.num)
mean(vetor.num)

# exemplo 4
#install.packages("fBasics")
library("fBasics")
basicStats(vetor.num)

# exemplo 5
setwd("/home/bira/github/estudos_ciencia_de_dados/UFSCar/introducao_ambiente_RStudio_criacao_graficos_ggplot2")
dados = read.table("dados.txt", header=TRUE); dados

# exemplo 6
head(dados)
tail(dados)
class(dados)
str(dados)
summary(dados)
head(dados$Idade)
tail(dados$Idade)


# Manipulando os dados

# exemplo 7
inteiro = 928; class(inteiro)
outro.inteiro = 5e2; class(outro.inteiro)
decimal = 182.93; class(decimal)
caracter = 'exportação'; class(caracter)
logico = TRUE; class(logico)
outro.logico = FALSE; class(outro.logico)

# exemplo 8
minha.matriz = matrix(data=1:12, nrow=3, ncol=4); minha.matriz; class(minha.matriz)

# exemplo 9
vetor.tipo = c('tipo1', 'tipo2', 'tipo3', 'tipo4'); vetor.tipo
vetor.num = c(1, 2, 3, 5, 8, 1001); vetor.num
vetor.num.repetidos = c(rep(2, 50)); vetor.num.repetidos
vetor.num.sequencia = c(seq(from = 0, to = 100, by = 5)); vetor.num.sequencia
vetor.logical = c(TRUE, TRUE, TRUE, FALSE, FALSE); vetor.logical

# exemplo 10
nome = c("João", "José", "Maria", "Joana"); nome
idade = c(45, 12, 28, 31); idade
adulto= c(TRUE, FALSE, TRUE, TRUE); adulto
uf = c('DF', 'SP', 'RJ', 'MG'); uf

clientes = data.frame(nome, idade, adulto, uf); clientes

# exemplo 11
clientes$nome
clientes$uf

clientes[1, 1]
clientes[, 1]; clientes$nome
clientes[1, ]
clientes[, 2:3]
clientes[2:3, ]

# exemplo 12
x = c(1, 2, NA, 3); x
mean(x)
mean(x, na.rm=TRUE)
mean(na.omit(x)) # omite qualquer valor com NA
df = data.frame(x = c(1, 2, 3), y = c(0, 10, NA)); df
df = na.omit(df); df

# exemplo 13
a = 9823
if (a >= 10000) {
  b = "ALTO"
} else if ((a >= 1000) & (a < 10000)) {
  b = "MÉDIO"
} else {
  b = "BAIXO"
}

print(b)

a = 839
c = ifelse(a >= 10000, 'ALTO', ifelse((a >= 1000 & a < 10000), 'MÉDIO', 'BAIXO')); c

# exemplo 14
for (i in c(1, 2, 3, 4, 5)) {
  print(i ^ 2)
}

# exemplo 15
for (i in 1:1000) {
  if ((i %% 3 == 0) & (i %% 29 == 0)) {
    print(i)
  }
}

# exemplo 16
i = 1
while (i <= 10) {
  print(i)
  i = i + 1
}



}