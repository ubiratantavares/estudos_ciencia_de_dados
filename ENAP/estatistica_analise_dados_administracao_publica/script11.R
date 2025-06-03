arquivo<- "https://raw.githubusercontent.com/fernandobarbalho/enap_auto_instucional/main/data/dados_saude_municipio.csv"

dados_saude_municipio<-
read_csv(file = arquivo)

dados_saude_municipio%>%
ggplot()+
geom_point(aes(x=populacao, y=perc))

dados_saude_municipio%>%
ggplot()+
geom_point(aes(x=populacao, y=perc))+
scale_x_log10()


cor(log10(dados_saude_municipio$populacao), dados_saude_municipio$perc)


dados_saude_municipio%>%
ggplot()+
geom_point(aes(x=populacao, y=valor))

dados_saude_municipio%>%
ggplot()+
geom_point(aes(x=populacao, y=valor))+
scale_x_log10() +
scale_y_log10()

cor(log10(dados_saude_municipio$populacao), log10(dados_saude_municipio$valor))
