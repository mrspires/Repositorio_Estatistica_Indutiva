#INTRODUÇÀO A INFERÊNCIA ESTATÍSTICA 

#EXEMPLO: obtenção de uma amostra de 100 alunos e usamos essa média para estimar
#a média populacional.
#Pergunta: O que pode acontecer se escolhermos amostras diferentes?
  
# Definir tamanho da amostra
tamanho_amostra <- 100

# Coletar amostra aleatória simples de 100 alturas
amostra <- sample(alturas_estudantes$altura_cm, tamanho_amostra, replace = FALSE)

# Calcular a média da amostra
media_amostral <- mean(amostra)

# Exibir resultado
media_amostral

# Vamos coletar 10 amostras e obter as médias delas

# Número de amostras
n_amostras <- 10

# Vetor para armazenar as médias
medias <- numeric(n_amostras)

for(i in 1:n_amostras) {
  amostra <- sample(alturas_estudantes$altura_cm, 100, replace = FALSE)
  medias[i] <- mean(amostra)
}

# Mostrar as médias
medias
