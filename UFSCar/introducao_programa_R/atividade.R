# questão 2
vetor = c(seq(0, 9.9, by = 1.1), 10); vetor

# questão 3
cidades <- c("Florianópolis", "Blumenau", "Piracicaba",
             "Sorocaba", "Palmas", "Goianésia", "Ilhéus",
             "Porto Seguro", "Belém", "Boa Vista")

regiao <- c ("Sul", "Sul", "Sudeste", "Sudeste", "Centro-Oeste",
             "Centro-Oeste", "Nordeste", "Nordeste", "Norte",
             "Norte")

habitantes <- c(477798, 352460, 297767, 644919, 217056, 69062, 148437, 80240, 143474, 277799)

df <- data.frame(cidades, regiao, habitantes); df

tapply(habitantes, regiao, mean)

# questao 4
funcao=function(a,b){
      if(a!=b)
          print(a + b)
      else
          print(a * b)
}

funcao(6,2)


# questao 5
mediana <- function(x){
                n <- length(x)
                sort.x <- sort(x)
                if (n %% 2 == 1) 
                	m <- sort.x[(n+1)/2] 
                else
                	m <- mean(sort.x[c(n/2,n/2+1)])
                m
                }

x = c(1, 3, 2, 5, 4)

mediana(x)


# questão 6
alturas <- c(180, 165, 160, 193, 172, 158)

pesos  <- c(87, 58, 65, 100, 68, 43)

alturas.m  <- alturas/100

IMC <- pesos/alturas.m^2

log.IMC <- log(IMC)

par(mfrow = c(2,1))

plot(alturas.m, IMC,  cex = 0.75, pch = 20,

     xlim = c(1.5, 2), ylim = c(15,30),

     xlab = 'Alturas (em m)', ylab = 'IMC')

plot(alturas.m, log.IMC,  cex = 0.75, pch = 20,

     xlim = c(1.5, 2), ylim = c(log(15),log(30)),

     xlab = 'Alturas (em m)',  ylab = 'Log(IMC)')



# questao 18

# O tempo de utilização de caixas eletrônicos depende de cada usuário e das operações efetuadas. 

## Foram coletadas 26 medidas desse tempo (em minutos) em um determinado banco.

caixa  =c(1.1,1.2,1.7,1.5,0.9,1.3,1.4,1.6,1.7,1.6,1,0.8,1.5,1.3,1.7,1.6,1.4,1.2,1.2,1,0.9,1.8,1.7,1.5,1.3,1.5); caixa

n = length(caixa); n

k = round(sqrt(n)); k

cmin = min(caixa); cmin

cmax = max(caixa); cmax

A = cmax - cmin; A

c =(cmax-cmin)/(k-1); c

LI1 = cmin - c/2; LI1

LSk = cmax + c/2; LSk

LimClass = seq(LI1, LSk, c); LimClass

h=hist(caixa, breaks=LimClass, main="",
       xlab="Tempo de uso (min)", ylab="Frequências absolutas",
       col="lightblue",axes=FALSE, ylim=c(0,10),
       panel.first=grid())
	   axis(1,at=round(LimClass,3))
	   axis(2,at=seq(0,13,by=1), las=2)
	   points(h$mids,h$counts,type="o", lwd=2, pch=16)

fa = h$counts; fa

fr = fa/n; fr

fp = fr*100; fp

Fa = c(0, cumsum(fa)); Fa

Fr = Fa / n; Fr

Fp = Fr*100; Fp

mean(caixa)

sd(caixa)

median(caixa)

 
# questão 19
# Dados originais
var = c(rep(1,14), rep(2,12), rep(3,4))
var

# Número total de observações
n = length(var)
n

# Frequências absolutas por categoria
tvar = table(var)
tvar

# Frequências relativas e percentuais
fr = tvar / n
fr

fp = fr * 100
fp

# Rótulos para o gráfico de pizza, com porcentagens
varv <- paste(names(tvar), "\n", round(fp, 2), "%", sep = " ")

# Gráfico de pizza com frequências absolutas
pie(tvar, col = c(2, 3, 4), labels = varv, main = "Meios de transporte")

# Configurações para o gráfico de barras
par(las = 1, cex = 1.2, lwd = 6)

# Gráfico de barras horizontal com frequências absolutas
barplot(tvar, col = "blue", ylab = "Frequências absolutas",
        names.arg = c("1", "2", "3"), horiz = TRUE, density = 10, angle = 45)

