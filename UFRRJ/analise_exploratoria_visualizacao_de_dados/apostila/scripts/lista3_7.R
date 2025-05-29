# vetor
v = c("media", "baixa", "media", "alta", "baixa", "baixa", "alta", "media", "alta", "media"); v

# criando um vetor convertido em fator com níveis não-ordenados
cs = factor(v); cs

# criando um vetor convertido em fator com níveis ordenados
cs = factor(v, ord=T, levels=c("baixa", "media", "alta")); cs

