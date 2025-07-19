read.table("dados_secagem.txt", h = T)
attach(dados)

x <- tempo
y <- pf

u <- 1/x
v <- 1/y

model1 <- lm(v ~ u)

summary(model1)

# Extrair apenas os valores numéricos dos coeficientes
coeficientes <- as.numeric(coef(model1))

# Atribuir os coeficientes a variáveis separadas
intercepto <- coeficientes[1]
coef_u <- coeficientes[2]

# Imprimir os valores
print(intercepto)
print(coef_u)
