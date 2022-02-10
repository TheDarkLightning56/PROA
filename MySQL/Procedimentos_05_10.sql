USE db_MeusLivros;

#1
DELIMITER \\
CREATE PROCEDURE Desconto17(varPreco decimal(5,2))

BEGIN

UPDATE tbl_Livro
SET PrecoLivro = PrecoLivro - (PrecoLivro*0.10) WHERE PrecoLivro = varPreco;

END \\
DELIMITER ;

Select PrecoLivro From tbl_Livro;
CALL Desconto17(17);


#2
DELIMITER \\
CREATE PROCEDURE AddValor(Aumento decimal(5,2))

BEGIN

UPDATE tbl_Livro
SET PrecoLivro = PrecoLivro + Aumento;

END 
DELIMITER ;
DROP PROCEDURE AddValor;
CALL AddValor(300);
Select PrecoLivro From tbl_Livro;





#3
DELIMITER \\
CREATE PROCEDURE consultaLivro(varEditora VARCHAR(50))
BEGIN
SELECT CONCAT("O Livro ",NomeLivro," do Assunto ",Assunto," da Editora ",NomeEditora) AS Preço 
FROM tbl_Livro INNER JOIN tbl_Editora ON tbl_Livro.IdEditora=tbl_Editora.IdEditora  
WHERE  tbl_Editora.IdEditora = varEditora;
END

DELIMITER ;

CALL consultaLivro(2);



#4
select*from tbl_Assunto; 
DELIMITER \\
CREATE PROCEDURE addAssunto(varAssunto VARCHAR(50))
BEGIN
INSERT INTO tbl_Assunto(Assunto) VALUES
(varAssunto);
  

END

DELIMITER ;

CALL addAssunto("Cultura");

