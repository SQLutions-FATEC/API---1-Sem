Algoritmo "Calculadora Cientifica"

Var
opcao,retornar,rpt,i: inteiro
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
         se result <> 0 entao
            num1 <- result
         senao
            escreval("______________________________")
            escreval("|  Calculadora Cientifica    |")
            escreval("|----------------------------|")
            escreval("| num1 + num2 = resultado")
            escreva("| Digite o primeiro numero:")
            leia(num1)
            limpatela
         fimse
         escreval("______________________________")
         escreval("|  Calculadora Cientifica    |")
         escreval("|----------------------------|")
         escreval("|",num1," + num2 = resultado")
         escreva("| Digite o segundo numero:")
         leia(num2)
         limpatela

         result <- num1 + num2

         escreval("______________________________")
         escreval("|  Calculadora Cientifica    |")
         escreval("|----------------------------|")
         escreval("|",num1," +",num2," =",result)

      caso 2
         se result <> 0 entao
            num1 <- result
         senao
            escreval("______________________________")
            escreval("|  Calculadora Cientifica    |")
            escreval("|----------------------------|")
            escreval("| num1 - num2 = resultado")
            escreva("| Digite o primeiro numero:")
            leia(num1)
            limpatela
         fimse
         escreval("______________________________")
         escreval("|  Calculadora Cientifica    |")
         escreval("|----------------------------|")
         escreval("|",num1," - num2 = resultado")
         escreva("| Digite o segundo numero:")
         leia(num2)
         limpatela

         result <- num1 - num2

         escreval("______________________________")
         escreval("|  Calculadora Cientifica    |")
         escreval("|----------------------------|")
         escreval("|",num1," -",num2," =",result)

      caso 3
         se result <> 0 entao
            num1 <- result
         senao
            escreval("______________________________")
            escreval("|  Calculadora Cientifica    |")
            escreval("|----------------------------|")
            escreval("| num1 * num2 = resultado")
            escreva("| Digite o primeiro numero:")
            leia(num1)
            limpatela
         fimse
         escreval("______________________________")
         escreval("|  Calculadora Cientifica    |")
         escreval("|----------------------------|")
         escreval("|",num1," * num2 = resultado")
         escreva("| Digite o segundo numero:")
         leia(num2)
         limpatela

         result <- num1 * num2

         escreval("______________________________")
         escreval("|  Calculadora Cientifica    |")
         escreval("|----------------------------|")
         escreval("|",num1," *",num2," =",result)

      caso 4
         se result <> 0 entao
            num1 <- result
         senao
            escreval("______________________________")
            escreval("|  Calculadora Cientifica    |")
            escreval("|----------------------------|")
            escreval("| num1 / num2 = resultado")
            escreva("| Digite o primeiro numero:")
            leia(num1)
            limpatela
         fimse
         escreval("______________________________")
         escreval("|  Calculadora Cientifica    |")
         escreval("|----------------------------|")
         escreval("|",num1," / num2 = resultado")
         escreva("| Digite o segundo numero:")
         leia(num2)
         limpatela

         result <- num1 / num2

         escreval("______________________________")
         escreval("|  Calculadora Cientifica    |")
         escreval("|----------------------------|")
         escreval("|",num1," /",num2," =",result)

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