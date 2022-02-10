<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>PHP - Função Executa Comandos SQL</title>
</head>
<body>

<?php

	function mysqlexecuta ($id, $sql, $erro = 1) {

			if (empty($sql) OR !($id))
	
			{
		
			return 0; 

			}
	
				if (!($res = @mysql_query ($sql, $id)))
		
				{
			
					if ($erro)
			
					{	
			
						echo "Ocorreu um erro na execução do Comando SQL no banco de dados. Favor Contactar o Administrador";
			
						echo "<br>" . "<b> Comando </b>" .$sql. "<br>" . "<b> Id: </b>" .$id. "<br>";
			
						exit;
			
					}
			
				}

					return $res;
	}


?>

</body>
</html>