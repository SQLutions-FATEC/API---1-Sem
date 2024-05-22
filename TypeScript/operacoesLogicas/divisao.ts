export function divisao() {
  let inputNum = require("prompt-sync")();
  let res: number;
  let numero1: number;
  let numero2: number;

  console.log(" ____________________________________ ");
  console.log("|               Divisão              |");
  console.log("|------------------------------------|");
  console.log("| Digite o primeiro número:          |");
  numero1 = Number(inputNum("| "));
  console.log("| Digite o segundo número:           |");
  numero2 = Number(inputNum("| "));
  console.log("|------------------------------------|");


  res = numero1 / numero2;
  console.log("| Resultado:                         |");
  console.log(`| ${numero1} / ${numero2} = ${res}`);
  console.log("|____________________________________|");

}
