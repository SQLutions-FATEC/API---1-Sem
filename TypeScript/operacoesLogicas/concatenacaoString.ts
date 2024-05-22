const input = require("prompt-sync")();

export function concatenacaoString():void {
  
    // Declaração de variáveis
    let str1: string;
    let str2: string;
    let strResult: string;

    // Primeira interação
    console.log("______________________________");
    console.log("|  Calculadora Cientifica    |");
    console.log("|----------------------------|");
    console.log("| str1 + str2 = resultado");
    str1 = input("| Digite a primeira string:") || "";
    console.clear();

    // Segunda interação
    console.log("______________________________");
    console.log("|  Calculadora Cientifica    |");
    console.log("|----------------------------|");
    console.log("|", str1, " + str2 = resultado");
    str2 = input("| Digite a segunda string:") || "";
    console.clear();

    // Calcula o resultado
    strResult = str1 + str2;

    // Resultado final
    console.log("______________________________");
    console.log("|  Calculadora Cientifica    |");
    console.log("|----------------------------|");
    console.log("|", str1, " +", str2, " = ", strResult);

  // Chama a função principal
  return  
}




