# Criando um gráfico com ggplot2 e esquisse
install.packages("ggplot2")

library(esquisse)

library(ggplot2)

mpg = mpg
esquisser(mpg)

library(ggplot2)

ggplot(mpg) +
 aes(x = displ, y = hwy, colour = cyl) +
 geom_point(shape = "circle", size = 1.5) +
 scale_color_gradient() +
 labs(x = "Cilindradas do motor", y = "Autonomia na autoestrada", title = "Relação entre consumo e cilindradas do motor", 
 subtitle = "A autonomia diminui a medida que as cilindradas aumentam", caption = "Pacote ggplot2", 
 color = "Cilindros") +
 theme_minimal() +
 theme(plot.title = element_text(size = 18L, face = "bold", 
 hjust = 0.5), plot.subtitle = element_text(hjust = 0.5))
 
