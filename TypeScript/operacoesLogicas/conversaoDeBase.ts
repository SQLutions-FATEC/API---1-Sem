import { menu } from "../menu";

const input = require("prompt-sync")();

function converteBaseNumerica(
  valor: string,
  baseInicial: number,
  baseFinal: number
) {
  const faixa =
    "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+/".split(
      ""
    );
  const faixaInicial = faixa.slice(0, baseInicial);
  const faixaFinal = faixa.slice(0, baseFinal);

  var valorDecimal = valor
    .split("")
    .reverse()
    .reduce(function (acumulador: number, digito: string, index: number) {
      if (faixaInicial.indexOf(digito) === -1)
        console.log(
          "Dígito inválido `" + digito + "` para base " + baseInicial + "."
        );
      return (acumulador +=
        faixaInicial.indexOf(digito) * Math.pow(baseInicial, index));
    }, 0);

  let novoValor: string = "";
  while (valorDecimal > 0) {
    novoValor = faixaFinal[valorDecimal % baseFinal] + novoValor;
    valorDecimal = (valorDecimal - (valorDecimal % baseFinal)) / baseFinal;
  }
  return novoValor || "0";
}

export function conversaoDeBase() {
  let opcaoBases: number;
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

  opcaoBases = Number(input("| "));

  switch (opcaoBases) {
    case 1:
      //B10 x B2
      console.clear();
      console.log(`| Opção escolhida: B10 x B2      |`);
      console.log("| Digite um número em base 10:   |");
      numeroDecimal = input("| ");

      numeroBinario = converteBaseNumerica(numeroDecimal, 10, 2);

      console.log("| O número em binário: ", numeroBinario);
      break;
    case 2:
      //B2 x B10
      console.clear();
      console.log(`| Opção escolhida: B2 x B10      |`);
      console.log("| Digite um número em base 2:    |");
      numeroBinario = input("| ");

      numeroDecimal = converteBaseNumerica(numeroBinario, 2, 10);

      console.log("| O número em decimal: ", numeroDecimal);
      break;
    case 3:
      //B2 x B8
      console.clear();
      console.log(`| Opção escolhida: B2 x B8       |`);
      console.log("| Digite um número em base 2:    |");
      numeroBinario = input("| ");

      numeroBaseOito = converteBaseNumerica(numeroBinario, 2, 8);

      console.log("| O número em octal: ", numeroBaseOito);
      break;
    case 4:
      //B8 x B2
      console.clear();
      console.log(`| Opção escolhida: B8 x B2       |`);
      console.log("| Digite um número em base 8:    |");
      numeroBaseOito = input("| ");

      numeroBinario = converteBaseNumerica(numeroBaseOito, 8, 2);

      console.log("| O número em binário", numeroBinario);
      break;
    case 5:
      //B2 x B16
      console.clear();
      console.log(`| Opção escolhida: B2 x B16      |`);
      console.log("| Digite um número em base 2:    |");
      numeroBinario = input("| ");

      numeroBaseDezesseis = converteBaseNumerica(numeroBinario, 2, 16);

      console.log("| O número em hexadecimal: ", numeroBaseDezesseis);
      break;
    case 6:
      //B16 x B2
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
