import { menu } from "../menu";

const input = require("prompt-sync")();

function converteBaseNumerica(
  valor: string,
  baseInicial: number,
  baseFinal: number
): string {
  const faixa: string =
    "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+/";
  const faixaInicial: string[] = [];
  const faixaFinal: string[] = [];

  // Cria as faixas de caracteres para as bases inicial e final
  for (let i = 0; i < baseInicial; i++) {
    faixaInicial.push(faixa[i]);
  }
  for (let i = 0; i < baseFinal; i++) {
    faixaFinal.push(faixa[i]);
  }

  // Converter o valor da base inicial para decimal (base 10)
  let valorDecimal: number = 0;
  let potencia: number = 1;

  for (let i = valor.length - 1; i >= 0; i--) {
    const digito: string = valor[i];
    let digitoValor: number = -1;

    // Busca o valor do dígito na faixa inicial
    for (let j: number = 0; j < faixaInicial.length; j++) {
      if (faixaInicial[j] === digito) {
        digitoValor = j;
        break;
      }
    }

    if (digitoValor === -1) {
      console.log(
        "Dígito inválido `" + digito + "` para base " + baseInicial + "."
      );
      return "";
    }

    valorDecimal += digitoValor * potencia;
    potencia *= baseInicial;
  }

  // Converter o valor decimal para a base final
  let novoValor: string = "";

  while (valorDecimal > 0) {
    const resto: number = valorDecimal % baseFinal;
    novoValor = faixaFinal[resto] + novoValor;
    valorDecimal = Math.floor(valorDecimal / baseFinal);
  }

  return novoValor || "0";
}

export function conversaoDeBase(): void {
  let numeroBinario: string;
  let numeroBaseOito: string;
  let numeroDecimal: string;
  let numeroBaseDezesseis: string;

  menu("Conversor de Base");
  console.log("| 1 - B10 x B2                         |");
  console.log("| 2 - B2 x B10                         |");
  console.log("| 3 - B2 x B8                          |");
  console.log("| 4 - B8 x B2                          |");
  console.log("| 5 - B2 x B16                         |");
  console.log("| 6 - B16 x B2                         |");
  console.log("| 0 - Voltar                           |");
  console.log("|______________________________________|");
  console.log("| Selecione uma conversao:             |");

  const opcaoBases: number = Number(input("| "));

  switch (opcaoBases) {
    case 1:
      // B10 x B2
      console.clear();
      console.log(`| Opção escolhida: B10 x B2      |`);
      console.log("| Digite um número em base 10:   |");
      numeroDecimal = input("| ");

      numeroBinario = converteBaseNumerica(numeroDecimal, 10, 2);

      console.log("| O número em binário: ", numeroBinario);
      break;
    case 2:
      // B2 x B10
      console.clear();
      console.log(`| Opção escolhida: B2 x B10      |`);
      console.log("| Digite um número em base 2:    |");
      numeroBinario = input("| ");

      numeroDecimal = converteBaseNumerica(numeroBinario, 2, 10);

      console.log("| O número em decimal: ", numeroDecimal);
      break;
    case 3:
      // B2 x B8
      console.clear();
      console.log(`| Opção escolhida: B2 x B8       |`);
      console.log("| Digite um número em base 2:    |");
      numeroBinario = input("| ");

      numeroBaseOito = converteBaseNumerica(numeroBinario, 2, 8);

      console.log("| O número em octal: ", numeroBaseOito);
      break;
    case 4:
      // B8 x B2
      console.clear();
      console.log(`| Opção escolhida: B8 x B2       |`);
      console.log("| Digite um número em base 8:    |");
      numeroBaseOito = input("| ");

      numeroBinario = converteBaseNumerica(numeroBaseOito, 8, 2);

      console.log("| O número em binário: ", numeroBinario);
      break;
    case 5:
      // B2 x B16
      console.clear();
      console.log(`| Opção escolhida: B2 x B16      |`);
      console.log("| Digite um número em base 2:    |");
      numeroBinario = input("| ");

      numeroBaseDezesseis = converteBaseNumerica(numeroBinario, 2, 16);

      console.log("| O número em hexadecimal: ", numeroBaseDezesseis);
      break;
    case 6:
      // B16 x B2
      console.clear();
      console.log(`| Opção escolhida: B16 x B2      |`);
      console.log("| Digite um número em base 16:   |");
      numeroBaseDezesseis = input("| ");

      numeroBinario = converteBaseNumerica(numeroBaseDezesseis, 16, 2);

      console.log("| O número em binário: ", numeroBinario);
      break;
    case 0:
      console.log("| Voltando...                    |");
      break;
    default:
      console.log("| Opção inválida!                |");
      break;
  }
  console.log("|________________________________|");
}
