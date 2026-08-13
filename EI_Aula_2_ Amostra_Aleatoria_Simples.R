#Aula 2 - Amostra Aleatória Simples

# Definir a semente para reprodutibilidade
set.seed(42)

#Atribuições da população (N) e tamanho da amostra (n)
N <- 10000
n <- 500

# AAS sem reposição
amostra <- sample(
  1:N,
  size = n,
  replace = FALSE
)

amostra

# AAS com reposição
amostra_1 <- sample(
  1:N,
  size = n,
  replace = TRUE
)

amostra_1