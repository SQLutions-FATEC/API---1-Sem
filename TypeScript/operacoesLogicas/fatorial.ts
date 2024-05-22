export function fatorial() {
    const input = require("prompt-sync")();

    console.log(" ____________________________________ ");
    console.log("|               Divisão              |");
    console.log("|------------------------------------|");
    console.log("| x! =                               |");

    let numero = parseInt(input("| Digite o número: "));
    
    if (isNaN(numero) || numero < 0) {
        console.log("O número deve ser inteiro e positivo.");
    } else {
        let fatorial = 1;
        for (let i = 1; i <= numero; i++) {
            fatorial *= i;
        }
        console.log(`O fatorial de ${numero} é ${fatorial}.`);
    }
}