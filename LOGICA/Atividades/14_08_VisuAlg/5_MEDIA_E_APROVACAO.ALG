Algoritmo "5.Media e Aprovacao"
// Disciplina  : Linguagem e Lógica de Programação
// Professor   : Alessandro Palmeira
// Descrição   : Cálculo de média de bimestral e se houve aprovação ou não
// Autor(a)    : Renan Correa
// Data atual  : 14/10/2019
Var
   // Seção de Declarações das variáveis
   nota1,nota2,media:real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   Escreval("digite a primeira nota:")//mensagem
   Leia(nota1)//dado retido
   Escreval("digite a segunda nota:")
   Leia(nota2)
   media<-(nota1+nota2)/2
   Escreval("")
   Escreval("A média final é", media)
   Escreval("")
   Escreval("")
   Se(media>=6)entao
       Escreval ("Aluno Aprovado")
   Senao
      Escreval("Aluno Reprovado")
   Fimse



Fimalgoritmo
