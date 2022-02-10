<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Exclusão de Disciplinas</title>
<link href="menu.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="menu" id="menu">
<a href="#"> <img src="logotipo/EtecPB.png" width="115" height="67" alt="logo1" /></a></div>
<ul id="menu-bar">
  
 <li><a href="#">Lista Geral</a>
  <ul>
   <li><a href="pesqdisc_geral.php">Disciplinas</a></li>
   <li><a href="pesqaluno_geral.php">Aluno</a></li>
   <li><a href="pesqcursos_geral.php">Cursos</a></li>
   
  </ul>
  </li>
  
 <li><a href="#">Pesquisas</a>
  <ul>
   <li><a href="pesqdisciplina.php">Disciplinas</a></li>
   <li><a href="pesqaluno.php">Aluno</a></li>
   <li><a href="pesqcurso.php">Cursos</a></li>
   
  </ul>
  </li>
 
 <li><a href="#">Excluir</a>
 <ul>
   <li><a href="exclqdisciplina.php">Disciplinas</a></li>
   <li><a href="exclqaluno.php">Aluno</a></li>
   <li><a href="exclcursos.php">Cursos</a></li>
  </ul>
   
   
 <li><a href="#">Cadastrar</a> 
 <ul>
   <li><a href="caddisc.php">Disciplinas</a></li>
   <li><a href="cadqalunol.php">Aluno</a></li>
   <li><a href="cadcursos.php">Cursos</a></li>
  </ul>
   
   
 <li><a href="#">Alterar</a> 
 <ul>
   <li><a href="altdisciplina_mostra.php">Disciplinas</a></li>
   <li><a href="altaluno_mostra.phhp">Aluno</a></li>
   <li><a href="altcurso_mostra.phhp">Cursos</a></li>
</ul>
</li>
</div>


<center> <img src = "logotipo/logotipo-cps.png"> </center>

<?php

include 'config.php';
include 'mysqlexecuta.php';

$con = conectar();

mysql_select_db('ESCOLA');

$nome = $_POST['nome'];

$sql = "SELECT * FROM alunos where nome = $nome ";

$res = mysqlexecuta($con,$sql);

$quant = (mysql_num_rows($res)); //quantidade de linhas encontradas na consulta

if ($quant == 0)

	{
	
	echo "<p align = 'center'> <b> <font color = '#FF0000'> Aluno não cadastrada !!! </font> </b> </p>";

	}
	
else

	{
		
	$sql = "delete from alunos where nome = $nome";
	
	$res = mysqlexecuta ($con, $sql);
	
	echo "<p align = 'center'> <b> <font color = '#FF0000'> Excluído com sucesso !!! </font> </b> </p>";
	
	}

?>
 
<br> <br> <br>



</body>
</html>