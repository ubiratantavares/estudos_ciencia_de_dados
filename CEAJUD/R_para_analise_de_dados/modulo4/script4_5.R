tx_juros <- 0.01

n_meses <- 12

rend <- numeric(n_meses)

rend[1] <- 100

for (i in 2:n_meses) {
    rend[i] <- rend[i - 1] * (1 + tx_juros)
}

rend

y <- c(1,2, 1, 4, 0, NA, 3, 2, 4)

s <- 0

for (i in y)
    if (s > 10) break
    if (is.na(i)) next
    s < s + i
    print(i)


n <- 20

x <- numeric(n)

x[1] <- 1
x[2] <- 1

for (i in 3:n) {
    x[i] <- x[i - 1] + x[i - 2]
}

x

invest <- 1000

juros <- c(5430, 4936, 4688, 5183, 5430, 4668, 5678, 5017, 4638) / (1000 * 100)

juros

for (j in juros) {
    invest <- invest * (1 + j)
    cat("Taxa do mês: ", j, "\t Valor: ", invest, "\n")
}

invest


