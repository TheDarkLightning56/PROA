<?php 
include "connection.php";
?>
<html>
	<head>
	<title> ParafusoFroxo </title>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="./estilo/estilo_menu.css"/>
	<link rel="stylesheet" type="text/css" href="./estilo/reset.css"/>
	<link rel="stylesheet" type="text/css" href="./estilo/conteudo_review.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="./imagens/6742Lua TCC.ico">
	

	</head>
		<body>

		<nav class="navigation">

				<div class="imagem">
					<img src="imagens/logoTCC.png" />
				</div>
			
			<div id="menuToggle">

			<input type="checkbox" />

				<span></span>
				<span></span>
				<span></span>

				<ul id="menu">
				  <a class="men" href="index.html"><li>Início</li></a>
				  <a class="men" href="destaques_review.html"><li>Reviews</li></a>
				  <a class="men" href="charges.html"><li>Charges</li></a>
				  <a class="men" href="tutoriais.html"><li>Tutoriais</li></a>
				  <a class="men" href="quem_somos.html"><li>Sobre Nós</li></a>
				</ul>
				
			 </div>
			 
		</nav>
	
		<div class="geral"> 
			
					<div class="corpo">
						<h1> Review </h1>
						<hr>
							<div class="intro1">
								<img class="capa" src="imagens/imagem1.jpg">
								
								<p class="legenda">
									Título: Guerra Civil<br>
									Contendo: Capítulo 1<br>
									Roteiro: João Aquino<br>
									Arte: Maxuel da Silva, e Robertivilson Pedro<br>
									Cores: Jeynidiane Marina<br>
									Editora(Brasil): Pernanbooks<br>
									Páginas: 150 (capítulo 1)<br>
								</p>
							</div>
						
								<h2 class="title"> Guerra Civil </h2>
							<div class="review">
								<p>
										Os dois lideres da maior equipe de super-heróis em guerra. Quando uma batalha em Stamford
										deixa diversos feridos e matando centenas, o governo americano cria uma lei que exige todos
										super-heróis a mostrarem seus rostos e revelar suas identidades
										Tony Stark (Homem de ferro) acha isso lamentável, porém necessário para o mundo prosperar
										mais seguro, já Steve Rogers (Capitão América) acha intolerável e uma agressão para liberdade
										de todos, dando inicio a uma guerra civil.

										A diferença entre filme e livro é enorme, a quantidade de heróis envolvidos é absurdamente
										diferente, o numero enorme de batalhas que ocorrem em pouco tempo torna uma leitura
										frenética, rápida e atrativa. A lei divide muitos todos heróis, levando alguns para o time Stark,
										como por exemplo Reed Richards (Senhor fantástico), Peter Parker (Homem Aranha) que
										durante a guerra, ganha um novo uniforme totalmente modificado tecnologicamente
										conhecido como aranha de ferro (Além do mais, tantas decisões extremas de Tony Stark me
										fez ter uma ideia completamente diferente do que eu tinha do personagem, onde no filme eles
										amenizam tudo isso) .
										O time Capitão constitui por nomes como Francis Castiglione (Justiceiro) Bill Foster (Golias) e
										muitos outros, nessa história o Capitão está totalmente furioso e se mostra totalmente
										eficiente em batalha (contradizendo vários fãs cof cof) batendo de frente com Homem de
										ferro.
										A leitura é totalmente atrativa explica o porquê Hulk e Thor não estão presentes, diferente dos
										filmes onde é explicado apenas em Thor Ragnarok. Da um protagonismo imenso para Peter
										Parker, que tem importância gigante em todos os acontecimentos da história, com resultado
										disso tudo... Não vou falar, apenas lendo para saber.
										Leiam, recomendo demais para conhecer a história de vários personagens, e se você já viu o
										filme, não se preocupe pois os acontecimentos de lá não tem absolutamente nada igual aos
										livros, portanto não contém nenhum spoiler, e um aviso, se você é fã de Tony Stark, prepare-
										se para vários plot twists e raivas com o personagem.
								</p>
									
								<br>Por: Matheus Sousa, 2019
							</div>

										<div  class="comentario">
								
										<center>
											<h2>Comente</h2>

												<form name="commentform" method="post" action="insertcomment.php">
													<label>Nome:<input type="text" name="nome"/><br>
													E-mail:<input type="email" name="email"/><br>
													Comentário:<textarea name="comentario"></textarea><br>
													<input type="submit" value="Comentar"/>
												</form>	
									
												
										
										<?php
											$sql = mysql_query("SELECT *FROM comentarios_tb ORDER BY id desc");
											$row = mysql_num_rows($sql);
											if ($row > 0) {
												while ($linha = mysql_fetch_array($sql)) {
													$nome = $linha ['nome'];
													$email = $linha['email'];
													$comentario = $linha['comentario'];
													echo"<hr> <b>Nome:</b>" . $nome . "<br><b>Comentário:</b>" . $comentario . "<br>";
												}
											}
											else{
												echo "<hr>Ainda não foram feitos comentários, vamos lá, seja o primeiro!";
											}
										?>
									</div>
				

							</div>

		</div>
					</center>
		
			<footer>
				<p class="textinho">Todos os conteúdos de terceiros aqui apresentados possuem direitos reservados aos seus respectivos proprietários.<br>
				Parafuso Froxo, 2019<br>
				</p>
			</footer>
		
		</body>
</html>