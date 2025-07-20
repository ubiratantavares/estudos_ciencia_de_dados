tipo <- "aritmetica"

x <- 1:10

switch(tipo, 
       "aritmetica" = {
           mean(x)
       },
       "harmonica" = {
           length(x)/sum(1/x)
       },
       "geometrica" = {
           prod(x)^(1/length(x))
       },
       {
           NA_real_
       })


findInterval(5.5, c(0, 2, 5, 10, Inf))
