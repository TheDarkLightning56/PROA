<?php include "connection.php";
	$nome=$_POST['nome'];
	$email=$_POST['email'];
	$comentario=$_POST['comentario'];
	
	$insert = "INSERT INTO comentarios_tb(nome, email, comentario)
	VALUES ('$nome','$email','$comentario')";
	
	$query = mysql_query($insert);
	echo"<center><h1>Obrigado, seu comentário foi enviado!</h1><br> <a href='review.php'>Voltar a página</a></center>"
?>