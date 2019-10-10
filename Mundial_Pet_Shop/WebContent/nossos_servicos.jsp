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
<title>Mundia Pet Shop</title>
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
  <div class="modal" id="modalLogin">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Fazer login</h4>      	
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        
            <form action="insere.jsp" method="post">
    <div class="form-group">
      <label for="email">E-mail:</label>
      <input type="email" class="form-control" id="email" placeholder="Digite seu email..." name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Senha:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Digite sua senha..." name="pswd">
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
  

<hr>
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



<hr>
<div align="center">
<h6>© 2019 Mundial pet shop</h6>
</div>








</div>
</body>
</html>