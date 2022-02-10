<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PHP - Lista Geral de Alunos</title>
<link href="menu.css" rel="stylesheet" type="text/css" />
</head>
<body>


<?php

include 'config.php';
include 'mysqlexecuta.php';

$con = conectar();
mysql_select_db ('ESCOLA');

$sql = "SELECT * FROM alunos order by nome";
$res = mysqlexecuta($con, $sql);

?>

<table p align = "center" border = "1" width = "750">
<tr> <td p align = "center" colspan="5">
<img src = "logotipo/logotipo-cps.png" width="400" height="120" border = "0" />
<tr><td bgcolor = bgcolor="#B2131A" colspan="5"><p align="center"><b>Alunos em Ordem Alfabética</b></td>


<?php

while ($row = mysql_fetch_array($res))

	{
		
?> 	
	
	<tr> <td><?php echo $row['matricula']; ?></td>
		 <td><?php echo $row['nome']; ?></td> 
		 <td><?php echo $row['endereco']; ?></td> 
		 <td><?php echo $row['cidade']; ?></td> 
		 <td><?php echo $row['codcurso']; ?></td> </tr>
		 
         
<?php

	}

?>

</table> <br><br>



</body>
</html>