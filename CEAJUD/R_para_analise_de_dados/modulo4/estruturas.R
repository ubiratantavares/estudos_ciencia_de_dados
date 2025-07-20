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

#---- IF-ELSE saudação  ------------------------------------------------

h <- 2

if (h >= 6 & h < 12) {
    saudacao <- "Bom dia!"
} else if (h >= 12 & h < 18) {
    saudacao <- "Boa tarde!"
} else if (h >= 18 & h < 23) {
    saudacao <- "Boa noite!"
} else {
    saudacao <- "Não enviar men;sagem!"
    stop("Não enviar mensagem!")
}

saudacao

#---- IF-ELSE cidade ---------------------------------------------------

grupo_em <- c("Goiás", "Minas Gerais", "Rondônia", "Roraima",
              "Santa Catarina", "São Paulo", "Sergipe")
grupo_na <- c("Bahia", "Paraíba")

estado <- "Sergipe"
estado <- "Rio de Janeiro"
estado <- "Bahia"
estado <- "Inglaterra"

if (estado %in% grupo_em) {
    msg <- paste("para você que mora em", estado)
} else if (estado %in% grupo_na) {
    msg <- paste("para você que mora na", estado)
} else {
    msg <- paste("para você que mora no", estado)
}

msg

#---- SWTICH métricas --------------------------------------------------

tipo <- "aritmetica"
tipo <- "harmonica"
tipo <- "geometrica"
tipo <- "ajhfaksfhdkashd"

x <- 1:10

switch(tipo,
       "aritmetica" = {
           mean(x)
       },
       "harmonica" = {
           length(x)/sum(1/x)
       },
       "geometrica" = {
           prod(x)^(1/length(x))
       },
       {
           NA_real_
       })


findInterval(5, c(0, 2, 5, 10, Inf))

#---- Comparações com versões simples e duplas de AND e OU -------------

if (c(TRUE, FALSE)) {
    print("oi")
}

c(TRUE, FALSE) & c(TRUE)
c(TRUE, FALSE) && c(TRUE)
c(TRUE, FALSE) | c(TRUE)
c(FALSE, FALSE) || c(FALSE, FALSE)

#---- FOR --------------------------------------------------------------

n <- 20
x <- numeric(n)
x[1] <- 1
x[2] <- 1
x

for (i in 3:n) {
    x[i] <- x[i - 1] + x[i - 2]
}

x

runif(10)

10 %% 3

#---- FOR juros --------------------------------------------------------

invest <- 1000
juros <- c(5430, 4936, 4688,
           5183, 5430, 4668,
           5678, 5017, 4638)/(1000 * 100)
juros

for (j in juros) {
    invest <- invest * (1 + j)
    cat("Taxa do mês:", j, "\t Valor:", invest, "\n")
}

invest

#---- WHILE Fibonacci --------------------------------------------------

xmax <- 10000
x1 <- 1
x2 <- 1
x3 <- x2 + x1

i <- 3
while (x3 < xmax) {
    cat(x1, x2, x3, "\n")
    x1 <- x2
    x2 <- x3
    x3 <- x2 + x1
    i <- i + 1
}

i

#---- REPEAT Fibo ------------------------------------------------------

x1 <- 1
x2 <- 1

phi_real <- (1 + sqrt(5))/2

tol <- 1 * 10^(-4)
tol <- 1E-4

i <- 1

repeat {
    x3 <- x1 + x2
    phi_aprox <- x3/x2
    cond <- abs(phi_aprox - phi_real) < tol
    if (cond) break
    i <- i + 1
    x1 <- x2
    x2 <- x3
}

phi_aprox - phi_real
i

#-----------------------------------------------------------------------
