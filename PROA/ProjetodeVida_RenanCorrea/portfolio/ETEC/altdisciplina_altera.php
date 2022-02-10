<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Alteração de Disciplinas</title>
<link href="menu.css" rel="stylesheet" type="text/css" />
</head>
<body>

<center> <img src="logotipo/logotipo-cps.png" /> </center>

<?php

include 'config.php';

include 'mysqlexecuta.php';

$con = $conectar();

mysql_select_db ('ESCOLA');

$cod_disc = $_POST['cod_disc'];

$disciplina = $_POST['disciplina'];

$sql = "UPDATE disciplinas set nomedisciplina = '$disciplina' where coddisciplina = $cod_disc";

$res = mysqlexecuta ($con, $sql);
?>

<p align = "center"> <b> <font color = "#FF0000"> Disciplina alterada com sucesso !!! </font> </b> </p>
<br> <br /> <br />

<a href = 'pesqdisc_geral.php'> <p align = "center"> Listar Disciplinas </p> </a>

<p> <a href = 'index.html'> <p align = "center"> Voltar para o Menu Principal </p> </a>
</body>
</html>