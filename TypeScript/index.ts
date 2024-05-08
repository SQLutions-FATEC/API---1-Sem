import { concatenacaoString } from "./operacoesLogicas/concatenacaoString";
import { conversaoDeBase } from "./operacoesLogicas/conversaoDeBase";
import { divisao } from "./operacoesLogicas/divisao";
import { fatorial } from "./operacoesLogicas/fatorial";
import { funcaoSegundoGrau } from "./operacoesLogicas/funcaoSegundoGrau";
import { jurosCompostos } from "./operacoesLogicas/jurosCompostos";
import { jurosSimples } from "./operacoesLogicas/jurosSimples";
import { multiplicacao } from "./operacoesLogicas/multiplicacao";
import { soma } from "./operacoesLogicas/soma";
import { subtracao } from "./operacoesLogicas/subtracao";

function calculadora() {
  concatenacaoString();
  conversaoDeBase();
  divisao();
  fatorial();
  funcaoSegundoGrau();
  jurosCompostos();
  jurosSimples();
  multiplicacao();
  soma();
  subtracao();
}

calculadora();
