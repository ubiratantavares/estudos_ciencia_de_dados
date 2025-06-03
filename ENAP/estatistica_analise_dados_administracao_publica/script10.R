library(tidyverse)

arquivo <- "https://raw.githubusercontent.com/fernandobarbalho/enap_auto_instucional/main/data/dados_municipios.csv"

dados_municipios <- read_csv(file= arquivo)

dados_municipios %>% filter(nome_regiao=="Nordeste") 
				 %>% ggplot() + geom_boxplot(aes(x=sigla_uf, y=populacao))

dados_municipios %>% filter(nome_regiao=="Nordeste") 
				 %>% ggplot() + geom_boxplot(aes(x=sigla_uf, y=populacao)) + scale_y_log10()


dados_municipios %>% ggplot() + geom_histogram(aes(x=populacao))

dados_municipios %>% ggplot() + geom_histogram(aes(x=populacao), color = "white") + scale_x_log10()
