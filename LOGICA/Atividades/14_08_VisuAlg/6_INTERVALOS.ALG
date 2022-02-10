Algoritmo "INTERVALOS"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Wheslley Rimar 
// Descrição   :
// Autor(a)    : Renan Correa
// Data atual  : 07/08/2020
Var
// Seção de Declarações das variáveis 
n1, n2, n3 : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
    Escreval("Digite o primeiro numero:")
    Leia (n1)
    Escreval("Digite o segundo numero:")
    Leia (n2)
    Escreval("Digite o terceiro numero:")
    Leia (n3)
    Escreval("")
    Escreval("")
    
    
Se(n1>0)entao
  Se(n1>=1) ou (n1<25) entao
  Escreval( "o numero ",n1, " esta entre 0 e 25")
  Senao
     Se(n1>=26) ou (n1<50) entao
     Escreval( "o numero ",n1, " esta entre 26 e 50")
     Senao
       Se(n1>=51) ou (n1<75) entao
       Escreval( "o numero ",n1, " esta entre 51 e 75")
       Senao
         Se(n1>=76) ou (n1<=100) entao
         Escreval( "o numero ",n1, " esta entre 76 e 100")
         fimse
       fimse
     fimse
  fimse
Senao
Escreval("O numero ",n1,"colocado é menor que 0")
     
fimse


   Escreval("")
Se(n2>0)entao
  Se(n2>=1) ou (n2<25) entao
  Escreval( "o numero ",n2, " esta entre 0 e 25")
  Senao
     Se(n2>=26) ou (n2<50) entao
     Escreval( "o numero ",n2, " esta entre 26 e 50")
     Senao
       Se(n2>=51) ou (n2<75) entao
       Escreval( "o numero ",n2, " esta entre 51 e 75")
       Senao
         Se(n2>=76) ou (n2<=100) entao
         Escreval( "o numero ",n2, " esta entre 76 e 100")
         fimse
       fimse
     fimse
  fimse
Senao
Escreval("O numero",n2," colocado é menor que 0")
fimse

Escreval("")

Se(n3>=0)entao
  Se(n3>=1) ou (n3<25) entao
  Escreval( "o numero ",n3, " esta entre 0 e 25")
  Senao
     Se(n3>=26) ou (n3<50) entao
     Escreval( "o numero ",n3, " esta entre 26 e 50")
     Senao
       Se(n3>=51) ou (n3<75) entao
       Escreval( "o numero ",n3, " esta entre 51 e 75")
       Senao
         Se(n3>=76) ou (n3<=100) entao
         Escreval( "o numero ",n3, " esta entre 76 e 100")
         fimse
       fimse
     fimse
  fimse
Senao
Escreval("O numero",n3," colocado é menor que 0")
fimse


     
Fimalgoritmo
//Escrever um algoritmo que lê um número desconhecido de valores, um de cada vez,

 //e conta quantos deles estão em cada um dos intervalos [0,25], (25,50], (50,75], (75,100].