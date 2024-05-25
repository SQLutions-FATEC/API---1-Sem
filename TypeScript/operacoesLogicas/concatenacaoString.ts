const input = require("prompt-sync")();

export function concatenacaoString(): void {
  let str1: string;
  let str2: string;
  let strResult: string;

  console.log(" ______________________________ ");
  console.log("|   Concatenação de Strings    |");
  console.log("|------------------------------|");
  console.log("| Digite a primeira string:    |");
  str1 = input("| ");
  console.log("| Digite a segunda string:     |");
  str2 = input("| ");

  strResult = str1 + str2;

  console.log("|------------------------------|");
  console.log("|", str1, " + ", str2, " = ");
  console.log("|");
  console.log("|", strResult);
  console.log("|______________________________|");
}
