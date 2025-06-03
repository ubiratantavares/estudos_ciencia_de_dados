install.packages("tidyverse")

#Carrega o pacote tidyverse para a memória
library(tidyverse)

arquivo<- "https://raw.githubusercontent.com/fernandobarbalho/enap_auto_instucional/main/data/dados_municipios.csv"

dados_municipios<- read_csv(file= arquivo); dados_municipios

glimpse(dados_municipios)

filter(.data= dados_municipios, sigla_uf=="PE" )

filter(.data= dados_municipios, sigla_uf=="CE" )

dados_municipios %>% filter(sigla_uf=="CE")

dados_municipios %>% filter(sigla_uf=="CE") %>%

filter(populacao > 100000)

names(dados_municipios)

dados_municipios %>% filter(sigla_uf == "CE") 
			     %>% filter(populacao > 100000) 
			     %>% select(sigla_uf,nome, populacao) 

dados_municipios %>% filter(sigla_uf == "CE") 
                 %>% filter(populacao > 100000) 
                 %>% select(sigla_uf,nome, populacao) 
                 %>% arrange(populacao)

dados_municipios %>% filter(sigla_uf == "CE") 
                 %>% filter(populacao > 100000) 
                 %>% select(sigla_uf,nome, populacao) 
                 %>% arrange(desc(populacao)) 

dados_municipios %>% group_by(sigla_uf) 
                 %>% summarise(populacao_estado = sum(populacao))

dados_municipios %>% group_by(sigla_uf) 
                 %>% summarise(populacao_estado = sum(populacao)) 
                 %>% arrange(desc(populacao_estado)) 

dados_municipios %>% group_by(sigla_uf) 
                 %>% summarise(quantidade_municipios = n()) 
                 %>% arrange(desc(quantidade_municipios))

dados_municipios %>% group_by(sigla_uf) 
                 %>% summarise(quantidade_municipios = n(), populacao_estado = sum(populacao), media_populacao = mean(populacao), mediana_populacao = median(populacao)) 
                 %>% arrange(desc(quantidade_municipios)) 

dados_municipios %>% mutate(nome_regiao_saude_uf = paste(nome, nome_regiao_saude, sigla_uf, sep = "-")) 
				 %>% select(nome_regiao_saude_uf, populacao)
