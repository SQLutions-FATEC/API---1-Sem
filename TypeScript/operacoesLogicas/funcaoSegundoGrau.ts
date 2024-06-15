import { menu } from "../menu";

const input = require("prompt-sync")();

export function funcaoSegundoGrau(): void {
  menu("Equação de 2° Grau");
  console.log("| (a)x² + (b)x + (c)                   |");
  console.log("| Digite o valor de (a)                |");
  const variavelA: number = Number(input("| "));
  console.log("| Digite o valor de (b)                |");
  const variavelB: number = Number(input("| "));
  console.log("| Digite o valor de (c)                |");
  const variavelC: number = Number(input("| "));

  const delta: number = variavelB ** 2 - 4 * variavelA * variavelC;

  if (isNaN(delta)) {
    console.log("| Resultado inválido                   |");
    console.log("| Razão: valores não numéricos         |");
    console.log("|______________________________________|");
    return;
  }

  console.log(`| O valor delta é ${delta}`);
  if (delta < 0) {
    console.log("| Não há raiz para valores negativos.  |");
    console.log("| x1 = Não existe; x2 = Não existe     |");
    console.log("|______________________________________|");
  } else {
    const raiz: number = Math.sqrt(delta);
    const x1: number = (-variavelB + raiz) / (2 * variavelA);
    const x2: number = (-variavelB - raiz) / (2 * variavelA);
    console.log(`| O valor de x1 é ${x1.toFixed(4)}`);
    console.log(`| O valor de x2 é ${x2.toFixed(4)}`);
    console.log("|______________________________________|");
  }
}
