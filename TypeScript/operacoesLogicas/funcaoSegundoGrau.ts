const input = require("prompt-sync")();

export function funcaoSegundoGrau() {
  let variavelA: number;
  let variavelB: number;
  let variavelC: number;

  console.log(" ______________________________________ ");
  console.log("|         Equação de 2o grau           |");
  console.log("|--------------------------------------|");
  console.log("| (a)x² + (b)x + (c)                   |");
  console.log("| Digite o valor de (a)                |");
  variavelA = Number(input("| "));
  console.log("| Digite o valor de (b)                |");
  variavelB = Number(input("| "));
  console.log("| Digite o valor de (c)                |");
  variavelC = Number(input("| "));

  const delta = variavelB ** 2 - 4 * variavelA * variavelC;

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
    let raiz = 0;
    while (raiz ** 2 < delta) {
      raiz = raiz + 0.01;
    }
    const x1 = (-variavelB + raiz) / (2 * variavelA);
    const x2 = (-variavelB - raiz) / (2 * variavelA);
    console.log(`| O valor de x1 é ${x1.toFixed(4)}`);
    console.log(`| O valor de x2 é ${x2.toFixed(4)}`);
    console.log("|______________________________________|");
  }
}
