
<!DOCTYPE html>
<html>
<head>
<?php include'head.php' ?>

<script>
function recarregarCurtida() {
    location.reload();
}

</script>
</head>
<body>

<?php include'menu.php' ?>

<div class="ui sixteen wide divided grid">
		<div class="one wide column"></div>
		<div class="three wide column" id="divImagem">
     <a href="../controlador/Usuarios.php?acao=paginaDoUsuario&id_usuario=<?=$pergunta['id_usuario']?>&cod_tip=<?=$pergunta['cod_tip']?>"> 
      <img class="ui fluid image" src="<?=$pergunta['foto_perf']?>"> </a>
    
    
    <h4><?=$pergunta['Nome']?></h4>
	</div>
		<div class="eleven wide column" id="divPergunta">
			<h3> <?=$pergunta['titulo']?> </h3>
			<p> <?=$pergunta['descricao_pergunta']?> </p>
      <div class="ui labeled button" tabindex="0">
  <div class="ui button" onclick="recarregarCurtida()">
    <i class="heart icon"> 
    </i> Like
  </div>
  <a class="ui basic left pointing label">
    <?=$numDeCurtidas['NumeroDeCurtida'];?>
  </a>
</div>   

<?php if  (isset($_SESSION['id_usuario']) and $pergunta['id_usuario'] == $_SESSION['id_usuario']){  ?>
  <a href="../controlador/Usuarios.php?acao=deletarPergunta&id_pergunta=<?=$pergunta['id_pergunta']?>">
    <div class="ui animated negative button" id="deletar" tabindex="0">
        <div class="visible content">Deletar Pergunta</div>
          <div class="hidden content">
            <i class="trash alternate icon"></i>
          </div>
  </div>
  </a>
<?php }; ?>


    </div>
		<div class="one wide column"></div>
	</div>


	<div class="ui sixteen wide divided grid">
	<div class="one wide column"></div>
		<div class="seven wide column">
			<div class="ui comments">
  <h3 class="ui dividing header">Comentarios</h3>

  <?php foreach ($comentarios as $comentario) { ?>
    <div class="ui sixteen wide grid">
      <div class="fourteen wide column">
        <div class="comment">
    <div class="ui sixteen wide grid">
      <div class="two wide column">
        <img class="ui fluid image" src="<?=$comentario['foto_perf']?>">
      </div>
      <div class="fourteen wide column">
        <div class="content">
    <a href="../controlador/Usuarios.php?acao=paginaDoUsuario&id_usuario=<?=$comentario['id_usuario']?>&cod_tip=<?=$comentario['cod_tip']?>"  class="author"><?=$comentario['Nome']?></a></a>
      
      <div class="metadata">
        <span class="date"><?=$comentario['data_comentario']?></span>
      </div>
      <div class="text">
        <?=$comentario['texto_comentario']?>
      </div>
    </div>
    </div>
      </div>
      </div>
    </div>
    <div class="two wide column">
        <?php if  (isset($_SESSION['id_usuario']) and $comentario['id_usuario'] == $_SESSION['id_usuario']){  ?>
  <a href="../controlador/Usuarios.php?acao=deletarComentario&id_comentario=<?=$comentario['id_comentario']?>">
    <button class="circular ui negative icon button">
  <i class="trash alternate icon"></i>
    </button>
  </a>
<?php }; ?>
      </div>
      </div>
      
      

    

    
  <?php } ?>

      <?php 
      if (isset($_SESSION['id_usuario']) and $_SESSION['cod_tip'] == 5) { ?>
        <form class="ui reply form" method="post" action="../controlador/Usuarios.php?acao=pergunta&id_pergunta=<?=$pergunta['id_pergunta']?>&cod_tip=<?=$pergunta['cod_tip']?>">
      <input type="text" name="texto_comentario">
      <button class="ui button"  type="submit" name="enviar" >Comentar!</button> 
  </form>
    
      <?php 
      }; ?>
</div>
</div>


    

    
   



		<div class="seven wide column">
			<div class="ui comments">
      <h3 class="ui dividing header">Respostas</h3>

      <?php foreach ($respostas as $resposta) { ?>

      <div class="ui sixteen wide grid">
        <div class="fourteen wide column">
          <div class="comment">
            <div class="ui sixteen wide grid">
              <div class="two wide column">
                <a>
      <img class="ui fluid image" src="<?=$resposta['foto_perf']?>">
    </a>
              </div>
              <div class="fourteen wide column">
                <div class="content">
      <a href="../controlador/Usuarios.php?acao=paginaDoUsuario&id_usuario=<?=$resposta['id_usuario']?>&cod_tip=<?=$resposta['cod_tip']?>"  class="author"><?=$resposta['Nome']?></a></a>
      <div class="metadata">
        <div class="date"><?=$resposta['data_resposta']?></div>
      </div>
      <div class="text">
        <p><?=$resposta['texto_resposta']?></p>
      </div>
    </div>
              </div>
            </div>


    
    
  </div>
        </div>
        <div class="two wide column">
          <?php if  (isset($_SESSION['id_usuario']) and $resposta['id_usuario'] == $_SESSION['id_usuario']){  ?>
  <a href="../controlador/Usuarios.php?acao=deletarResposta&id_resposta=<?=$resposta['id_resposta']?>">
    <button class="circular ui negative icon button">
  <i class="trash alternate icon"></i>
    </button>
  </a>
<?php }; ?>
        </div>
      </div>


        
      <?php } ?>


            <?php if (isset($_SESSION['id_usuario']) and $_SESSION['cod_tip'] == 4) { ?>
  <form class="ui reply form" method="post" action="../controlador/Usuarios.php?acao=pergunta&id_pergunta=<?=$pergunta['id_pergunta']?>&cod_tip=<?=$pergunta['cod_tip']?>">
      <input type="text" name="texto_resposta">
      <button class="ui button" type="submit" name="enviar" >Responder!</button> 
  </form>
      <?php 
      }; ?>
  
</div>
   
   </div>
<div class="one wide column"></div>


	




</body>
</html>

