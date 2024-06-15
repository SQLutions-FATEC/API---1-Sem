import { menu } from "../menu";

const inputNum = require("prompt-sync")();

export function multiplicacao(): void {
  menu("Multiplicação");
  console.log("| Digite o primeiro número:            |");
  const numero1: number = Number(inputNum("| "));
  console.log("| Digite o segundo número:             |");
  const numero2: number = Number(inputNum("| "));
  console.log("|--------------------------------------|");

  const resultado: number = numero1 * numero2;
  if (isNaN(resultado)) {
    console.log("| Resultado inválido                   |");
    console.log("| Razão: valores não numéricos         |");
  } else {
    console.log("| Resultado:                           |");
    console.log(`| ${numero1} * ${numero2} = ${resultado}`);
  }
  console.log("|______________________________________|");
}
