# Carregar pacotes
library(readxl)

# Questão 1: Carregar a base de dados
meuBairro <- read_excel("caminho/do/arquivo/meuBairro.xlsx")

# Verificações das afirmações
# Afirmativa 1
afirm1 <- meuBairro[10, 4] == "Própria"
print(paste("Afirmação 1:", ifelse(afirm1, "Verdadeira", "Falsa")))

# Afirmativa 2
afirm2 <- meuBairro[, 5] == meuBairro[5, ]  # Comparação incorreta, apenas ilustrativa
print("Afirmação 2: Falsa")  # Explicação: meuBairro[,5] retorna a quinta coluna (não a linha 5)

# Afirmativa 3
alugada <- subset(meuBairro, TMORAR == "Alugada")
afirm3 <- all(alugada$TMORAR == "Alugada")
print(paste("Afirmação 3:", ifelse(afirm3, "Verdadeira", "Falsa")))

# Afirmativa 4
valores_esperados <- meuBairro[20, c(2, 3)]
afirm4 <- all(valores_esperados == c("Fund. Incomp.", "< 700"))
print(paste("Afirmação 4:", ifelse(afirm4, "Verdadeira", "Falsa")))

# Questão 2: Alterar tipo para fator
# Opção correta:
meuBairro$TMORAR <- factor(meuBairro$TMORAR)
print("Questão 2: Opção correta -> meuBairro$TMORAR = factor(meuBairro$TMORAR)")

# Questão 3: Multiplicação
resultado <- meuBairro$PESSOAS * 10
print("Questão 3: Opção correta -> meuBairro$PESSOAS * 10")
