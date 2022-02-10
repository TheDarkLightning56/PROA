<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PHP - Pesquisa Disciplina por nome</title>
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


<center> <img src="logotipo/logotipo-cps.png"> </center>

<?php

include 'config.php';
include 'mysqlexecuta.php';

$con = conectar();

mysql_select_db('ESCOLA');

$nome = $_POST['nome'];

$sql = "SELECT * FROM cursos where nome like '$nome' order by nome";

$res = mysqlexecuta($con,$sql);

$quant = (mysql_num_rows($res)); //quantidade de linhas encontradas na consulta

if ($quant == 0)

	{
	
	echo "<p align = 'center'> <b> <font color = '#FF0000'> Disciplina não cadastrada !!! </font> </b> </p>";

	}
	
else

	{

?>

<p align = "center"> <table border = "1" width = "750">
<tr> <td bgcolor = "#FFFFCO"> <p align = "center"> <b> Cursos em Ordem Alfabética </b> </p> </td> </tr>

<table width = "750" cellpadding = "0" cellspacing = "0" border = "1">

<tr> <td> <b> Cód.Curso </b> </td>
	 <td> <b> Nome  </b> </td> </tr>
	 <td> <b> Cód.Disciplina 1 </b> </td>
	 <td> <b> Cód.Disciplina 2  </b> </td>
	 <td> <b> Cód.Disciplina 3</b> </td>
<?php

	while ($row = mysql_fetch_array($res))	

	{
	

?>

<tr> 	 <td><?php echo $row['codcurso']; ?></td>
		 <td><?php echo $row['nome']; ?></td> 
		 <td><?php echo $row['coddisc1']; ?></td> 
		 <td><?php echo $row['coddisc2']; ?></td> 
		 <td><?php echo $row['coddisc3']; ?></td> </tr>
		 


<?php
	
	} // fechando WHILE

	} //fechando IF

?>

</table> 

<br> <br>



</body>
</html>