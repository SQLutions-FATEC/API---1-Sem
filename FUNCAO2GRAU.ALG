Algoritmo "Funcao2Grau"
Var
a, b, c, delta, x1, x2, raiz : real
opcao: inteiro
Inicio
repita
   escreval("Se a raiz de delta for real o numero sera apenas uma aproximacao")
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
//Tratamento do Delta(ou discriminante)
   se delta > 0 entao
//Calculo da raiz
//Por conta das limitacoes do visualg raizes reais so conseguem
//dar os valores aproximados
   raiz <- 1
      repita
         raiz <- raiz + 0.01
      ate (raiz * raiz) >= delta
//Calculo dos dois possiveis resultados
      x1 <- (-b + raiz) / (2 * a)
      x2 <- (-b - raiz) / (2 * a)
      escreval("As raizes aproximadas para a funcao resultam em:",x1," e",x2)
   fimse
   escreval("============================================")
   escreval("Deseja realizar a conta novamente?")
   escreval("Sim[0]")
   escreval("Não[1]")
   leia(opcao)
   escreval("============================================")
ate opcao = 1
Fimalgoritmo