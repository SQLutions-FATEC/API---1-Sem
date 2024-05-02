Algoritmo "Calculadora de Juros Compostos"

Var
   capital, taxa, montante, juros: Real
   temp, contador, parteInteiraMontante, parteInteiraJuros, parteDecimalMontante, parteDecimalJuros: Inteiro

Inicio
   Repita
      Escreva("Digite o valor do capital: ")
      Leia(capital)
   ate capital > 0

   Escreval

   Repita
      Escreva("Digite a taxa de juros mensais(%): ")
      Leia(taxa)
      se taxa <= 0 entao
         Escreval("Digite um valor maior que 0")
         Escreval
      fimse
   ate taxa >= 1

   Escreval

   Repita
      Escreva("Digite o tempo em meses: ")
      Leia(temp)
   ate temp > -1

   montante <- capital
   contador <- 1

   Enquanto contador <= temp faca
      montante <- montante + (montante * taxa / 100)
      contador <- contador + 1
   FimEnquanto

   //Arredonda manualmente para duas casas decimais
   parteInteiraMontante <- Int(montante)
   parteDecimalMontante <- Int((montante - parteInteiraMontante) * 100 + 0.5)

   //Calcula os juros
   juros <- montante - capital

   //Separa a parte inteira e decimal dos juros
   parteInteiraJuros <- Int(juros)
   parteDecimalJuros <- Int((juros - parteInteiraJuros) * 100 + 0.5)

   //Exibe os resultados formatados
   Escreval("Total ganho em juros mensal: R$ ", parteInteiraJuros, ",", parteDecimalJuros, " Reais")
   Escreval("Total pago: R$ ", parteInteiraMontante, ",", parteDecimalMontante, " Reais")

FimAlgoritmo
