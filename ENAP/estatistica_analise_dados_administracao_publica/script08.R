library(tidyverse)

arquivo <- "https://raw.githubusercontent.com/fernandobarbalho/enap_auto_instucional/main/data/dados_municipios.csv"

dados_municipios <- read_csv(file= arquivo)

dados_municipios %>% filter(sigla_uf == "PE") 
                 %>% filter(populacao>100000) 
                 %>% ggplot() + geom_col(aes(x=populacao, y=nome))

dados_municipios %>% slice_max(populacao, n=10) 
                 %>% ggplot() + geom_col(aes(x=populacao, y=nome))


dados_municipios %>% slice_max(populacao, n=10) 
                 %>% mutate(nome=reorder(nome, populacao)) 
                 %>% ggplot() + geom_col(aes(x=populacao, y=nome))

dados_municipios %>% slice_max(populacao, n=10) 
                 %>% mutate(nome=reorder(nome, populacao)) 
                 %>% ggplot() + geom_col(aes(x=populacao, y=nome, fill=nome_regiao))
