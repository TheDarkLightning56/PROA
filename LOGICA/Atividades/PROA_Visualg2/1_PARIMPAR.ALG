Algoritmo "1_PARIMPAR"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Wheslley Rimar 
// Descrição   : Numero é par ou impar
// Autor(a)    : Renan Correa
// Data atual  : 11/08/2020
Var
// Seção de Declarações das variáveis 
    n1,res:real
    cont:caracter

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
    Escreval("____________________________________________________________")
    Escreval("Deseja tentar novamente? (S para Sim e N para Não)")
    Leia(cont)
    Escreval("____________________________________________________________")

     Enquanto (cont="S") faca
        Escreval("Digite um número:")
        Leia(n1)

        res<-n1 mod 2

                Se(res=0) entao
                Escreval("O número ",n1," é par")
                Senao
                Escreval("O número ",n1," é ímpar")
                fimse
    Escreval("____________________________________________________________")
    Escreval("Deseja tentar novamente? (S para Sim e N para Não)")
    Leia(cont)
    Escreval("____________________________________________________________")
    fimenquanto
    
Fimalgoritmo