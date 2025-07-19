dados <- read.table("dados_secagem.txt", h = T)
attach(dados)
x <- tempo
y <- pf
plot(x, y)
reg <- lm( y ~ x)
summary(reg)
curve(0.7444486 - 0.0029114 * x, add = T, col = "blue")
reg2 <- lm(y ~ x + I(x^2), data = dados)
summary(reg2)
curve(0.9786 - 0.007955 * x + 0.00001919 * x ^ 2, add = T, col = "green")