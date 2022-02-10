USE DB_FACULDADE_GRUPO;


INSERT INTO TBL_DEPARTAMENTO (NomeDepartamento) 
VALUES 
 ('TI'),
 ('Exatas'),
 ('Humanas');
INSERT INTO TBL_professor (NomeProfessor, SobrenomeProfessor, CODdepartamento) 
VALUES 
 ('Fabio',' dos Reis',1),
 ('Carla','Santna',2),
 ('Hermes','Britto',3);
 
INSERT INTO TBL_curso (NomeCurso,CODdepartamento) 
VALUES 
('Engenharia de Software',1),
 ('Engenharia',2),
 ('Direito',3),
 ('História',3);
 
 INSERT INTO TBL_turma (CODcurso,NomeTurma,NUMalunos,data_inicio,data_fim) 
VALUES 
('1','1A',30,'20200806','20210606'),
('2','1A',30,'20200806','20210606'),
('3','1A',30,'20200806','20210606');
 
INSERT INTO TBL_disciplina (NomeDisciplina, CODdepartamento, Descricao, NUMaluno) 
VALUES 
 ('Direito Penal','3','Matéria de Direito',30),
 ('Cálculo avançado','2','Matéria de Engenharia',22),
 ('Pynthon','1','Matéria de Engenharia de Softaware',13);
 
INSERT INTO TBL_Aluno (NomeAluno, SobrenomeAluno, CPF, CODenderecoAluno, CODcurso, CODturma) 
VALUES 
 ('Lucas','Apalosqui','55544466677',3,3,3),
 ('Renan','Correa','34566272861',1,1,3),
 ('Adalberto','Nascimento','11122233344',2,2,2);
 
INSERT INTO TBL_EnderecoAluno (NomeRua, NUMresidencia, CEP, Bairro) 
VALUES 
 ('Rua Fascismo Eterno',154,201810101,'JD.MAL'),
 ('Av.Bilhões e Bilhões',978,200803251,'Vila Um'),
 ('Rua da Beleza',90,201009301,'Zona 99');
 
 INSERT INTO TBL_Historico(RA, data_inicio, data_fim) 
VALUES 
 (1,'20200806','20210606'),
 (2,'20200806','20210606'),
 (3,'20200806','20210606');
 
 INSERT INTO TBL_HistoricoDisciplina (CODhistorico,CODdisciplina,Media,Frequencia) 
VALUES 
 (1,1,10.0,100),
 (2,3,10.0, 80),
 (3,2,10.0, 99);
 
 #Modificação Para insert
 ALTER TABLE TBL_Aluno
 MODIFY COLUMN CPF VARCHAR (11);
 ALTER TABLE TBL_EnderecoAluno
 MODIFY COLUMN CEP VARCHAR (9);
 
 

 
 
 
 
 INSERT INTO TBL_ProfessorDisciplina (CODdisciplina,CODprofessor)
 VALUES
 (1,3),
 (2,2),
 (3,1),
 (1,4);
 
 INSERT INTO TBL_CursoDisciplina(CODdisciplina,CODcurso)
 VALUES
 (1,3),
 (2,2),
 (3,1);
  
 INSERT INTO tbl_aluno_disciplina(CODdisciplina,RA)
 VALUES
 (1,1),
 (2,3),
 (3,2);
 

  
  
   #Consultas
 
 SELECT * FROM TBL_Aluno;
 
 SELECT NomeAluno,NomeCurso FROM TBL_Aluno INNER JOIN TBL_curso ON TBL_Aluno.CODcurso=TBL_curso.CODcurso;
 
 