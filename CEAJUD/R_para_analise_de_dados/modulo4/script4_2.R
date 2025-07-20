#---- IF ELSE cidade -----------------------------------------------------------

grupo_em <- c("Gioiás", "Minas Gerais", "Rondônia", "Roraima",
              "Santa Catarina", "São Paulo", "Sergipe")

grupo_na <- c("Bahia", "Paraíba")

estado <- "Sergipe"
estado <- "Rio de Janeiro"
estado <- "Bahia"
estado <- "Inglaterra"

if (estado %in% grupo_em) {
    msg <- paste("para vocẽ que mora em ", estado)
} else if (estsado %in% grupo_na) {
    msg <- paste("para vocẽr que nora na", estado)
} else {
    msg <- paste("para você que mora no", estado)
}
