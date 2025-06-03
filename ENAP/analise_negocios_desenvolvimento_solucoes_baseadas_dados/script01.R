# Exemplo básico de organização de requisitos
library(dplyr)

requisitos <- data.frame(
  ID = 1:4,
  Tipo = c("Funcional", "Não Funcional", "Funcional", "Não Funcional"),
  Descrição = c(
    "Permitir cadastro de usuários",
    "Resposta em até 1 segundo",
    "Gerar relatórios",
    "Operar offline"),
  Prioridade = c("Alta", "Média", "Alta", "Baixa")
)

# Visualização organizada
requisitos %>% arrange(Prioridade)
