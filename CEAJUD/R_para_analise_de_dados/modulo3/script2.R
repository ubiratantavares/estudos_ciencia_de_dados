#-----------------------------------------------------------------------
# JUSTIÇA 4.0
# INOVAÇÃO E EFETIVIDADE NA REALIZAÇÃO DA JUSTIÇA PARA TODOS
# PROJETO DE EXECUÇÃO NACIONAL BRA/20/015
#
# R para Análise de Dados
#
#                                     Prof. Dr. Walmes M. Zeviani
#                                     Departamento de Estatística · UFPR
#-----------------------------------------------------------------------

2 + 3
2/3
2^3

cos(2)

log(10, base = 5)
log10(1000)
log2(8)

sprintf("%0.20f", exp(1))
sprintf("%0.30f", pi)

round(pi, 4)

as.character(pi)

(90 * 0.3 + 75 * 0.4 + 85 * 0.3)/(0.3 + 0.4 + 0.3)

2 + 4 + 3 + 5

1/(1/2 + 1/4 + 1/3 + 1/5)

6 * 15 * 0.65

500 * (1 + 0.01)^6 - 500


5 + NA
is.na(5 + NA)

10 + NULL

5/0
0/0

alcool <- 4.69
gasolina <- 5.67

alcool/gasolina < 0.7

nota <- 69.99999999999
freq <- 0.76
aprovado <- (nota >= 70) & (freq >= 0.75)
aprovado

nao_aprovado <- !aprovado
nao_aprovado

v1 <- c(1, 4, 2, 5, 6, 9)
v2 <- c(10, -10)

v1 * v2

c(1, FALSE)
c(1, "1")

x <- 1L
is.integer(x)
is.numeric(x)

apropos("^is\\.")

x <- "1.0"
as.numeric(x)

ec <- c("Solteiro", "Casado")
is.character(ec)
class(ec)

u <- as.factor(ec)

typeof(1)
typeof(1L)
typeof("x")
typeof(ec)
typeof(u)

summary(c(1, 3,2,4,5,67,65,7))
summary(factor(c("M", "F", "M", "M", "F", "F")))

methods(class = "numeric")
methods(class = "factor")

methods(generic.function = "summary")


# Sequências regulares.
1:7
seq(from = 1, to = 10, by = 2)
seq(from = 1, to = 20, length.out = 7)
seq(from = 1, by = 2, length.out = 7)

seq(f = 1, t = 10, b = 2)
seq(by = 2, 1, 10)

# Repetições.
rep(x = 0, 5)
rep(1:3, times = 2)
rep(1:3, each = 2)

# Amostras aleatórias.
sample(1:20, size = 10,
       replace = FALSE)
sample(c("a", "b", "c"), size = 10,
       replace = TRUE)

# Números aleatórios.
runif(n = 10, min = 0, max = 1)
rnorm(n = 10, mean = 1.80, sd = 0.1)



# Numérico mas com valores nomeados.
notas <- c("João" = 7.8,
           "Bianca" = 10,
           "Eduarda" = 8.5,
           "Felipe" = 7.0,
           "Márcia" = 6.5)
names(notas)
typeof(notas)
class(notas)
str(notas)

notas[1]
notas[5]
notas[1:2]
notas[c(1, 3)]
notas[c(3, 1)]
notas[-1]

notas
rev(notas)


mask <- notas > 7.0
mask
notas[mask]

notas[notas > 9.0]

# Seleciona valores pelo nome associado.
notas["João"]
notas[c("Márcia", "Eduarda")]




# Atribui nota para um aluno.
notas["João"] <- 0
notas

# Atribui nota "desconhecida" para aluno.
notas["Felipe"] <- NA
notas

# Remove elemento do vetor.
notas <- notas[-4]
notas





# Adiciona um aluno no final.
append(notas, value = c("Carlos" = 9.0))

# Adiciona uma aluna no começo.
append(notas, value = c("Simone" = 7.2),
       after = 0)

# Concatena vários vetores.
novas_notas <- c(notas,
                 c("Pedro" = 8.0,
                   "Luana" = 8.3),
                 c("Larissa" =  9.0,
                   "Lucas" = 5.3))
novas_notas





y <- c(9, 8, 8, 7, 9, 9, 8, 7, 9, 9, 6, 5,
       8, 8, 9, 7, 6, 9, 8, 9, 6, 5, 9, 9)
length(y) # Número de valores.
sum(y)    # Soma.
mean(y)   # Média.
median(y) # Mediana.

sort(y)

sd(y)     # Desvio-padrão amostral.
var(y)    # Variância amostral.
max(y)    # Máximo.
min(y)    # Mínimo.
mad(y, constant = 1) # Desv abs da mediana.
100 * sd(y)/mean(y)  # Coef de variação.

# Média geométrica.
prod(y)^(1/length(y))
exp(mean(log(y)))

# Média harmônica.
length(y)/sum(1/y)

table(y)                # Tabela de frequência.
fivenum(y)              # 5 números de Tukey.
IQR(y)                  # Ampitude interquartílica.
quantile(y, prob = 0.75) # Quantis.
