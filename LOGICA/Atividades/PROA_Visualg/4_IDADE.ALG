Algoritmo "4_IDADE"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Wheslley Rimar 
// Descrição   : Calcular a idade
// Autor(a)    : Renan Correa
// Data atual  : 07/08/2020
Var
// Seção de Declarações das variáveis 
        nome1,nome2:caracter
        ano1,ano2,idade1,idade2,dif:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
          Escreval ("__________________________")
     Escreval("Digite o primeiro nome:")
     Leia(nome1)
     Escreval("Digite o ano de nascimento dessa pessoa:")
     Leia(ano1)
     Escreval ("__________________________")
     Escreval("Digite o segundo nome:")
     Leia(nome2)
     Escreval("Digite o ano de nascimento dessa pessoa:")
     Leia(ano2)
     Escreval ("__________________________")
     Escreval ("")
     Escreval ("")
     
     idade1<-2020-ano1
     idade2<-2020-ano2

     
     Se(idade1<idade2)entao
     dif<-idade2-idade1
     Escreval(nome1," com ",idade1," anos é mais novo(a) que ",nome2," que")
     Escreval("tem ",idade2," anos")
     Senao
     dif<-idade1-idade2
     Escreval(nome2," com ",idade2," anos é mais novo(a) que ",nome1," que")
     Escreval("tem ",idade1," anos")
     fimse


Fimalgoritmo