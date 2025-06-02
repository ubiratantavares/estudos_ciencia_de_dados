# carregando os pacotes
library(ggplot2)
library(tibble)

# simulando os dados baseados nas medidas fornecidas
set.seed(123)
renda <- c(rnorm(95, mean = 700, sd = 100), runif(5, 1200, 3000))

# carregando as estatísticas fornecidas
media <- 850
mediana <- 700
moda <- 600
curtose <- 5.2

# criando um dataframe
df <- tibble::tibble(Renda = renda)

# construindo o gráfico com os dados simulados
ggplot(df, aes(x = Renda)) +
    geom_histogram(bins = 30, fill = "skyblue", color = "white") +
    
    # Linhas verticais para medidas
    geom_vline(xintercept = media, color = "red", 
               linetype = "dashed", size = 1.2) +
    geom_vline(xintercept = mediana, color = "blue", 
               linetype = "dotted", size = 1.2) +
    geom_vline(xintercept = moda, color = "darkgreen", 
               linetype = "dotdash", size = 1.2) +
    
    # Legenda manual com annotate
    annotate("text", x = media + 20, y = Inf, label = "Média", 
             color = "red", hjust = 0, vjust = 2, size = 4) +
    annotate("text", x = mediana + 20, y = Inf, label = "Mediana", 
             color = "blue", hjust = 0, vjust = 3.5, size = 4) +
    annotate("text", x = moda + 20, y = Inf, label = "Moda", 
             color = "darkgreen", hjust = 0, vjust = 5, size = 4) +
    
    labs(
        title = "Distribuição Simulada da Renda per Capita",
        x = "Renda (R$)", y = "Frequência"
    ) +
    theme_minimal()
