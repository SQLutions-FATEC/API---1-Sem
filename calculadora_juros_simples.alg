Algoritmo "Calculadora de Juros Simples"

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
      Escreva("Digite a taxa de juros ao mês(%): ")
      Leia(taxa)
      se taxa <= 0 entao
         Escreval("Digite um valor maior que 0")
         Escreval
      fimse
   ate verdadeiro // Loop infinito para taxa de juros válida

   Escreval

   Repita
      Escreva("Digite o tempo em meses: ")
      Leia(temp)
      se temp < 0 entao
         Escreval("Digite um valor igual ou maior que 0")
         Escreval
      fimse
   ate temp >= 0

   montante <- capital + (capital * taxa * temp / 100)

   // Arredondando manualmente para duas casas decimais
   parteInteiraMontante <- Int(montante)
   parteDecimalMontante <- Int((montante - parteInteiraMontante) * 100 + 0.5)

   // Calculando os juros
   juros <- montante - capital

   // Separando a parte inteira e decimal dos juros
   parteInteiraJuros <- Int(juros)
   parteDecimalJuros <- Int((juros - parteInteiraJuros) * 100 + 0.5)

   // Exibindo os resultados formatados
   Escreval("Total de juros: R$ ", parteInteiraJuros, ",", parteDecimalJuros)
   Escreval("Total pago: R$ ", parteInteiraMontante, ",", parteDecimalMontante)

FimAlgoritmo
