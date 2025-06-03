# Instalar e carregar pacotes necessários
if (!require("wordcloud")) install.packages("wordcloud")
if (!require("RColorBrewer")) install.packages("RColorBrewer")

library(wordcloud)
library(RColorBrewer)

# Dados de exemplo: texto fictício
texto <- c(
  "requisitos", "negócios", "técnicos", "análise", "processo",
  "stakeholders", "priorização", "validação", "desenvolvimento",
  "documentação", "sistemas", "projetos", "gestão", "software")

# Frequências associadas às palavras
frequencias <- c(15, 10, 8, 12, 7, 5, 6, 8, 9, 4, 3, 5, 6, 2)

# Gerar nuvem de palavras
set.seed(123) # Para reprodutibilidade
wordcloud(
  words = texto,
  freq = frequencias,
  min.freq = 1,
  max.words = 100,
  random.order = FALSE,
  colors = brewer.pal(8, "Dark2"))
