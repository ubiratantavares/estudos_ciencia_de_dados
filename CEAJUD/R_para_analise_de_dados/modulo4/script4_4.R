# notas dos alunos

notas <- c("Ana" = 89, "Márcia" = 81,
           "Tiago" = 65, "Rodrigo" = 35)

# usando IF-ELSE vetorial
ifelse(notas >= 70, "Aprovado",
       ifelse(notas >= 40, 
              "Exame", 
              "Reprovado"))


# usando switch vetorial
dplyr::case_when(notas >= 70 ~ "Aprovado",
                 notas >= 40 ~ "Exame",
                 TRUE ~ "Reprovado")
