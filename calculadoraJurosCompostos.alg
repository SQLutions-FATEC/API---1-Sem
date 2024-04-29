Algoritmo "Calculadora de Juros Compostos"

Var
   capital: Real
   taxa:Real
   temp: inteiro
   montante: Real
   contador: Inteiro

Inicio

   Repita
      Escreva("Digite o valor do capital: ")
      Leia(capital)
   ate capital > 0
   
   Escreval
   
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
      Leia(temp)
   ate temp > -1

   montante <- capital
   contador <- 1

   Enquanto contador <= temp faça
      montante <- montante + (montante * taxa / 100)
      contador <- contador + 1
   FimEnquanto
   
   Escreval
   
   Escreval("O valor dos juros são: ", montante-capital)
   Escreval ("O valor total a ser pago são: ",montante)
   
   
   
   

FimAlgoritmo
