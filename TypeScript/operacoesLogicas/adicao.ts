let input = require("prompt-sync")();

export function adicao() {
  let resultado: number, numero2: number, numero: number;

  console.log("_________________________________");
  console.log("|             Adição            |");
  console.log("|-------------------------------|");
  console.log("| Digite o primeiro número:     |");
  numero = Number(input("| "));
  console.log("| Digite o segundo número:      |");
  numero2 = Number(input("| "));
  console.log("|-------------------------------|");

  resultado = numero + numero2;
  if (isNaN(resultado)) {
    console.log("| Resultado inválido            |");
    console.log("| Razão: valores não numéricos  |");
  } else {
    console.log("| Resultado:                    |");
    console.log("| ", numero, "+", numero2, "=", resultado);
  }
  console.log("|_______________________________|");
}
