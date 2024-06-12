import { menu } from "../menu";

const inputNum = require("prompt-sync")();

export function multiplicacao() {
  let resultado: number;
  let numero1: number;
  let numero2: number;

 menu("Multiplicação");
  console.log("| Digite o primeiro número:            |");
  numero1 = Number(inputNum("| "));
  console.log("| Digite o segundo número:             |");
  numero2 = Number(inputNum("| "));
  console.log("|--------------------------------------|");

  resultado = numero1 * numero2;
  if (isNaN(resultado)) {
    console.log("| Resultado inválido                   |");
    console.log("| Razão: valores não numéricos         |");
  } else {
    console.log("| Resultado:                           |");
    console.log(`| ${numero1} * ${numero2} = ${resultado}`);
  }
  console.log("|______________________________________|");
}
