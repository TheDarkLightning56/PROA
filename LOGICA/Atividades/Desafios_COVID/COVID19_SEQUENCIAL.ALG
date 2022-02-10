Algoritmo "COVID19_3.0"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Wheslley Rimar
// Descrição   : Dados Da Covid-19
// Autor(a)    : Renan Correa
// Data atual  : 11/08/2020
Var
// Seção de Declarações das variáveis
  matrix: vetor [1..15,0..1] de inteiro
  pais:vetor [1..15] de caracter
  cont:inteiro
  nomeprocurado:caracter
  posicao:inteiro
  num:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
   num<-1
    para cont de 1 ate 15 faca



    Escreval("                             COVID-19")
    Escreval("________________________________________________________________")
    Escreval("                        Inserção de Dados        ")
    Escreval("Digite o ",num,"º país:")
    Leia(pais[cont])
     Escreval("")
    Escreval("Digite o Numero de Casos")
    Leia(matrix[cont,0])
     Escreval("")
    Escreval("Digite o Numero de Óbitos")
    Leia(matrix[cont,1])


    num<-num+1
    limpatela
    
    fimpara
    limpatela
    num<-1
 
    Escreval("")
    Escreval("")
    Escreval("________________________________________________________________")
    Escreval("                       Apresentação de Dados        ")
    Escreval("")
    Escreval("")
    para cont de 1 ate 15 faca
    Escreval(num,". ",pais[cont])
    Escreval("")
    Escreval("Casos: ",matrix[cont,1])
    Escreval("Óbitos: ",matrix[cont,1])
    Escreval("________________________________________________________________")
    num<-num+1
    fimpara
    
    Escreval("")
    Escreval("")
    Escreval("________________________________________________________________")
    Escreval("                       Pesquisa por Páises:        ")
    Escreval("")
    Escreval("Digite o pais que desja saber os dados:")
    Leia(nomeprocurado)
    posicao<-1
   enquanto (posicao < 15) e (pais[posicao] <> nomeprocurado) faca
            posicao <- posicao + 1
   fimenquanto

   se nomeprocurado = pais[posicao] entao
      escreval("Nome encontrado! O pais é: ", pais[posicao])
      EScreval("Casos: ",matrix[cont,0])
      Escreval("Mortes: ",matrix[cont,1])
   senao

        escreva("Nome não foi encontrado!")
   fimse









    fimalgoritmo