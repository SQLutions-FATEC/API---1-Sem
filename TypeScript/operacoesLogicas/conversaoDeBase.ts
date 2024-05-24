export function conversaoDeBase() {
   const input = require("prompt-sync")();
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
         const decimalNumber = Number(input("Digite um número em base 10: "));
         console.log("B10 x B2: ", decimalNumber.toString(2));
         break;
      case 2:
         //B2 x B10
         const binaryNumber = input("Digite um número em base 2: ");
         console.log("B2 x B10: ", parseInt(binaryNumber, 2));
         break;
      case 3:
         //B2 x B8
         const binaryNumberForOctal = input("Digite um número em base 2: ");
         console.log("B2 x B8: ", parseInt(binaryNumberForOctal, 2).toString(8));
         break;
      case 4:
         //B8 x B2
         const octalNumber = input("Digite um número em base 8: ");
         console.log("B8 x B2");
         break;
      case 5:
         //B2 x B16
         const binaryNumberForHex = input("Digite um número em base 2: ");
         console.log("B2 x B16: ", parseInt(binaryNumberForHex, 2).toString(16).toUpperCase());
         break;
      case 6:
         //B16 x B2
         const hexNumber = input("Digite um número em base 16: ");
         console.log("B16 x B2: ", parseInt(hexNumber, 16).toString(2));
         break;
      case 0:
         // Voltar
         console.log("Voltando...");
         break;
      default:
         console.log("Opção inválida!");
         break;
   }
}
