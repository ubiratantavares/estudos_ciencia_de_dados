# Atividade 2 - Questão 1

# carregando os pacotes utilizados
library(dplyr)
library(tibble)
library(tidyr)   # <-- ESTE AQUI!
library(modeest)

# inserindo dados dos alunos
notas <-  tribble(~Aluno, ~Prova1, ~Prova2, ~Prova3,
                  "Marcos", 7, 6, 5,
                  "Pedro", 1, 2, 9)
# transformando os dados para formato longo
notas_long <- notas %>% 
              pivot_longer(cols = starts_with("Prova"), names_to = "Prova", 
                           values_to = "Nota")
# calculando a mediana e moda por aluno
resultados <- notas_long %>%
    group_by(Aluno) %>%
    summarise(
        Mediana = median(Nota),
        Moda = mfv(Nota)[1]  # mfv retorna todas as modas, sendo retornado o 
                             # primeiro
    )

# imprimindo os objetos criados
print(notas)
print(notas_long)
print(resultados)
