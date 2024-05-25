import { concatenacaoString } from "./operacoesLogicas/concatenacaoString";
import { conversaoDeBase } from "./operacoesLogicas/conversaoDeBase";
import { divisao } from "./operacoesLogicas/divisao";
import { fatorial } from "./operacoesLogicas/fatorial";
import { funcaoSegundoGrau } from "./operacoesLogicas/funcaoSegundoGrau";
import { juros } from "./operacoesLogicas/juros";
import { multiplicacao } from "./operacoesLogicas/multiplicacao";
import { adicao } from "./operacoesLogicas/adicao";
import { subtracao } from "./operacoesLogicas/subtracao";

let opcao: number,
  retornar: number = 0;
const input = require("prompt-sync")();

do {
  console.log("______________________________");
  console.log("|   Calculadora Cientifica   |");
  console.log("|----------------------------|");
  console.log("| 1 - Adição                 |");
  console.log("| 2 - Subtração              |");
  console.log("| 3 - Multiplicação          |");
  console.log("| 4 - Divisão                |");
  console.log("| 5 - Fatorial               |");
  console.log("| 6 - Equação de 2o grau     |");
  console.log("| 7 - Conversão de base num. |");
  console.log("| 8 - Concatenação de strings|");
  console.log("| 9 - Juros                  |");
  console.log("| 0 - Sair                   |");
  console.log("|____________________________|");
  console.log("| Selecione uma opção:       |");
  opcao = Number(input("| "));
  console.clear();
  console.log("| Opção escolhida: " + opcao);

  switch (opcao) {
    case 1:
      adicao();
      break;
    case 2:
      subtracao();
      break;
    case 3:
      multiplicacao();
      break;
    case 4:
      divisao();
      break;
    case 5:
      fatorial();
      break;
    case 6:
      funcaoSegundoGrau();
      break;
    case 7:
      conversaoDeBase();
      break;
    case 8:
      concatenacaoString();
      break;
    case 9:
      juros();
      break;
    case 0:
      console.log("Saindo!");
      retornar = 0;
      break;
    default:
      console.log("Opção invalida!");
  }

  if (opcao != 0) {
    console.log(" ______________________________ ");
    console.log("| Deseja retornar ao início?   |");
    console.log("|------------------------------|");
    console.log("| 1 - Sim                      |");
    console.log("| 0 - Sair                     |");
    console.log("|______________________________|");
    console.log();
    console.log("| Selecione uma opção:         |");
    retornar = input("| ");
  }

  console.clear();
} while (retornar != 0);
