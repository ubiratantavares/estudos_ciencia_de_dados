install.packages("dados")

library(dados)
library(tidyverse)

dados_gapminder %>% filter(continente=="Américas") 
				%>% filter(ano==2007) 
				%>% ggplot() + geom_point(aes(x=pib_per_capita, y=expectativa_de_vida))

conjunto_continentes <- c("Américas", "África") #Cria um objeto com o conjunto de continentes a ser usado no filtro

dados_gapminder %>% filter(continente %in% conjunto_continentes) 
				%>% filter(ano==2007) 
				%>% ggplot() + geom_point(aes(x=pib_per_capita, y=expectativa_de_vida))


dados_gapminder %>% filter(continente %in% conjunto_continentes) 
				%>% filter(ano==2007) 
				%>% ggplot() + geom_point(aes(x=pib_per_capita, y=expectativa_de_vida, color= continente))

dados_gapminder %>% filter(pais == "Brasil") 
				%>% ggplot() + geom_line(aes(x=ano, y=expectativa_de_vida ))

dados_gapminder %>% filter(pais == "Brasil") 
				%>% ggplot() + geom_line(aes(x=ano, y=expectativa_de_vida )) + geom_point(aes(x=ano, y=expectativa_de_vida))

