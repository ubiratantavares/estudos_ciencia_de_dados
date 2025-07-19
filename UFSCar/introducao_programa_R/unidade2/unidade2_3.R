for (i in seq(1, 5)) {
    print(i)
}

gera <- function(num1, num2, passo) {
    for (x in seq(num1, num2, passo)) {
        print(x)
    }
    print("FIM")
}

gera(1, 5, 1)

?seq

seq(0, 1, length = 5)

seq(0, 1, by = 0.25)

seq(1, 9, by = 2)

seq(1, 9, by = pi)

seq(1, 6, by = 3)

seq(1.575, 5.125, by = 0.05)

seq(17)

x <- 1

while (x < 11) {
    print(x)
    x <- x + 1
}

gera <- function(num1, num2, passo) {
    while (num1 < num2) {
        print(num1)
        num1 <- num1 + passo
    }
    print("FIM")
}

gera(1, 11, 1)