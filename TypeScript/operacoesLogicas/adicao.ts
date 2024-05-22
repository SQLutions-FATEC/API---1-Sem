export function adicao() {
  let input = require("prompt-sync")(); 
  let resultado: number, numero2: number, numero: number;

    console.log('_________________________________');
    console.log('|             Adicao            |');
    console.log('|-------------------------------|');
    console.log('| Digite o primeiro numero:     |');
    numero = Number(input('| '));
    console.log('| Digite o segundo numero:      |');
    numero2 = Number(input('| '));
    console.log('|-------------------------------|');

    resultado = numero + numero2;
    if (isNaN(resultado)){
      console.log('| Resultado invalido            |')
      console.log('| Razao: valores nao numericos  |')
    }
    else{
      console.log('| Resultado:                    |');
      console.log ('| ',numero, '+',numero2, '=', resultado);
    }
    console.log('|_______________________________|');
  }
