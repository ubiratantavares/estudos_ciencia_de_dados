install.packages("questionr")

library(questionr)

nome_hospital <- c("São Sebastião","João Paulo II","Trindade","São Clemente","Hospital Regional", "Hospital Geral")

rede_hospitalar <- c("municipal","municipal","federal","estadual","estadual","municipal")

hospitais <- data.frame(nome_hospital= nome_hospital, rede_hospitalar= rede_hospitalar)

hospitais$nome_hospital

hospitais$rede_hospitalar

questionr::freq(x= hospitais$rede_hospitalar, cum = TRUE, sort = "dec")
