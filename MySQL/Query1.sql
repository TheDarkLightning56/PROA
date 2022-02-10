  USE db_MeusLivros;
SELECT * FROM tbl_Autores;
SELECT * FROM tbl_Assunto;
SELECT * FROM tbl_Editora;
 
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



#DISTINT,MAX,MIN,AVG,SUM
USE db_MeusLivros
SELECT COUNT (DISTINCT IdEditora) FROM tbl_Livro;
