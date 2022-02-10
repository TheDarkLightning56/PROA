Algoritmo "6_VELOCIDADE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Wheslley Rimar 
// Descrição   : Conversão de velocidade e medção de tempo entre sp e rj
// Autor(a)    : Renan Correa
// Data atual  : 09/08/2020
Var
// Seção de Declarações das variáveis 
      ms,kmh:Real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreval("                         km/h para m/s")
   Escreval("______________________________________________________________")
   Escreval("Digite a Velocidade que deseja converter(Km/h):")
   Leia (kmh)
   Escreval("______________________________________________________________")
   ms<-kmh/3.6
   Escreval("Resultado:")
   Escreval(ms," m/s")
   Escreval("______________________________________________________________")
   Escreval("Com a velocidade de ",ms," m/s ou ",kmh," km/h, você irá")
   Escreval("de São Paulo para o Rio de Janeiro em um tempo de")
   Escreval("aproximadamente ",432/kmh," horas ou ",432/ms," segundos")
   
   
   
   
Fimalgoritmo