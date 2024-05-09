import { concatenacaoString } from "./operacoesLogicas/concatenacaoString";
import { conversaoDeBase } from "./operacoesLogicas/conversaoDeBase";
import { divisao } from "./operacoesLogicas/divisao";
import { fatorial } from "./operacoesLogicas/fatorial";
import { funcaoSegundoGrau } from "./operacoesLogicas/funcaoSegundoGrau";
import { juros } from "./operacoesLogicas/juros";
import { multiplicacao } from "./operacoesLogicas/multiplicacao";
import { adicao } from "./operacoesLogicas/adicao";
import { subtracao } from "./operacoesLogicas/subtracao";

let opcao: number, retornar: number, result: number;

do {
   result = 0;
   console.log("______________________________");
   console.log("|  Calculadora Cientifica    |");
   console.log("|----------------------------|");
   console.log("| 1 - Adicao                 |");
   console.log("| 2 - Subtracao              |");
   console.log("| 3 - Multiplicacao          |");
   console.log("| 4 - Divisao                |");
   console.log("| 5 - Fatorial               |");
   console.log("| 6 - Funcao de 2o grau      |");
   console.log("| 7 - Conversao de Base Num. |");
   console.log("| 8 - Concatenacao de string |");
   console.log("| 9 - Juros                  |");
   console.log("| 0 - Sair                   |");
   console.log("|____________________________|");
   console.log("| Selecione uma opcao:");
   opcao = Number(prompt());
   console.clear();

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
         break;
      default:
         console.log("Opcao invalida!");
   }

   console.log("______________________________");
   console.log("| Deseja retornar ao inicio? |");
   console.log("|----------------------------|");
   console.log("| 1 - Sim                    |");
   console.log("| 0 - Sair                   |");
   console.log("|____________________________|");
   console.log("| Selecione uma opcao:");
   retornar = Number(prompt());

   console.clear();
} while (retornar != 0);
