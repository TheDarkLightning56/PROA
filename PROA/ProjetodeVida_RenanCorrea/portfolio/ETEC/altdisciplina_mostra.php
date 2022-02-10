<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Pesquisa de Disciplinas para Alteração</title>
<link href="menu.css" rel="stylesheet" type="text/css" />
</head>
<body>

<center> <img src="logotipo-cps.png" /> </center>

<?php

include 'config.php'; //Chamando a rotina que conecta com o banco

include 'mysqlexecuta.php'; //Chamando a rotina que executa comandos SQL

$con = conectar();

mysql_select_db ('ESCOLA');

$sql = "SELECT * from disciplinas where CodDisciplina = $cod_dic";

$res = mysqlexecuta ($con, $sql);

$quant = (mysql_num_rows($res));

if ($quant == 0)

	{
	
	echo "<p align = 'center'>" . "<b>" . "<font color = 'red'>" . "Disciplina não cadastrada !!!" . "</font>". "</b>" . "</p>";	
		
	}

	else 
	
	{

?>

<form method="post" action="alterdisc_altera.php">

<p> <b> Código.... : </b> <?php echo $row ['CodDisciplina']; ?> </p>
<input type = "hidden" name = "cod_disc" value = <?php echo $row ['CodDisciplina']; ?> />

<p> <b> Disciplina.... : </b> <?php echo $row ['CodDisciplina']; ?> </p>
<input type = "text" name = "disciplina" value = <?php echo $row ['NomeDisciplina']; ?> /> 
</p>

<center> <br> <br> <input type = "submit" value = "Alterar Dados"> </center> 

</form>

<?php 

} 

?>

<p> <a href = 'index.php'> <p align = "center"> Voltar para o Menu Principal </p> </a>
</body>
</html>