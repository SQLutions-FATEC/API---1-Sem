Algoritmo "Conversor binarios"
// Disciplina   : [Linguagem e Lï¿½gica de Programaï¿½ï¿½o]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/04/2024
Var
// Seção de Declarações das variáveis 
opcao,opcaobase,retornar,rpt,i,numConversao,memoria,verif: inteiro
num1,num2,result,resto: real
strConversao, strFracao, resultConversao: caractere

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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
            resultConversao <- ("0"+conversao)
            caso 1
            resultConversao <- ("1"+conversao)
            outrocaso
            resultConversao <- "invalido"
            numConversao <- 0
         fimescolha
         numConversao <- (numConversao div 2)
      fimenquanto

      se resultConversao <> "invalido" entao
         escreval("______________________________")
         escreval("|     Conversor de bases     |")
         escreval("|----------------------------|")
         escreval("| ",memoria,"(B10) = ",resultConversao,"(B2)")
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

      escreval("______________________________")
      escreval("|     Conversor de bases     |")
      escreval("|----------------------------|")
      escreval("| ",memoria,"(B2) = ",result,"(B10)")

   caso 3
      escreval("______________________________")
      escreval("|     Conversor de bases     |")
      escreval("|----------------------------|")
      escreval("| num(B2) = resultado(B8)")
      escreva("| Digite o valor em binario:")
      leia(strConversao)
      limpatela

      //memoria <- int(strConversao)

      i <- compr(strConversao)

      enquanto i > 0 faca
         strFracao <- copia(strConversao,(i-2),i)
         verif <- 0
         
         se (strFracao = "0") ou (strFracao = "00") ou (strFracao = "000") entao
            resultConversao <- "0" + resultConversao
            verif <- 1
         fimse
         se (strFracao = "1") ou (strFracao = "01") ou (strFracao = "001") entao
            resultConversao <- "1" + resultConversao
            verif <- 1
         fimse
         se (strFracao = "10") ou (strFracao = "010") entao
            resultConversao <- "2" + resultConversao
            verif <- 1
         fimse
         se (strFracao = "11") ou (strFracao = "011") entao
            resultConversao <- "3" + resultConversao
            verif <- 1
         fimse
         se strFracao = "100" entao
            resultConversao <- "4" + resultConversao
            verif <- 1
         fimse
         se strFracao = "101" entao
            resultConversao <- "5" + resultConversao
            verif <- 1
         fimse
         se strFracao = "110" entao
            resultConversao <- "6" + resultConversao
            verif <- 1
         fimse
         se strFracao = "111" entao
            resultConversao <- "7" + resultConversao
            verif <- 1
         fimse
         se verif = 0 entao
            resultConversao <- "invalido"
            i <- 0
         fimse

         i <- i - 3
      fimEnquanto

      escreval("______________________________")
      escreval("|     Conversor de bases     |")
      escreval("|----------------------------|")
      escreval("| ",strConversao,"(B2) = ",resultConversao,"(B8)")

   caso 4
      escreval("______________________________")
      escreval("|     Conversor de bases     |")
      escreval("|----------------------------|")
      escreval("| num(B8) = resultado(B2)")
      escreva("| Digite o valor em octal:")
      leia(strConversao)
      limpatela

      i <- compr(strConversao)

      enquanto i > 0 faca
         strFracao <- copia(strConversao,i,i)
         verif <- 0

         se (strFracao = "0") entao
            resultConversao <- "000" + resultConversao
            verif <- 1
         fimse
         se (strFracao = "1") entao
            resultConversao <- "001" + resultConversao
            verif <- 1
         fimse
         se (strFracao = "2") entao
            resultConversao <- "010" + resultConversao
            verif <- 1
         fimse
         se (strFracao = "3") entao
            resultConversao <- "011" + resultConversao
            verif <- 1
         fimse
         se (strFracao = "4") entao
            resultConversao <- "010" + resultConversao
            verif <- 1
         fimse
         se (strFracao = "5") entao
            resultConversao <- "101" + resultConversao
            verif <- 1
         fimse
         se (strFracao = "6") entao
            resultConversao <- "110" + resultConversao
            verif <- 1
         fimse
         se (strFracao = "7") entao
            resultConversao <- "111" + resultConversao
            verif <- 1
         fimse
         
         se verif = 0 entao
            resultConversao <- "invalido"
            i <- 0
         fimse

         i <- i - 1
      fimEnquanto

      escreval("______________________________")
      escreval("|     Conversor de bases     |")
      escreval("|----------------------------|")
      escreval("| ",strConversao,"(B8) = ",resultConversao,"(B2)")


   outrocaso
      escreval("Opcao invalida")
fimescolha

Fimalgoritmo