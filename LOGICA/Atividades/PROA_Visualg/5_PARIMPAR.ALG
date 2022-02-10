Algoritmo "5_PARIMPAR"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Wheslley Rimar 
// Descrição   : Par ou ímpar
// Autor(a)    : Renan Correa
// Data atual  : 07/08/2020
Var
// Seção de Declarações das variáveis 
 n1,res:real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreval("Digite um número:")
   Leia(n1)
   
    res<-n1 mod 2
    
    Se(res=0) entao
    Escreval("O número ",n1," é par")
    Senao
    Escreval("O número ",n1," é ímpar")
    fimse
Fimalgoritmo
