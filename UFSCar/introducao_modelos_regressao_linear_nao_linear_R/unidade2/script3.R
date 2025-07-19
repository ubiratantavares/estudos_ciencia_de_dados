library(nlstools)

read.table("dados_secagem.txt", h = T)
attach(dados)

x <- tempo
y <- pf
z <- log(y)

model1 <- lm(z ~ x)
summary(model1)

model2 <- nls(y ~ exp(-k * x), data=dados, start=c(k = 0.0077612), )
summary(model2)

plot(y ~ x)

curve(exp(-0.0095043 * x), add=T, col="purple")

