USE db_MeusLivros;

SELECT * FROM tbl_Editoras;
SELECT * FROM tbl_Livro;
SELECT * FROM tbl_Autores;
SELECT * FROM tbl_;

ALTER TABLE tbl_Livro
DROP COLUMN IdAutor;

#1
SELECT SUM(PrecoLivro) FROM tbl_Livro WHERE IdEditora=3;

#2
SELECT AVG(PrecoLivro) FROM tbl_Livro WHERE IdEditora=3 OR IdEditora=2;

#3
SELECT MAX(PrecoLivro),NomeLivro FROM tbl_livro;

#4
#Verificar Preço Antes
SELECT PrecoLivro FROM tbl_Livro WHERE DataPub BETWEEN '2001-01-01' AND '2009-11-15';

UPDATE tbl_Livro
SET PrecoLivro = PrecoLivro - (PrecoLivro*0.15) WHERE DataPub BETWEEN '2001-01-01' AND '2009-11-15';

#Verificar Preço Atualizar
SELECT PrecoLivro FROM tbl_Livro WHERE DataPub BETWEEN '2001-01-01' AND '2009-11-15';

SET SQL_SAFE_UPDATES=0;


#5
ALTER TABLE tbl_livro
ADD  ID_Autor  SMALLINT NOT NULL;


ALTER TABLE tbl_Livro
ADD CONSTRAINT fk_ID_Autor
FOREIGN KEY (IdAutor)
REFERENCES tbl_autores (IdAutor)
ON DELETE CASCADE
ON UPDATE CASCADE;


SELECT NomeLivro,SobrenomeAutor,Assunto FROM tbl_Livro INNER JOIN tbl_Autores ON tbl_Livro.IdAutor=tbl_Autores.IdAutor
INNER JOIN tbl_Assunto ON tbl_Livro.IdAssunto=tbl_Assunto.IdAssunto 
WHERE PrecoLivro>190.00;

#6
SELECT SUM(NumPag) FROM tbl_Livro WHERE DataPub>2012-01-01;

#7

SELECT ISBN,SobrenomeAutor FROM tbl_Livro INNER JOIN tbl_Autores ON tbl_Livro.IdAutor=tbl_Autores.IdAutor
WHERE SobrenomeAutor LIKE 'S%' ORDER BY DataPub ASC;
     