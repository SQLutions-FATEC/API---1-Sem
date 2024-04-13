Algoritmo "semnome"
Var
num, opcao, i, res : inteiro
Inicio
opcao<- 0
enquanto opcao <> 1 faca
escreval("Digite o numero para o calculo do fatorial: ")
leia(num)
se num < 0 entao
escreval("Nao pode-se realizar o fatorial de numeros negativos")
escreval("============================================")
fimse
se num = 0 entao
escreval("O fatorial de 0 resulta em 1")
escreval("============================================")
fimse
se num > 12 entao
escreval("Por limitacoes da linguagem, nao pode-se calcular o fatorial")
escreval("============================================")
fimse
se (num > 0) e (num <= 12) entao
res<- 1
para i de 1 ate num faca
     res <- res * i
fimpara
escreval("O fatorial de ", num, " resulta em ", res)
escreval("============================================")
fimse
escreval("Deseja realizar o fatorial de outro valor?")
escreval("Sim[0]")
escreval("Nao[1]")
leia(opcao)
escreval("============================================")
fimenquanto
Fimalgoritmo