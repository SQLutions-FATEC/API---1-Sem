import { menu } from "../menu";

const input = require("prompt-sync")();

export function concatenacaoString(): void {
  menu("Concantenação de String");
  console.log("| Digite a primeira string:            |");
  const str1: string = input("| ");
  console.log("| Digite a segunda string:             |");
  const str2: string = input("| ");

  const strResult: string = str1 + str2;

  console.log("|--------------------------------------|");
  console.log("|", str1, " + ", str2, " = ");
  console.log("|");
  console.log("|", strResult);
  console.log("|______________________________________|");
}
