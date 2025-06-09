# instalando o pacote vcd
# install.packages("vcd")

# carregando o pacote vcd
library(vcd) 

# informando o valor do nível de significância utilizado
nivel_significancia <- 0.05

# informando a tabela de contingência
dados <- matrix(c(50, 30, 20, 40, 35, 25, 30, 20, 50),
                nrow = 3, byrow = TRUE,
                dimnames = list(Turno = c("Matutino", "Vespertino", "Noturno"),
                            Percepcao = c("Boa", "Regular", "Ruim")))

# calculando o teste do qui-quadrado
teste_qui_quadrado <- chisq.test(dados, correct = FALSE); 

# calculando o coeficiente de contingência C
assoc_stats <- assocstats(dados)
coef_C <- assoc_stats$contingency

# calculando o coeficiente de contingência T
# T = sqrt(X2 / n * sqrt( (r-1) * (s-1) ) )
coef_T <- sqrt((teste_qui_quadrado$statistic) /  
                sum(dados) * sqrt((nrow(dados) - 1) * (ncol(dados) - 1)))

# avaliando o p-valor
if (teste_qui_quadrado$p.value < nivel_significancia) {
    cat("Rejeita-se a hipótese nula (H0).\n")
} else {
    cat("Não rejeita-se a hipótese nula (H0).\n")
}

#exibindo os coeficientes C e T
cat("Coeficiente de Contingência C = ", round(coef_C, 3), "\n")
cat("Coeficiente de contingência T = ", round(coef_T, 2), "\n")
