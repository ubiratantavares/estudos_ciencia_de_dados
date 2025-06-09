# instalando o pacote
# install.packages("ggplot2")

# carregando o pacote ggplot2
library(ggplot2)

# criando um dataframe com a base de ddos fornecida
cidades <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J")
onibus <- c(0.8, 1.2, 0.5, 1.0, 1.4, 0.6, 1.3, 0.9, 1.1, 0.7)
tempos <- c(54, 46, 60, 50, 43, 58, 44, 52, 48, 56)
dados <- data.frame(Cidades = cidades,
                    Onibus = onibus,
                    Tempos  = tempos)

# construindo o gráfico de dispersão
grafico_dispersao <- ggplot(dados, aes(x = Onibus, y = Tempos)) +
                     geom_point(color = "darkblue", size = 2) + 
  					 labs(title = "Gráfico de Dispersão",
    					  x = "Número de Ônibus por 1.000 Habitantes",
                          y = "Tempo Médio de Deslocamento Diário (min)") +
                     theme_minimal() + 
                     theme(plot.title = element_text(hjust = 0.5))

# exibindo o gráfico de dispersão
grafico_dispersao

# calculando o coeficiente de correlação linear de Pearson
correlacao_pearson <- cor(dados$Onibus, dados$Tempos, method = "pearson")

# exibindo o coeficiente de correlação linear de Pearson
cat("Coeficiente de correlação linear de Pearson: ", 
    round(correlacao_pearson, 3), "\n")
