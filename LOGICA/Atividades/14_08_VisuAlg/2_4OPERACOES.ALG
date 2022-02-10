Algoritmo "2.4Operacoes"
// Disciplina  : Linguagem e Lógica de Programação
// Professor   : Alessandro Palmeira
// Descrição   : Calcular em dois numeros a soma, subteração, multiplicação e a
//divisão
// Autor(a)    : Renan Correa
// Data atual  : 14/10/2019
Var
   // Seção de Declarações das variáveis
   n1,n2,so,su,m,d:real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   Escreval("digite o primeiro numero:")//mensagem
   Leia(n1)//dado retido
   Escreval("digite o segundo numero:")
   Leia(n2)//dado retido
   so<-n1+n2
   su<-n1-n2
   m<-n1*n2
   d<-n1/n2
   Escreval("")
   Escreval("A soma de",n1," + ",n2," é:", so)
   Escreval("A subtração de",n1," - ",n2," é:", su)
   Escreval("A multiplicação de",n1," * ",n2," é:", m)
   Escreval("A divisão de",n1," / ",n2," é:", d)
   Escreval("")
   Escreval("")



Fimalgoritmo
