<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento PHP</title>
</head>
<body>

<?php

function conectar()

{
	
$hostdb = 'localhost'; //servidor mysql, pode ser o nome (lcoalhost) ou o endereço ip (127.0.01)
$userdb = 'root'; //usuário do mysql que terá o acesso
$passdb = 'usbw'; //senho do usuário

	if ($con = mysql_pconnect ($hostdb, $userdb, $passdb ))

	{

	return $con; //se a conexão for bem sucedida, será retornado a variável $con

	}
	
	else
	
	{
	
	return 0; //se a conexão não ocorrer, será retornado 0
		
	}

}

?>

</body>
</html>