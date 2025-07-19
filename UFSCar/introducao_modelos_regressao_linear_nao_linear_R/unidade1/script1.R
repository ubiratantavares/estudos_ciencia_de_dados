x <- c(2, 3, 5, 8, 10, 12, 14, 15)

y <- c(3.5, 5.7, 9.9, 16.3, 19.3, 25.7, 28.2, 32.6)

print(length(x) == length(y))

# calcula o coeficiente de correlação de pearson
cor(x, y)

dados <- data.frame(x, y); dados

# instancia o modelo de regressão linear
model_regressao <- lm(y ~ x, data = dados); model_regressao

summary(model_regressao)

# cria a instancia de uma curva
plot(x, y)
curve(-0.985 + 2.161 * x, add = T, col = "blue")
text(4, 25, expression(y == -0.985 + 2.161 * x), cex = 0.8)
text(4, 22, expression(R^2 == 0.99), cex = 0.8)

