USE db_MeusLivros;
#Seleção de Tabela
SELECT * FROM tbl_Autores;
SELECT * FROM tbl_Assunto;
SELECT * FROM tbl_Editora;
SELECT * FROM tbl_Livro;
#Inserção de dados
INSERT INTO tbl_Livro (NomeLivro, ISBN, DataPub, PrecoLivro, NumPag, IdEditora, IdAssunto) 
VALUES 
 ('O Fascismo Eterno','9788501116154','20181010','19.66','64','16','12'),
 ('Bilhões e Bilhões','9788535911947','20080325','22.74','288','17','13'),
 ('História da Beleza','9788501090881','20100930','139.99','440','16','14');

INSERT INTO tbl_Editora (NomeEditora)
VALUES ('Record'),('Companhia de Bolso');


INSERT INTO tbl_Assunto (Assunto)
VALUES ('Ciências Sociais'),('Ciências'),('História da Arte');

INSERT INTO tbl_Autores (NomeAutor, SobrenomeAutor)
VALUES ('Umberto','Eco'),('Carl','Sagan');


#Etapa de Exercício
#1
SELECT NomeLivro FROM tbl_Livro WHERE IdAssunto=1 AND PrecoLivro>55.00;

#2
INSERT INTO tbl_Assunto (Assunto)
VALUES ('Terror');
SELECT NomeLivro FROM tbl_Livro WHERE IdAssunto=5 OR IdAssunto=8 OR IdAssunto=15 ORDER BY NomeLivro ASC ;

#3
SELECT NomeLivro,PrecoLivro FROM tbl_Livro WHERE IdLivro > 2 ORDER BY PrecoLivro ASC LIMIT 4;

#4
SELECT DataPub FROM tbl_Livro ORDER BY DataPub ASC;
SELECT NomeLivro 'Nome', ISBN, DataPub 'Data', PrecoLivro FROM tbl_Livro WHERE DataPub < '2010-01-01' AND DataPub > '2005-01-01' ORDER BY DataPub ASC;
