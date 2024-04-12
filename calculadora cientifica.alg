Algoritmo "Calculadora Científica"

Var
opcao,retornar,rpt: inteiro
num1,num2,result,resto: real

Inicio

repita

      escreval("______________________________")
      escreval("|  Calculadora Cientifica    |")
      escreval("|----------------------------|")
      escreval("| 1 - Soma                   |")
      escreval("| 2 - Subtracao              |")
      escreval("| 3 - Multiplicacao          |")
      escreval("| 4 - Divisao                |")
      escreval("| 5 - Fatorial               |")
      escreval("| 6 - Funcao de 2o grau      |")
      escreval("| 7 - Conversao de Base Num. |")
      escreval("| 8 - Concatenacao de string |")
      escreval("| 9 - Juros                  |")
      escreval("| 0 - Sair                   |")
      escreval("|____________________________|")
      escreva("| Selecione uma opcao:")
      leia(opcao)

   limpatela

   escolha opcao
      caso 1
         escreval("Soma")
      caso 2
         escreval("Subtracao")
      caso 3
         escreval("Multiplicacao")
      caso 4
         escreval("Divisao")
      caso 5
         escreval("Fatorial")
      caso 6
         escreval("Funcao de 2o Grau")
      caso 7
         escreval("Conversao de base numerica")
      caso 8
         escreval("Concatenacao de strings")
      caso 9
         escreval("Juros simples ou compostos")
      caso 0
         escreval("Saindo!")
         interrompa
      outrocaso
         escreval("Opcao invalida!")
   fimescolha

   escreval("______________________________")
   escreval("| Deseja retornar ao inicio? |")
   escreval("|----------------------------|")
   escreval("| 1 - Sim                    |")
   escreval("| 0 - Sair                   |")
   escreval("|____________________________|")
   escreva("| Selecione uma opcao:")
   leia(retornar)

   limpatela

   se (retornar = 1) e (result <> 0) entao
      escreval("______________________________")
      escreval("| Deseja repetir o valor     |")
      escreval("| em outra operacao basica?  |")
      escreval("|----------------------------|")
      escreval("|",result)
      escreval("|----------------------------|")
      escreval("| 1 - Sim                    |")
      escreval("| 0 - Nao                    |")
      escreval("|____________________________|")
      escreva("| Selecione uma opcao:")
      leia(rpt)

      se rpt = 0 entao
         result <- 0
      fimse
   fimse

   limpatela

   ate retornar = 0

Fimalgoritmo