Algoritmo "Calculadora Cientifica"

Var
opcao,opcaoBase,opcaoJuros,retornar,rpt,i,numConversao,memoria,verif, numFatorial,temp, contador, parteInteiraMontante, parteInteiraJuros, parteDecimalMontante, parteDecimalJuros: inteiro
num1,num2,result,resto,capital, taxa, montante, juros,a, b, c, delta, x1, x2, raiz: real
str1,str2,strResult,strConversao,strFracao,memoriaStr,resultConversao: caractere

Inicio

repita
   result <- 0
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
         escreval("______________________________")
         escreval("|  Calculadora Cientifica    |")
         escreval("|----------------------------|")
         escreval("| num1 + num2 = resultado")
         escreva("| Digite o primeiro numero:")
         leia(num1)
         limpatela

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
         escreval("______________________________")
         escreval("|  Calculadora Cientifica    |")
         escreval("|----------------------------|")
         escreval("| num1 - num2 = resultado")
         escreva("| Digite o primeiro numero:")
         leia(num1)
         limpatela

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
         escreval("______________________________")
         escreval("|  Calculadora Cientifica    |")
         escreval("|----------------------------|")
         escreval("| num1 * num2 = resultado")
         escreva("| Digite o primeiro numero:")
         leia(num1)
         limpatela

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
         escreval("______________________________")
         escreval("|  Calculadora Cientifica    |")
         escreval("|----------------------------|")
         escreval("| num1 / num2 = resultado")
         escreva("| Digite o primeiro numero:")
         leia(num1)
         limpatela

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
      caso 6
         escreval("______________________________")
         escreval("|     Funcao de 2o grau      |")
         escreval("|----------------------------|")
         escreval("| ax� + bx + c = 0")
         escreva("| Digite o valor de a:")
         leia(a)
         limpatela
         
         escreval("______________________________")
         escreval("|     Funcao de 2o grau      |")
         escreval("|----------------------------|")
         escreval("| ",a,"x� + bx + c = 0")
         escreva("| Digite o valor de b:")
         leia(b)
         limpatela
         
         escreval("______________________________")
         escreval("|     Funcao de 2o grau      |")
         escreval("|----------------------------|")
         escreval("| ",a,"x� + ",b,"x + c = 0")
         escreva("| Digite o valor de c:")
         leia(c)
         limpatela
         
         delta <- b * b - 4 * a * c
         raiz <- 0
         se delta >= 0 entao
            se delta > 0 entao
               repita
                  raiz <- raiz + 0.01
               ate (raiz * raiz) >= delta
            fimse
            x1 <- (-b + raiz) / (2 * a)
            x2 <- (-b - raiz) / (2 * a)
            escreval("______________________________")
            escreval("|     Funcao de 2o grau      |")
            escreval("|----------------------------|")
            escreval("| delta = ",delta)
            escreval("| raiz de delta = ",raiz:2:0)
            escreval("| x1 = ",x1:2:0,"; x2 = ",x2:2:0)
         senao
            escreval("______________________________")
            escreval("|     Funcao de 2o grau      |")
            escreval("|----------------------------|")
            escreval("| delta = ",delta)
            escreval("| raiz de delta = N�o h� raiz para valores negativos")
            escreval("| x1 = Nao existe; x2 = Nao existe")
         fimse
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
         leia(opcaoBase)
         limpatela
         
         resultConversao <- ""

         escolha opcaoBase
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
                     resultConversao <- ("0"+resultConversao)
                     caso 1
                     resultConversao <- ("1"+resultConversao)
                     outrocaso
                     resultConversao <- "nao ha"
                     numConversao <- 0
                  fimescolha
                  numConversao <- (numConversao div 2)
               fimenquanto

               se resultConversao <> "invalido" entao
                  escreval("______________________________")
                  escreval("|     Conversor de bases     |")
                  escreval("|----------------------------|")
                  escreval("| ",memoria,"(B10) = ",resultConversao,"(B2)")
               senao
                  escreval("______________________________")
                  escreval("|     Conversor de bases     |")
                  escreval("|----------------------------|")
                  escreval("| invalido(B10) = ",resultConversao,"(B2)")
               fimse

            caso 2
               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| num(B2) = resultado(B10)")
               escreva("| Digite o valor em binario:")
               leia(strConversao)
               limpatela

               memoriaStr <- strConversao
               i <- compr(strConversao)
               contador <- 0

               enquanto i > 0 faca
                  strFracao <- copia(strConversao,i,i)
                  strFracao <- copia(strFracao,1,1)
                  verif <- 0

                  se (strFracao = "0") entao
                     verif <- 1
                  fimse
                  se (strFracao = "1") entao
                     result <- result + 2 ^ contador
                     verif <- 1
                  fimse
                  se verif = 0 entao
                     strConversao <- "invalido"
                     i <- 0
                  fimse

                  contador <- contador + 1
                  i <- i - 1
               fimEnquanto

               se strConversao <> "invalido" entao
                  escreval("______________________________")
                  escreval("|     Conversor de bases     |")
                  escreval("|----------------------------|")
                  escreval("| ",strConversao,"(B2) = ",result,"(B10)")
               senao
                  escreval("______________________________")
                  escreval("|     Conversor de bases     |")
                  escreval("|----------------------------|")
                  escreval("| ",strConversao,"(B10) = nao ha(B10)")
               fimse
               
               contador <- 0
               
            caso 3
               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| num(B2) = resultado(B8)")
               escreva("| Digite o valor em binario:")
               leia(strConversao)
               limpatela

               memoriaStr <- strConversao
               i <- compr(strConversao)

               enquanto i > 0 faca
                  strFracao <- copia(strConversao,(i-2),i)
                  strFracao <- copia(strFracao,1,3)
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
                     strConversao <- "invalido"
                     resultConversao <- "nao ha"
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

               memoriaStr <- strConversao
               i <- compr(strConversao)

               enquanto i > 0 faca
                  strFracao <- copia(strConversao,i,i)
                  strFracao <- copia(strFracao,1,1)
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
                     resultConversao <- "100" + resultConversao
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
                     strConversao <- "invalido"
                     resultConversao <- "nao ha"
                     i <- 0
                  fimse

                  i <- i - 1
               fimEnquanto

               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| ",strConversao,"(B8) = ",resultConversao,"(B2)")

            caso 5
               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| num(B2) = resultado(B16)")
               escreva("| Digite o valor em binario:")
               leia(strConversao)
               limpatela

               memoriaStr <- strConversao
               i <- compr(strConversao)

               enquanto i > 0 faca
                  strFracao <- copia(strConversao,(i-3),i)
                  strFracao <- copia(strFracao,1,4)
                  verif <- 0

                  se (strFracao = "0") ou (strFracao = "00") ou (strFracao = "000") ou (strFracao = "0000") entao
                     resultConversao <- "0" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1") ou (strFracao = "01") ou (strFracao = "001") ou (strFracao = "0001") entao
                     resultConversao <- "1" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "10") ou (strFracao = "010") ou (strFracao = "0010") entao
                     resultConversao <- "2" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "11") ou (strFracao = "011") ou (strFracao = "0011") entao
                     resultConversao <- "3" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "100") ou (strFracao = "0100") entao
                     resultConversao <- "4" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "101") ou (strFracao = "0101") entao
                     resultConversao <- "5" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "110") ou (strFracao = "0110") entao
                     resultConversao <- "6" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "111") ou (strFracao = "0111") entao
                     resultConversao <- "7" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1000") entao
                     resultConversao <- "8" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1001") entao
                     resultConversao <- "9" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1010") entao
                     resultConversao <- "a" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1011") entao
                     resultConversao <- "b" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1100") entao
                     resultConversao <- "c" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1101") entao
                     resultConversao <- "d" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1110") entao
                     resultConversao <- "e" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1111") entao
                     resultConversao <- "f" + resultConversao
                     verif <- 1
                  fimse
                  se verif = 0 entao
                     strConversao <- "invalido"
                     resultConversao <- "nao ha"
                     i <- 0
                  fimse

                  i <- i - 4
               fimEnquanto

               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| ",strConversao,"(B2) = ",resultConversao,"(B16)")

            caso 6
               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| num(B16) = resultado(B2)")
               escreva("| Digite o valor em hexadecimal:")
               leia(strConversao)
               limpatela

               memoriaStr <- strConversao
               i <- compr(strConversao)

               enquanto i > 0 faca
                  strFracao <- ""
                  strFracao <- copia(strConversao,i,i)
                  strFracao <- copia(strFracao,1,1)
                  verif <- 0

                  se (strFracao = "0") entao
                     resultConversao <- "0000" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "1") entao
                     resultConversao <- "0001" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "2") entao
                     resultConversao <- "0010" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "3") entao
                     resultConversao <- "0011" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "4") entao
                     resultConversao <- "0100" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "5") entao
                     resultConversao <- "0101" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "6") entao
                     resultConversao <- "0110" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "7") entao
                     resultConversao <- "0111" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "8") entao
                     resultConversao <- "1000" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "9") entao
                     resultConversao <- "1001" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "a") entao
                     resultConversao <- "1010" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "b") entao
                     resultConversao <- "1011" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "c") entao
                     resultConversao <- "1100" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "d") entao
                     resultConversao <- "1101" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "e") entao
                     resultConversao <- "1110" + resultConversao
                     verif <- 1
                  fimse
                  se (strFracao = "f") entao
                     resultConversao <- "1111" + resultConversao
                     verif <- 1
                  fimse
                  se verif = 0 entao
                     strConversao <- "invalido"
                     resultConversao <- "nao ha"
                     i <- 0
                  fimse

                  i <- i - 1
               fimEnquanto

               escreval("______________________________")
               escreval("|     Conversor de bases     |")
               escreval("|----------------------------|")
               escreval("| ",strConversao,"(B16) = ",resultConversao,"(B2)")

            outrocaso
               escreval("Opcao invalida")
         fimescolha
      caso 8
         escreval("______________________________")
         escreval("|  Calculadora Cientifica    |")
         escreval("|----------------------------|")
         escreval("| str1 + str2 = resultado")
         escreva("| Digite a primeira string:")
         leia(str1)
         limpatela
         
         escreval("______________________________")
         escreval("|  Calculadora Cientifica    |")
         escreval("|----------------------------|")
         escreval("|",str1," + str2 = resultado")
         escreva("| Digite a segunda string:")
         leia(str2)
         limpatela

         strResult <- str1 + str2

         escreval("______________________________")
         escreval("|  Calculadora Cientifica    |")
         escreval("|----------------------------|")
         escreval("|",str1," +",str2," = ",strResult)

      caso 9
         escreval("________________________")
         escreval("|        Juros         |")
         escreval("|----------------------|")
         escreval("| 1 - Simples          |")
         escreval("| 2 - Composto         |")
         escreval("| 0 - Voltar           |")
         escreval("|______________________|")
         escreva("| Selecione uma conversao:")
         leia(opcaoJuros)
         
         limpatela
         
         escolha opcaoJuros
            caso 1
               Repita
                  escreval("________________________")
                  escreval("|    Juros Simples     |")
                  escreval("|----------------------|")
                  escreval("| Capital: R$")
                  escreval("| Juros mensais: %")
                  escreva("| Digite o valor do capital:")
                  Leia(capital)
                  limpatela
               ate capital > 0

               Repita
                  escreval("________________________")
                  escreval("|    Juros Simples     |")
                  escreval("|----------------------|")
                  escreval("| Capital: R$",capital)
                  escreval("| Juros mensais: %")
                  escreval("| Tempo:")
                  escreva("| Digite a taxa de juros:")
                  Leia(taxa)
                  limpatela
               ate taxa >= 1

               Repita
                  escreval("________________________")
                  escreval("|    Juros Simples     |")
                  escreval("|----------------------|")
                  escreval("| Capital: R$",capital)
                  escreval("| Juros mensais: ",taxa,"%")
                  escreval("| Tempo:")
                  escreva("| Digite o tempo em meses:")
                  Leia(temp)
                  limpatela
               ate temp > -1
               
               montante <- capital + (capital * taxa * temp / 100)

               //Arredonda manualmente para duas casas decimais
               parteInteiraMontante <- Int(montante)
               parteDecimalMontante <- Int((montante - parteInteiraMontante) * 100 + 0.5)

               //Calcula os juros
               juros <- montante - capital

               //Separa a parte inteira e decimal dos juros
               parteInteiraJuros <- Int(juros)
               parteDecimalJuros <- Int((juros - parteInteiraJuros) * 100 + 0.5)

               //Exibe os resultados formatados
               escreval("________________________")
               escreval("|    Juros Simples     |")
               escreval("|----------------------|")
               escreval("| Capital: R$",capital)
               escreval("| Juros mensais: ",taxa,"%")
               escreval("| Tempo:",temp," meses")
               Escreval("| Total ganho em juros mensal: R$ ", parteInteiraJuros, ",", parteDecimalJuros)
               Escreval("| Total pago: R$ ", parteInteiraMontante, ",", parteDecimalMontante)
               
            caso 2
               Repita
                  escreval("________________________")
                  escreval("|   Juros Compostos    |")
                  escreval("|----------------------|")
                  escreval("| Capital: R$")
                  escreval("| Juros mensais: %")
                  escreva("| Digite o valor do capital:")
                  Leia(capital)
               ate capital > 0

               limpatela
               
               Repita
                  escreval("________________________")
                  escreval("|   Juros Compostos    |")
                  escreval("|----------------------|")
                  escreval("| Capital: R$",capital)
                  escreval("| Juros mensais: %")
                  escreval("| Tempo:")
                  escreva("| Digite a taxa de juros:")
                  Leia(taxa)
               ate taxa >= 1

               limpatela

               Repita
                  escreval("________________________")
                  escreval("|   Juros Compostos    |")
                  escreval("|----------------------|")
                  escreval("| Capital: R$",capital)
                  escreval("| Juros mensais: ",taxa,"%")
                  escreval("| Tempo:")
                  escreva("| Digite o tempo em meses:")
                  Leia(temp)
               ate temp > -1
               
               limpatela

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
               escreval("________________________")
               escreval("|   Juros Compostos    |")
               escreval("|----------------------|")
               escreval("| Capital: R$",capital)
               escreval("| Juros mensais: ",taxa,"%")
               escreval("| Tempo:",temp," meses")
               Escreval("| Total ganho em juros mensal: R$ ", parteInteiraJuros, ",", parteDecimalJuros)
               Escreval("| Total pago: R$ ", parteInteiraMontante, ",", parteDecimalMontante)
            outrocaso
               escreval("Opcao invalida!")
         fimescolha
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

   ate retornar = 0

Fimalgoritmo