export function conversaoDeBase() {
   var input = require("prompt-sync")();
   let opcaoBases: number;

   console.log("______________________________");
   console.log("|    Conversor de bases      |");
   console.log("|----------------------------|");
   console.log("| 1 - B10 x B2               |");
   console.log("| 2 - B2 x B10               |");
   console.log("| 3 - B2 x B8                |");
   console.log("| 4 - B8 x B2                |");
   console.log("| 5 - B2 x B16               |");
   console.log("| 6 - B16 x B2               |");
   console.log("| 0 - Voltar                 |");
   console.log("|____________________________|");
   opcaoBases = Number(input("| Selecione uma conversao: "));

   console.log(opcaoBases);

   switch(opcaoBases){
      case 1:
         //B10 x B2
         console.log("B10 x B2")
      case 2:
         //B2 x B10
         console.log("B2 x B10")
      case 3:
         //B2 x B8
         console.log("B2 x B8")
      case 4:
         //B8 x B2
         console.log("B8 x B2")
      case 5:
         //B2 x B16
         console.log("B2 x B16")
      case 6:
         //B16 x B2
         console.log("B16 x B2")
      default:
         console.log("Opção inválida!")
   }
}
