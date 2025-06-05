# Utilização de subscritos: comandos que identificam elementos específicos nos objetos

nomesDosAlunos = c("João","Maria","José","Pedro","Ana")
nomesDosAlunos[3] #mostra o terceiro elemento do objeto
nomesDosAlunos[-3] #lista todos os elementos, exceto o terceiro
nomesDosAlunos[c(1,3,5)] #lista os elementos nas posições indicadas
nomesDosAlunos[3:5] #lista os elementos das posições 3 a 5
nomesDosAlunos[seq(3,5)] #lista os elementos das posições 3 a 5
nomesDosAlunos[seq(1,5, by=2)] #lista os elementos de 1 a 5, pulando de 2 em 2
nomesDosAlunos[3] = "Paulo"
nomesDosAlunos[6] = "José"
nomesDosAlunos[8] = "Tobias"
length(nomesDosAlunos) #mostra a quantidade de elementos de um objeto
nomesDosAlunos[length(nomesDosAlunos)+1] = "Jairo"
print(nomesDosAlunos)

mtcars=mtcars
mtcars[3,4] #dado da terceira linha, quarta coluna
mtcars[3:5,4] #dados das linhas 3 a 5, quarta coluna
terceiraColuna = mtcars[,3] #todos os dados da terceira coluna
terceiraLinha = mtcars[3,] #todos os dados da terceira linha
mtcarsSelecao = mtcars[,1:3] #todos os dados das três primeiras colunas

#Criação de subgrupos
carrosEconomicos=subset(mtcars, mpg>22)
carrosAutomaticos=subset(mtcars, am==0)


#Correção das atividades
esoph = esoph
esoph[40,4]
ativ3 = esoph[,2:4]
ativ4 = subset(esoph, ncases>=4)
