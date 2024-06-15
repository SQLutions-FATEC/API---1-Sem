import { menu } from "../menu";

const input = require("prompt-sync")();

export function juros():void {
  menu("Juros");
  console.log("| 1 - Juros Simples                    |");
  console.log("| 2 - Juros Compostos                  |");
  console.log("| 0 - Voltar                           |");
  console.log("|______________________________________|");
  console.log("| Selecione uma opção:                 |");
  const opcaoJuros: string = input("| ");

  console.clear();

  if (opcaoJuros === "1") {
    menu("Juros Simples");
    console.log("| Digite o valor investido inicial:    |");
    const valorInicial: number = Number(input("| R$ "));
    console.log("|                                      |");
    console.log("| Digite o juros (em porcentagem):     |");
    console.log("| (use ponto como separador decimal)   |");
    const taxaJurosSimples: number = Number(input("| ")) / 100;
    console.log("|                                      |");
    console.log("| Digite a quantidade de meses:        |");
    const tempoMeses: number = parseInt(input("| "));
    console.log("|--------------------------------------|");

    const jurosCalculados: number = valorInicial * taxaJurosSimples * tempoMeses;
    const totalFinal: number = valorInicial + jurosCalculados;

    console.log(`| Total investido R$ ${valorInicial}`);
    console.log(`| Lucro R$ ${jurosCalculados.toFixed(2)}`);
    console.log(`| Total R$ ${totalFinal.toFixed(2)}`);
  } else if (opcaoJuros === "2") {
    menu("Juros Compostos");
    console.log("| Digite o valor investido inicial:    |");
    const valorInicial: number = Number(input("| R$ "));
    console.log("|                                      |");
    console.log("| Digite o juros (em porcentagem):     |");
    console.log("| (use ponto como separador decimal)   |");
    const taxaJurosCompostos: number = Number(input("| ")) / 100;
    console.log("|                                      |");
    console.log("| Digite a quantidade de meses:        |");
    const tempoMeses: number = parseInt(input("| "));
    console.log("|--------------------------------------|");

    const total: number = valorInicial * (1 + taxaJurosCompostos) ** tempoMeses;
    const lucro: number = total - valorInicial;

    console.log(`| Total investido R$ ${valorInicial}`);
    console.log(`| Lucro R$ ${lucro.toFixed(2)}`);
    console.log(`| Total R$ ${total.toFixed(2)}`);
  } else if (opcaoJuros === "0") {
    console.log("| Voltando...                        |");
  } else {
    console.log("| Opção inválida!                    |");
  }
  console.log("|____________________________________|");
}
