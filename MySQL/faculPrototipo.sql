create database facul;
show databases;
use facul;
select database();

create table curso (
COD_curso SMALLINT not null auto_increment,
nome_curso varchar(41) not null,
inicio_curso date not null,
final_curso date not null,
constraint pk_COD_curso primary key (COD_curso)
);

CREATE TABLE turma (
  COD_turma smallint NOT NULL auto_increment,
  COD_curso smallint not null ,
  constraint pk_COD_turma primary key (COD_turma),
  constraint fk_COD_curso foreign key  (COD_curso)
references  curso (COD_curso) on delete cascade
  );
  
  create table historico(
COD_historico SMALLINT not null auto_increment ,
ano_historico date not null,
constraint pk_COD_historico primary key (COD_historico)
);

  create table aluno(
  ID_aluno SMALLINT NOT NULL AUTO_INCREMENT,
  nome_aluno VARCHAR(45) NOT NULL,
  sobrenome VARCHAR(45) NOT NULL,
  CPF_aluno  INT NOT NULL,
  RG_aluno INT NOT NULL,
  COD_curso SMALLINT NULL not NULL,
  COD_turma SMALLINT NULL not NULL,
  COD_historico SMALLINT not NULL,
constraint pk_ID_aluno primary key (ID_aluno),

constraint fk_COD_turma foreign key  (COD_turma)
references  turma (COD_turma) on delete cascade,

constraint fk2_COD_curso foreign key  (COD_curso)
references  curso (COD_curso) on delete cascade,

constraint fk_COD_historico foreign key  (COD_historico)
references  historico (COD_historico) on delete cascade
);

create table disciplina(
COD_disciplina SMALLINT not null auto_increment,
nome_disciplina varchar(45) not null,
carga_horaria_anualmente_emhoras  int not null,
constraint pk_COD_disciplina primary key (COD_disciplina)
);

CREATE TABLE curso_disciplina(
	COD_curso SMALLINT not null,
    COD_disciplina SMALLINT not null,
    CONSTRAINT PK_COMPOSTA_curso_disciplina PRIMARY KEY (COD_curso, COD_disciplina ),
    CONSTRAINT FK3_COD_curso FOREIGN KEY (COD_curso) REFERENCES curso (COD_curso) ON DELETE CASCADE,
    CONSTRAINT FK_COD_disciplina  FOREIGN KEY (COD_disciplina ) REFERENCES disciplina  (COD_disciplina ) ON DELETE CASCADE
);

CREATE TABLE aluno_disciplina(
	ID_aluno SMALLINT not null,
COD_disciplina SMALLINT not null,
    CONSTRAINT PK_COMPOSTA_aluno_disciplina PRIMARY KEY (ID_aluno, COD_disciplina ),
    CONSTRAINT FK_ID_aluno  FOREIGN KEY (ID_aluno) REFERENCES aluno (ID_aluno) ON DELETE CASCADE,
    CONSTRAINT FK2_COD_disciplina  FOREIGN KEY (COD_disciplina ) REFERENCES disciplina  (COD_disciplina ) ON DELETE CASCADE
);

cREATE TABLE historico_disciplina(
	COD_historico SMALLINT not null,
COD_disciplina SMALLINT not null,
    CONSTRAINT PK_COMPOSTA_historico_disciplina PRIMARY KEY (COD_historico, COD_disciplina ),
    CONSTRAINT FK2_COD_historico FOREIGN KEY (COD_historico) REFERENCES historico (COD_historico) ON DELETE CASCADE,
    CONSTRAINT FK_COD_dicisplina  FOREIGN KEY (COD_disciplina ) REFERENCES disciplina  (COD_disciplina ) ON DELETE CASCADE
);


create table professor(
COD_professor smallint not null auto_increment,
nome_professor varchar(45) not null,
sobrenome_professor varchar(45),
CPF_professor int not null,
RG_professor int not null,
constraint pk_COD_professor primary key (COD_professor)
);

cREATE TABLe professor_disciplina(
	COD_professor SMALLINT not null,
COD_disciplina SMALLINT not null,
    CONSTRAINT PK_COMPOSTA_professor_disciplina PRIMARY KEY (COD_professor, COD_disciplina ),
    CONSTRAINT FK_COD_professor FOREIGN KEY (COD_professor) REFERENCES professor (COD_professor) ON DELETE CASCADE,
    CONSTRAINT FK3_COD_disciplina  FOREIGN KEY (COD_disciplina ) REFERENCES disciplina  (COD_disciplina ) ON DELETE CASCADE
);



insert into curso( nome_curso , inicio_curso , final_curso  ) 
values	
('eletronica','20200101','20201230'),
('informatica','20200101','20201230'),
('mecanica','20200101','20201230'),
('eletrotecnica','20200101','20201230');
select * from curso;

insert into turma( COD_curso) 
values	
('4'),
('2'),
('3'),
('3');
select * from turma;

insert into historico(ano_historico ) 
values	
('20200530'),
('20200530'),
('20200530'),
('20200530');
select * from historico;

insert into aluno( nome_aluno , sobrenome , CPF_aluno,RG_aluno,COD_turma,COD_historico,COD_curso  ) 
values	
('gabriel','totarelli','18381','784729146',2,2,2 ),
('lucas','gustavo','18481','781234546',4,3,1 ),
('milton','amado','19451','784017492',1,4,3 ),
('valquiria','totarelli','19381','788743146',3,3,4 );
select * from aluno;

insert into disciplina( nome_disciplina , carga_horaria_anualmente_emhoras  ) 
values	
('solda','45' ),
('ti','45' ),
('soldagem','60' ),
('reparos','30' );
select * from disciplina;

insert into curso_disciplina( COD_curso , COD_disciplina  ) 
values	
('1','1' ),
('2','2' ),
('3','3' ),
('4','4' );
select * from curso_disciplina;

insert into aluno_disciplina( ID_aluno , COD_disciplina  ) 
values	
('1','1' ),
('2','2' ),
('3','3' ),
('4','4' );
select * from aluno_disciplina;

insert into historico_disciplina( COD_historico , COD_disciplina  ) 
values	
('3','1' ),
('4','2' ),
('1','3' ),
('2','4' );
select * from historico_disciplina;


insert into professor( nome_professor , sobrenome_professor , CPF_professor,RG_professor  ) 
values	
('minato','tere','13481','78445'),
('kakashi','lima','16433','43464'),
('jiraya','ano','23455','64345' ),
('naruto','luiz','64324','78456' );
select * from professor;


insert into professor_disciplina( COD_professor , COD_disciplina  ) 
values	
('2','1' ),
('1','2' ),
('3','3' ),
('4','4' );
select * from professor_disciplina;  