Algoritmo "6_NOTASFINAIS"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Wheslley Rimar 
// Descrição   : Calculo de média e situação do aluno
// Autor(a)    : Renan Correa
// Data atual  : 11/08/2020
Var
// Seção de Declarações das variáveis 
      n1,n2,n3,n4,media:real
      fal,cont:inteiro

      

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 


      Repita
      Escreval("Digite a primeira nota:")
      Leia(n1)
      Escreval("_____________________________________________________________")
      Escreval("Digite a segunda nota:")
      Leia(n2)
      Escreval("_____________________________________________________________")
      Escreval("Digite a terceira nota:")
      Leia(n3)
      Escreval("_____________________________________________________________")
      Escreval("Digite a quarta nota:")
      Leia(n4)
      Escreval("_____________________________________________________________")
      Escreval("Digite o número de faltas do aluno:")
      Leia(fal)
      Escreval("_____________________________________________________________")
      
      media<-(n1+n2+n3+n4)/4
      
      Se(fal>10)entao
      Escreval("Aluno Reprovado por falta")
      Senao
           Se (media<5) entao
           Escreval("Aluno Reprovado com  MÉDIA DE ",media)
           Senao
                Se (media<6) entao
                Escreval("Aluno em Recuperação com  MÉDIA DE ",media)
                Senao
                Escreval("Aluno Aprovado com  MÉDIA DE ",media)
                fimse
          fimse
     fimse
     Escreval("_____________________________________________________________")
     Escreval("Deseja encerrar o programa:(1 para Sim e 2 para Não)")
     Leia(cont)
     Escreval("_____________________________________________________________")

     ate (cont=1)
     
Fimalgoritmo