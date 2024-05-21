export function juros() {
  const input = require("prompt-sync")();
  let opcaoJuros: string;

  console.log("_____________________________");
  console.log("|            Juros          |");
  console.log("|---------------------------|");
  console.log("| 1 - Juros Simples         |");
  console.log("| 2 - Juros Compostos       |");
  console.log("| 0 - Voltar                |");
  console.log("|___________________________|");
  opcaoJuros = input("| Selecione uma opção:");

  console.clear();

  switch(opcaoJuros){
    case "1":
      //Juros simples
      console.log("Juros Simples");
      break;
    case "2":
      //Juros simples
      console.log("Juros Compostos");
      break;
    default:
      console.log("Opção inválida!");
      break;
  }


}
