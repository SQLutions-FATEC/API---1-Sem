import { menu } from "../menu";

const input = require("prompt-sync")();

export function fatorial() {
 menu("Fatorial");
  console.log("| x! =                                 |");
  console.log("| Digite o número                      |");

  let numero: number = parseInt(input("| "));

  if (isNaN(numero) || numero < 0) {
    console.log("| O número deve ser inteiro e positivo.|");
    console.log("|______________________________________|");
  } else {
    let fatorial: number = 1;
    for (let i = 1; i <= numero; i++) {
      fatorial *= i;
    }
    console.log(`| O fatorial de ${numero} é ${fatorial}.`);
    console.log("|______________________________________|");
  }
}
