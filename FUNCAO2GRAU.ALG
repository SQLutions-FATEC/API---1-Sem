Algoritmo "Funcao2Grau"
Var
a, b, c, delta, x1, x2, raiz : real
opcao: inteiro
Inicio
repita
   escreval("Insira o primeiro coeficiente: ")
   leia(a)
   escreval("Insira o segundo coeficiente: ")
   leia(b)
   escreval("Insira o terceiro coeficiente: ")
   leia(c)
   se a = 0 entao
      a <- 1
   fimse
   se b = 0 entao
      b <- 1
   fimse
   se c = 0 entao
      c <- 1
   fimse
   delta <- b * b - 4 * a * c
   raiz <- 0
   escreval("============================================")
   se delta > 0 entao
      repita
         raiz <- raiz + 0.01
      ate (raiz * raiz) >= delta
      x1 <- (-b + raiz) / (2 * a)
      x2 <- (-b - raiz) / (2 * a)
      escreval("O valor de delta e:",delta)
      escreval("A raiz de delta vale aproximadamente:",raiz)
      escreval("As raizes aproximadas para a funcao resultam em:")
      escreval(x1," e",x2)
   senao
      escreval("O valor de delta e:",delta)
      escreval("O resultado e: vazio")
      escreval("Razao: valor de delta e negativo")
      escreval("Nao existem raizes negativas de numeros reais")
   fimse
   escreval("============================================")
   escreval("Deseja realizar a conta novamente?")
   escreval("Sim[0]")
   escreval("Não[1]")
   leia(opcao)
   escreval("============================================")
ate opcao = 1
Fimalgoritmo