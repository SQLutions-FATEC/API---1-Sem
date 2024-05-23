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

if (opcaoJuros === "1") {
    //juros simples
    let principalSimples: string;
    let taxaJurosSimples: string;
    let tempoSimples: string;

    console.log("______________________________");
    console.log("|     Calculadora de Juros    |");
    console.log("|-----------------------------|");
    console.log("| Total Investido = R$ | Total ganho em juros mensal R$ | Total R$");

    principalSimples = input("| Digite o valor principal (P):");
    console.clear();

    console.log("______________________________");
    console.log("|     Calculadora de Juros    |");
    console.log("|-----------------------------|");
    console.log(`| ${principalSimples} | i | n | resultado`);

    taxaJurosSimples = input("| Digite a taxa de juros (i) em % (use ponto como separador decimal):");
    console.clear();

    console.log("______________________________");
    console.log("|     Calculadora de Juros    |");
    console.log("|-----------------------------|");
    console.log(`| ${principalSimples} | ${taxaJurosSimples} | n | resultado`);

    tempoSimples = input("| Digite o período de tempo (n):");
    console.clear();

    //converte string para número
    const principalNum = Number(principalSimples);
    const taxaNum = Number(taxaJurosSimples) / 100;
    const tempoNum = Number(tempoSimples);

    //calcula juros simples
    const jurosCalculados = principalNum * taxaNum * tempoNum;

    //formata resultados
    const totalInvestido = `Total Investido = R$ ${principalNum.toFixed(2)}`;
    const totalJurosMensal = `Total ganho em juros mensal R$ ${jurosCalculados.toFixed(2)}`;
    const totalFinal = `Total R$ ${(principalNum + jurosCalculados).toFixed(2)}`;

    //exibe os resultados
    console.log("______________________________");
    console.log("|   Resultado Juros Simples   |");
    console.log("|-----------------------------|");
    console.log(`| ${totalInvestido} | ${totalJurosMensal} | ${totalFinal}`);
  } else if (opcaoJuros === "2") {
    //juros compostos
    let principalCompostos: string;
    let taxaJurosCompostos: string;
    let tempoCompostos: string;

    console.log("______________________________");
    console.log("|   Calculadora de Juros     |");
    console.log("|----------------------------|");
    console.log("| Total Investido R$  | Total ganho em juros mensal R$ | Montante R$");

    principalCompostos = input("| Digite o valor principal (P):");
    taxaJurosCompostos = input("| Digite a taxa de juros (i) em % (use ponto como separador decimal):");
    tempoCompostos = input("| Digite o período de tempo (n):");

    //converte string para número
    const principalCompostosNum = Number(principalCompostos);
    const taxaJurosCompostosNum = Number(taxaJurosCompostos) / 100; // Convertendo para decimal
    const tempoCompostosNum = Number(tempoCompostos);

    //calcula juros compostos
    let montanteCompostos = principalCompostosNum * Math.pow(1 + taxaJurosCompostosNum, tempoCompostosNum); // Usando a fórmula de juros compostos

    const totalInvestido = `Total Investido R$ ${principalCompostosNum.toFixed(2)}`;
    const totalJurosMensal = `Total ganho em juros mensal R$ ${(montanteCompostos - principalCompostosNum).toFixed(2)}`; // Calculando os juros mensais
    const montanteFinal = `Montante R$ ${montanteCompostos.toFixed(2)}`;

    //exibe os resultados
    console.log("______________________________");
    console.log("|   Resultado Juros Compostos |");
    console.log("|----------------------------|");
    console.log(`| ${totalInvestido} | ${totalJurosMensal} | ${montanteFinal}`);
} else {
    console.log("Opção inválida!");
}
}