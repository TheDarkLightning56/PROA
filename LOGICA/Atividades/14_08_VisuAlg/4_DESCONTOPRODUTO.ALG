Algoritmo "4.DescontoProduto"
// Disciplina  : Linguagem e Lógica de Programação
// Professor   : Alessandro Palmeira
// Descrição   : Calcular em dois numeros a soma, subteração, multiplicação e a
//divisão
// Autor(a)    : Renan Correa
// Data atual  : 14/10/2019
Var
   // Seção de Declarações das variáveis
   v,vf,des:real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   Escreval("digite o valor do produto:")//mensagem
   Leia(v)//dado retido
   Escreval("digite o valor do desconto(%):")//mensagem
   Leia(des)//dado retido
   des<-des/100
   vf<- v-(v*des)
   Escreval("")

   Escreval("O valor com desconto é:", vf)
   Escreval("")



Fimalgoritmo