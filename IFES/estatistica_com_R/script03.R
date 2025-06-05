nomesDosAlunos = c("João","Maria","José","Pedro","Ana")
sexo = c("Masculino","Feminino","Masculino","Masculino","Feminino")
notaProva1 = c(10,9,9.5,8,9)
notaProva2 = c(9,9.5,10,9,8)
notaTotal = notaProva1 + notaProva2
diarioDeNotas = data.frame(nomesDosAlunos,sexo,notaProva1,notaProva2,notaTotal)
class(diarioDeNotas)
str(diarioDeNotas)
mtcars = mtcars
mpg = mtcars$mpg
cyl = mtcars$cyl
mtcarsSelecao = data.frame(mpg,cyl)
library(readxl)
mtcarsExcel <- read_excel("basesDeDados/mtcars.xlsx",
sheet = "Base", col_types = c("text",
"numeric", "numeric", "numeric",
"numeric", "text", "text", "text",
"numeric", "numeric", "numeric", "skip"))
