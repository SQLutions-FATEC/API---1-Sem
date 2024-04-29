Algoritmo "Calculadora de Juros Simples"

Var
   capital: Real
   taxa: Real
   tempjs: inteiro
   juros: Real
   total: Real

Inicio
   repita
      Escreva("Digite o valor do capital: ")
      Leia(capital)
   ate capital > 0

   Escreval

   taxa <- 1

   Repita
      Escreva("Digite a taxa de juros mensal(%): ")
      Leia(taxa)
      se taxa <= 0 entao
         Escreval("Digite um valor maior que 0")
         Escreval
      fimse
   ate taxa >= 1


   Escreval

   repita
      Escreva("Digite o tempo em meses: ")
      Leia(tempjs)
   ate tempjs > 0

   juros <- (capital * taxa * tempjs) / 100
   total <- capital + juros

   Escreval

   Escreval("O valor dos juros são: ", juros)
   Escreval("O valor total a ser pago são: ", total)
FimAlgoritmo
