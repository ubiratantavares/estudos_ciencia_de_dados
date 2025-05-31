# carregando os pacotes utilizados
library(dplyr)
library(ggplot2)
library(tibble)

# carregando os dados
investimento <- tibble::tibble(
    Cidade = LETTERS[1:10],
    Valor = c(20, 16, 14, 8, 19, 15, 14, 16, 19, 18)
)

# calculando ao média inicial
media_inicial <- mean(investimento$Valor)

# calculando o desvio-padrão
desvio <- sd(investimento$Valor)

# calculando o limite inferior
lim_inf <- media_inicial - 2 * desvio

# calculando o limite superior
lim_sup <- media_inicial + 2 * desvio

# filtrando os dados
filtrado <- investimento %>%
            filter(Valor >= lim_inf & Valor <= lim_sup)

filtrado

# calculando a média final
media_final <- mean(filtrado$Valor)

# imprimindo os resultados dos objetos criados
cat("Média inicial das amostras: ", media_inicial, "\n")
cat("Desvio-padrão das amostras: ", desvio, "\n")
cat("Limite inferior: ", lim_inf, "\n")
cat("Limite superior: ", lim_sup, "\n")
cat("Média final: ", media_final, "\n")

# visualizando os dados
ggplot(investimento, aes(x = reorder(Cidade, Valor), y = Valor)) +
    geom_col(fill = ifelse(investimento$Valor >= lim_inf 
    & investimento$Valor <= lim_sup, "steelblue", "tomato")) +
    geom_hline(yintercept = media_final, linetype = "dashed", color = "black") +
    labs(title = "Investimento por Cidade", y = "Valor", 
         x = "Cidade") +
    theme_minimal()

