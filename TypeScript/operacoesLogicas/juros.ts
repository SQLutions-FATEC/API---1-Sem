import { menu } from "../menu";

const input = require("prompt-sync")();

export function juros() {
  let opcaoJuros: string;

  menu("Juros");
  console.log("| 1 - Juros Simples                    |");
  console.log("| 2 - Juros Compostos                  |");
  console.log("| 0 - Voltar                           |");
  console.log("|______________________________________|");
  console.log("| Selecione uma opção:                 |");
  opcaoJuros = input("| ");

  console.clear();

  if (opcaoJuros === "1") {
    let valorInicial: number;
    let taxaJurosSimples: number;
    let tempoMeses: number;

    console.log(" ___________________________________ ");
    console.log("|            Juros Simples           |");
    console.log("|------------------------------------|");
    console.log("| Digite o valor investido inicial:  |");
    valorInicial = Number(input("| R$ "));
    console.log("|                                    |");
    console.log("| Digite o juros (em porcentagem):   |");
    console.log("| (use ponto como separador decimal) |");
    taxaJurosSimples = Number(input("| ")) / 100;
    console.log("|                                    |");
    console.log("| Digite a quantidade de meses:      |");
    tempoMeses = parseInt(input("| "));
    console.log("|------------------------------------|");

    const jurosCalculados = valorInicial * taxaJurosSimples * tempoMeses;
    const totalFinal = valorInicial + jurosCalculados;

    console.log(`| Total investido R$ ${valorInicial}`);
    console.log(`| Lucro R$ ${jurosCalculados.toFixed(2)}`);
    console.log(`| Total R$ ${totalFinal.toFixed(2)}`);
  } else if (opcaoJuros === "2") {
    let valorInicial: number;
    let taxaJurosCompostos: number;
    let tempoMeses: number;

    console.log(" ___________________________________ ");
    console.log("|            Juros Compostos         |");
    console.log("|------------------------------------|");
    console.log("| Digite o valor investido inicial:  |");
    valorInicial = Number(input("| R$ "));
    console.log("|                                    |");
    console.log("| Digite o juros (em porcentagem):   |");
    console.log("| (use ponto como separador decimal) |");
    taxaJurosCompostos = Number(input("| ")) / 100;
    console.log("|                                    |");
    console.log("| Digite a quantidade de meses:      |");
    tempoMeses = parseInt(input("| "));
    console.log("|------------------------------------|");

    const total = valorInicial * (1 + taxaJurosCompostos) ** tempoMeses;
    const lucro = total - valorInicial;

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
