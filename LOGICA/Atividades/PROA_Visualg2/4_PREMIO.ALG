Algoritmo "4_PREMIO"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Wheslley Rimar 
// Descrição   : Caalulo de bons em uma empresa
// Autor(a)    : Renan Correa
// Data atual  : 11/08/2020
Var
// Seção de Declarações das variáveis 
     venda,fix:real
     cont:caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

    Escreval("Digite o valor vendido este mês:")
    Escreva("R$ ")
    Leia(venda)
    Escreval("__________________________________________________")
    Escreval("Digite a meta estabelicida para este mês:")
    Escreva("R$ ")
    Leia(fix)
    Escreval("__________________________________________________")
    Se(venda>=fix)entao
    Escreval("PARABÉNS!! VOCÊ BATEU A META DESSA MÊS :)")
    Escreval("__________________________________________________")
    
    Senao
    Escreval("Infelizemente faltou R$",fix-venda," pra você bater a meta")
    Escreval("__________________________________________________")
    fimse
    
    Escreval("Deseja Continuar? (S para Sim e N para Não)")
    Leia(cont)
    Escreval("__________________________________________________")
    
    
    Enquanto (cont="S")faca
    Escreval("Digite o valor vendido este mês:")
    Escreva("R$ ")
    Leia(venda)
    Escreval("__________________________________________________")
    Escreval("Digite a meta estabelicida para este mês:")
    Escreva("R$ ")
    Escreval("__________________________________________________")
    Leia(fix)

    Se(venda>=fix)entao
    Escreval("PARABÉNS!! VOCÊ BATEU A META DESSA MÊS :)")

    Senao
    Escreval("Infelizemente faltou R$",fix-venda," pra você bater a meta")
    fimse
    
    
    fimenquanto
Fimalgoritmo
