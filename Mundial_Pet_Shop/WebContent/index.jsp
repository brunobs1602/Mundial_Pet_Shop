<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<link href="css/style.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Mundial Pet Shop</title>
</head>
<body>
<div class="contanier">
<h1 align="left">MUNDIAL PET SHOP</h1> 

<div align="right">
<a href="https://www.facebook.com/"><img src="https://img.icons8.com/color/48/000000/facebook-new.png"></a>
<a href="https://www.instagram.com/"><img src="https://img.icons8.com/color/48/000000/instagram-new.png"></a>
</div>
<div align="right">
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalLogin"> 
    Entrar
  </button>
</div>
  <!-- The Modal -->
  <div class="modal hide fade" id="modalLogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Fazer login</h4>      	
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        
            <form action="login.jsp" method="post">
    <div class="form-group">
      <label for="email">E-mail:</label>
      <input type="email" class="form-control" id="email" placeholder="Digite seu email..." name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Senha:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Digite sua senha..." name="senha">
    </div>
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Lembre me
      </label>
    </div>
    <button type="submit" class="btn btn-primary">Entrar</button>
    <hr>
    <p>Ainda não é membro ?</p>
    <a href="cadastro.jsp" class="btn btn-success">Cadastra-se</a>
    
  </form>
  
        </div>
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
        </div>
        
      </div>
    </div>
  </div>
  

<br>
<!-- A grey horizontal navbar that becomes vertical on small screens -->
<nav class="navbar navbar-expand-sm justify-content-center">

  <!-- Links -->
  	<ul class="navbar-nav">
    	<li class="nav-item">
      		<a class="nav-link" href="index.jsp">INICIO</a>
    	</li>
    	
    	<li class="nav-item">
      		<a class="nav-link" href="sobre.jsp">SOBRE</a>
    	</li>
    	
    	<li class="nav-item dropdown" >
      			<a class="nav-link dropdown-toggle" href="nossos_servicos.jsp" data-toggle="dropdown">NOSSOS SERVIÇOS</a>
      		<div class="dropdown-menu">
      		    <a class="dropdown-item" href="agendamento.jsp">Agendamento Online</a>
      		</div>
    	</li>
    	
    	<li>
      		<a class="nav-link" href="galeria.jsp">GALERIA</a>
    	</li>
    	
    	<li>
      		<a class="nav-link" href="contato.jsp">CONTATO</a>
    	</li>
    	
  	</ul>
</nav>

<br>
<div align="center">
<div id="carouselFade" class="carousel slide carousel-fade" data-ride="carousel">
  
  <div class="carousel-inner" >
    <div class="carousel-item active">
      <img class="d-block w-100" src="imagens/img 1.png">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="imagens/img 2.png">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="imagens/img 3.png">
    </div>
  
  <div class="carousel-item">
      <img class="d-block w-100" src="imagens/img 4.png">
    </div>
  <div class="carousel-item">
      <img class="d-block w-100" src="imagens/img 5.png">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselFade" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Anterior</span>
  </a>
  <a class="carousel-control-next" href="#carouselFade" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Próximo</span>
  </a>
</div>
</div>
<br>
<br>
<div align="center">
<h6>© 2019 Mundial pet shop</h6>
</div>








</div>
</body>
</html>