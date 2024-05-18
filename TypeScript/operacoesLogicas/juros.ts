export function juros() {
  var input = require("prompt-sync")();
  let opcaoJuros: number;

  console.log("_____________________________");
  console.log("|            Juros          |");
  console.log("|---------------------------|");
  console.log("| 1 - Juros Simples         |");
  console.log("| 2 - Juros Compostos       |");
  console.log("| 0 - Voltar                |");
  console.log("|___________________________|");
  opcaoJuros = Number(input("| Selecione uma opção:"));

  console.clear();

  switch(opcaoJuros){
    case 1:
      //Juros simples
      console.log("Juros Simples");
    case 2:
      //Juros simples
      console.log("Juros Compostos");
    default:
      console.log("Opção invaálida!");
  }
}
