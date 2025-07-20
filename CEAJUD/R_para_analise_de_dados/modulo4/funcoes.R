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

#---- Baskara ----------------------------------------------------------

baskara <- function(a, b = 1, c = 0) {
    delta <- b^2 - 4 * a * c
    x <- (-b + c(-1, 1) * sqrt(delta))/(2 * a)
    return(x)
}

args(baskara)
formals(baskara)
body(baskara)

curve(2 * x^2 - 3 * x -3, from = -1, to = 3)
abline(h = 0, col = "red")

x <- baskara(a = 2, b = -3, c = -3)
x

curve(2 * x^2 - 3 * x -3, from = -1, to = 3)
abline(h = 0, col = "red")
abline(v = x, col = "blue")

baskara2 <- function(a, b = 1, c = 0) {
    delta <- b^2 - 4 * a * c
    if (delta < 0) {
        return(c(NA_real_, NA_real_))
    }
    x <- (-b + c(-1, 1) * sqrt(delta))/(2 * a)
    return(x)
}

baskara(a = 2, b = -3, c = 3)
baskara2(a = 2, b = -3, c = 3)

baskara3 <- function(a, b = 1, c = 0) {
    if (a == 0) {
        # stop("O valor de `a` deve ser diferente de 0.")
        message("O valor de `a` deve ser diferente de 0.")
        return(c(NA_real_, NA_real_))
    }
    delta <- b^2 - 4 * a * c
    if (delta < 0) {
        return(c(NA_real_, NA_real_))
    }
    x <- (-b + c(-1, 1) * sqrt(delta))/(2 * a)
    return(x)
}

suppressMessages(baskara3(a = 0, b = -3, c = 3))

#---- Triangulo --------------------------------------------------------

calc_area <- function(X) {
    a1 <- 0
    a2 <- 0
    n <- nrow(X)
    X <- rbind(X, X[1, ])
    for (i in 1:n) {
        a1 <- a1 + X[i, 1] * X[i + 1, 2]
        a2 <- a2 + X[i + 1, 1] * X[i, 2]
    }
    return(abs(a1 - a2)/2)
}

X <- rbind(c(0, 0),
           c(1, 0),
           c(0, 1))
calc_area(X)

X <- rbind(c(0, 0),
           c(1, 0),
           c(1, 1),
           c(0, 1))
calc_area(X)

mean()
