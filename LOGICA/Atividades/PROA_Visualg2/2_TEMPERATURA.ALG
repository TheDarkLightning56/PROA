Algoritmo "2_TEMPERATURA"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Wheslley Rimar 
// Descrição   : Temepratura esta agrdável ou não
// Autor(a)    : Renan Correa
// Data atual  : 11/08/2020
Var
// Seção de Declarações das variáveis 
temp:real
     cont:caracter
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
          cont<-"S"
          Repita
          Escreval ("________________________________")
          Escreval("Digite a temperatura do seu ambiente:")
          Leia(temp)

          Escreval("_________________________________")
          Se (temp<=25) entao
          Escreval("A temperatura esta agradável")
          Senao
          Escreval("A temperatura esta elevada demais!!")
          fimse
          Escreval("_________________________________")
          Escreval("Deseja Continuar? (S para Sim e N para Não")
          Leia(cont)
          Escreval("_________________________________")

          ate (cont="N")
Fimalgoritmo