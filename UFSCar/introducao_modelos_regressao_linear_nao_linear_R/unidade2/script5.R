library(nlstools)

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

beta0 <-  intercepto

beta1 <- coef_u

theta1 <- 1/beta0; theta1

theta2 <- beta1 * theta1; theta2

model2 <- nls(y ~ ((t1 * x) / (x + t2)), data=dados, start=c(t1=theta1, t2=theta2), trace=T)

summary(model2)

# Extrair apenas os valores numéricos dos coeficientes
coeficientes <- as.numeric(coef(model2))
summary(model2)

# Atribuir os coeficientes a variáveis separadas
intercepto <- coeficientes[1]
coef_u <- coeficientes[2]


plot(pf ~ tempo)
curve(intercepto * x / (x + coef_u), add=T, col="orange")

