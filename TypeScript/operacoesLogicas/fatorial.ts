import * as readlineSync from 'readline-sync';

let numeroString = readlineSync.question("Digite um número para calcular o fatorial: ");
let numero = parseInt(numeroString);

if (isNaN(numero) || numero < 0) {
    console.log("Por favor, insira um número inteiro não negativo.");
} else {
    let fatorial = 1;
    for (let i = 1; i <= numero; i++) {
        fatorial *= i;
    }
    console.log(`O fatorial de ${numero} é ${fatorial}.`);
}

