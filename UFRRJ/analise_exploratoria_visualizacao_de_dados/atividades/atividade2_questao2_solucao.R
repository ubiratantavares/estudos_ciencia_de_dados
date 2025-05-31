# carregando os pacotes utilizados
library("ggplot2")
library("dplyr")

# inserindo os dados dos tempos em minutos
tempos <- c(22, 24, 25, 27, 28, 29, 30, 31, 33, 35, 90)

# realizando os cálculos estatísticos com os dados amostrais
minimo <- min(tempos)
maximo <- max(tempos)
mediana <- median(tempos)
q1 <- quantile(tempos, 0.25)
q2 <- quantile(tempos, 0.50)
q3 <- quantile(tempos, 0.75)
iqr <-  IQR(tempos)
limite_inferior <- q1 - 1.5 * iqr
limite_superior <-  q3 + 1.5 * iqr
outliers <- tempos[tempos < limite_inferior | tempos > limite_superior]

# imprimindo os objetos
cat("Mediana = ", mediana, "\n")
cat("Quartil q1 = ", q1, "\n")
cat("Quartil q2 = ", q2, "\n")
cat("Quartil q3 = ", q3, "\n")
cat("Limite inferior = ", limite_inferior, "\n")
cat("Limite superior = ", limite_superior, "\n")
cat("Outliers = ", outliers, "\n")

# criando um dataframe 
df <- tibble::tibble(Tempos=tempos)

# plotando o gráfico boxplot
ggplot(df, aes(x = "", y = Tempos)) + 
    geom_boxplot(fill = "skyblue", outlier.color = "red", outlier.shape = 8) +
    labs(title = "Boxplot dos Tempos", y = "Minutos") + 
    coord_cartesian(ylim = c(minimo, maximo)) +
    theme_minimal()

