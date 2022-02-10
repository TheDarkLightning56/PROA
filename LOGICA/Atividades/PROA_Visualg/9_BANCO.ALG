Algoritmo "9_BANCO"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Wheslley Rimar 
// Descrição   : Banco: saque e depósito
// Autor(a)    : Renan Correa
// Data atual  : 07/08/2020
Var
// Seção de Declarações das variáveis
saldo,saque,deposito, cont:real
   numero,op:inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...



    EScreval("__________________Banco___________________")
    Escreval("Digite seu número de conta:")
    Leia(numero)

    saldo<-500


    EScreval("__________________")
    Escreval("Saldo: R$",saldo)
    EScreval("__________________")
    Escreval("Selecione a opção que deseja usar:")
    Escreval("(Digite 1 para saque e 2 para depósito)")
    Leia (op)

    Escolha op

    caso 1
    EScreval("__________________")
    Escreval("Digite o Valor para Saque: ")
    Escreva("R$ ")
    Leia(Saque)
    Saldo<-Saldo-Saque
     EScreval("__________________")
    Escreval("Valor Sacado!!")
    Escreval("Saldo atualizado : R$",saldo)
                   Se(Saldo<0)entao
                   Escreval("Conta Estourada!")
                   fimse

    caso 2
    EScreval("__________________")
    Escreval("Digite o Valor para Depósito:")
    Escreva("R$ ")
    Leia(deposito)
    Saldo<-Saldo+deposito
     EScreval("__________________")
    Escreval("Valor Depositado!!")
    Escreval("Saldo atualizado : R$",saldo)
                   Se(Saldo<0)entao
                   Escreval("Conta em Dívida!")
                   fimse
    outrocaso
    EScreval("__________________")
    Escreval("ERRO! Reinicie o programa seguindo as orientações")

    fimescolha


       EScreval("_________________________________________")
    Escreval("Deseja refazer?")
    Escreval("(Digite 1 pra resposta afirmativa)")
    Leia(cont)
    
    
  //tentativa mal sucedida de um laço de repetição
    

     
     

Fimalgoritmo