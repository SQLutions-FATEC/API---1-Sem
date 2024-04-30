Algoritmo "Calculadora Cientifica"

Var
opcao,opcaobase,retornar,rpt,i,numConversao,memoria,verif, numFatorial: inteiro
num1,num2,result,resto: real
strConversao, strFracao, resultConversao: caractere

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
         escreval(" _______________________________________________")
         escreval("|             Calculadora Cientifica            |")
         escreval("|-----------------------------------------------|")
         escreval("| num1 * 1,2,3...num1 = resultado               |")
         escreval("| Aviso: Por limitacoes da linguagem            |")
         escreval("| O numero mais alto que pode ser calculado e 12|")
         escreval("| Nao sao aceitos numeros negativos             |")
         escreval("|-----------------------------------------------|")
         escreva ("| Digite o numero que sera utilizado:")
         leia(numFatorial)
         result <- 1
         se numFatorial < 0 entao
            escreval("| Nao e possivel realizar o fatorial            |")
            escreval("| Razao: Numero digitado e negativo             |")
         fimse
         se numFatorial = 0 entao
            escreval("| O fatorial de 0 e igual a 1                   |")
         fimse
         se numFatorial > 12 entao
            escreval("| Nao e possivel calcular o fatorial            |")
            escreval("| Razao: Numero ultrapassa o valor 12           |")
         fimse
         se (numFatorial > 0) e (numFatorial <= 12) entao
            para i de 1 ate numFatorial faca
               result <- result * i
            fimpara
            escreval("| O fatorial de", numFatorial, " e igual a", result)
         fimse
         escreval("|_______________________________________________|")
      caso 6
         escreval("Funcao de 2o Grau")
      caso 7
         escreval("Conversao de bases")
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