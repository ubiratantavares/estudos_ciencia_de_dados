h <- 8

if (h >= 6 & h < 12) {
    saudacao <- "Bom dia!"
} else if (h >= 12 & h < 18) {
    saudacao <- "Boa tarde!"
} else if (h >= 18 & h < 23) {
    saudacao <- "Boa noite!"
} else {
    stop("Não enviar mensagem!")
}

saudacao
