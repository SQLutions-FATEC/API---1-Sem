Algoritmo "Calculadora Cientifica"

Var
opcao,opcaobase,retornar,rpt,i,numConversao: inteiro
num1,num2,result,resto,memoria: real
conversao: caractere

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
            escreval("______________________________")
            escreval("|    Conversor de bases      |")
            escreval("|----------------------------|")
            escreval("| 1 - B10 x B2               |")
            escreval("| 2 - B2 x B10               |")
            escreval("| 3 - B2 x B8                |")
            escreval("| 4 - B8 x B2                |")
            escreval("| 5 - B2 x B16               |")
            escreval("| 6 - B16 x B2               |")
            escreval("| 0 - Voltar                 |")
            escreval("|____________________________|")
            escreva("| Selecione uma conversao:")
            leia(opcaobase)
            limpatela
            
            escolha opcaobase
               caso 1
                  escreval("______________________________")
                  escreval("|     Conversor de bases     |")
                  escreval("|----------------------------|")
                  escreval("| num(B10) = resultado(B2)")
                  escreva("| Digite o valor em decimal:")
                  leia(numConversao)
                  limpatela
                  
                  memoria <- numConversao

                  enquanto (numConversao > 0) faca
                     escolha (numConversao mod 2)
                        caso 0
                        conversao <- ("0"+conversao)
                        caso 1
                        conversao <- ("1"+conversao)
                        outrocaso
                        conversao <- "invalido"
                        numConversao <- 0
                     fimescolha
                     numConversao <- (numConversao div 2)
                  fimenquanto
                  
                  se conversao <> "invalido" entao
                     escreval("______________________________")
                     escreval("|     Conversor de bases     |")
                     escreval("|----------------------------|")
                     escreval("| ",memoria,"(B10) = ",conversao,"(B2)")
                  fimse
                  
               caso 2
                  escreval("______________________________")
                  escreval("|     Conversor de bases     |")
                  escreval("|----------------------------|")
                  escreval("| num(B2) = resultado(B10)")
                  escreva("| Digite o valor em decimal:")
                  leia(numConversao)
                  limpatela

                  memoria <- numConversao
                  
                  i <- 0
                  
                  enquanto numConversao > 0 faca
                     result <- int(result + (numConversao % 10) * (2 ^ i))
                     numConversao <- int(numConversao / 10)
                     i <- i + 1
                  fimEnquanto
                  
                  se conversao <> "invalido" entao
                     escreval("______________________________")
                     escreval("|     Conversor de bases     |")
                     escreval("|----------------------------|")
                     escreval("| ",memoria,"(B2) = ",result,"(B10)")
                  fimse
                  
               outrocaso
                  escreval("Opcao invalida")
            fimescolha
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