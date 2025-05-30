#install.packages("R6")
library(R6)

# 1. Definindo a classe Pessoa
Pessoa <- R6Class("Pessoa",
                  public = list(
                    nome = NULL,
                    idade = NULL,
                    adulto = NULL,
                    uf = NULL,
                    
                    initialize = function(nome, idade, adulto, uf) {
                      self$nome <- nome
                      self$idade <- idade
                      self$adulto <- adulto
                      self$uf <- uf
                    },
                    
                    apresentar = function() {
                      cat("Nome:", self$nome, 
                          "| Idade:", self$idade, 
                          "| Adulto:", self$adulto, 
                          "| UF:", self$uf, "\n")
                    }
                  )
)

# 2. Criando os objetos
p1 <- Pessoa$new("João", 45, TRUE, "DF")
p2 <- Pessoa$new("José", 12, FALSE, "SP")
p3 <- Pessoa$new("Maria", 28, TRUE, "RJ")
p4 <- Pessoa$new("Joana", 31, TRUE, "MG")

# 3. Criando a lista de clientes
clientes <- list(p1, p2, p3, p4)

# 4. Criando o data.frame a partir da lista de objetos
clientes_df <- data.frame(
  nome   = sapply(clientes, function(p) p$nome),
  idade  = sapply(clientes, function(p) p$idade),
  adulto = sapply(clientes, function(p) p$adulto),
  uf     = sapply(clientes, function(p) p$uf),
  stringsAsFactors = FALSE
)

# Exibir o resultado
print(clientes_df)
