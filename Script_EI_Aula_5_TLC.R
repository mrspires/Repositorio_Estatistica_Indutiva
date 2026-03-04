#DISTRIBUIÇÒES AMOSTRAIS 
#TEOREMA DO LIMITE CENTRAL (TLC)

# Parâmetros
tamanho_amostra <- 100
n_amostras <- 1000   # quantidade de amostras

# Fixar semente para reprodutibilidade
set.seed(123)

# Vetor para armazenar médias
medias <- numeric(n_amostras)

# Gerar amostras e calcular médias
for(i in 1:n_amostras) {
  amostra <- sample(alturas_estudantes$altura_cm, tamanho_amostra, replace = FALSE)
  medias[i] <- mean(amostra)
}

# Plotar histograma
hist(medias,
     breaks = 30,
     main = "Histograma das Médias Amostrais (n = 100)",
     xlab = "Média das Alturas (cm)",
     col = "lightblue",
     border = "black")

# Linha da média populacional
abline(v = mean(alturas_estudantes$altura_cm), col = "red", lwd = 2)

# Linha da média das médias
abline(v = mean(medias), col = "darkgreen", lwd = 2, lty = 2)

# Legenda
legend("topright",
       legend = c("Média Populacional", "Média das Médias"),
       col = c("red", "darkgreen"),
       lwd = 2,
       lty = c(1,2))