import { menu } from "../menu";

const input = require("prompt-sync")();

export function adicao() {
  menu("Adição");
  console.log("| Digite o primeiro número:            |");
  const numero: number = Number(input("| "));
  console.log("| Digite o segundo número:             |");
  const numero2: number = Number(input("| "));
  console.log("|--------------------------------------|");

  const resultado: number = numero + numero2;
  if (isNaN(resultado)) {
    console.log("| Resultado inválido                   |");
    console.log("| Razão: valores não numéricos         |");
  } else {
    console.log("| Resultado:                           |");
    console.log("| ", numero, "+", numero2, "=", resultado);
  }
  console.log("|______________________________________|");
}
