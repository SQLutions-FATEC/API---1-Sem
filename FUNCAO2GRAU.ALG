Algoritmo "Funcao2Grau"
Var
a, b, c, delta, x1, x2 : real
raiz : inteiro
Inicio
//Leitura das variaveis para o calculo do discriminante(ou delta)
escreval("Insira o primeiro coeficiente: ")
leia(a)
escreval("Insira o segundo coeficiente: ")
leia(b)
escreval("Insira o terceiro coeficiente: ")
leia(c)
//E necessario transformar em 1 pois 0 crasha o programa
se a = 0 entao
   a <- 1
fimse
se b = 0 entao
   b <- 1
fimse
se c = 0 entao
   c <- 1
fimse
//Calculo do discriminante
delta <- b * b - 4 * a * c
//Calculo da raiz
raiz <- 1
repita
raiz <- raiz + 1
ate (raiz * raiz) = delta
//Tratamento do Delta(ou discriminante)
se delta > 0 entao
//Calculo dos dois possiveis resultados
x1 <- (-b + raiz) / (2 * a)
x2 <- (-b - raiz) / (2 * a)
escreval("As raizes geradas para a funcao resultam em:",x1, " e",x2)
fimse
Fimalgoritmo