Algoritmo "semnome"
Var
num, opcao, i, res : inteiro
Inicio
opcao<- 0
escreval("Digite o numero para o calculo do fatorial: ")
leia(num)
res<- 1
para i de 1 ate num faca
     res <- res * i
fimpara
escreval("O fatorial de ", num, " resulta em ", res)
escreval("============================================")
Fimalgoritmo