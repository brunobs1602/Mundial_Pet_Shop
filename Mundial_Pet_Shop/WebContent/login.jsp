
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" import="banco.ConexaoMysql"%>
<%@ page language="java" import="dao.UsuarioDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String email = request.getParameter("email");
String senha = request.getParameter("senha");


try{
	ConexaoMysql conexao = new ConexaoMysql();
	Connection connection = conexao.conecta();
	Statement st = connection.createStatement();
	String sql = "SELECT * FROM tb_usuarios where email = '" + email + "' and senha = '" + senha + "'";
	ResultSet rs = st.executeQuery(sql);
	
	if(rs.next()){
		// sucesso
		//out.print("Sucesso");
		
		 String redirectURL = "http://localhost:8080/Mundial_Pet_Shop/princ.jsp";
		     response.sendRedirect(redirectURL);
		
	}else{
		// usuario ou senha invalido
		out.print("Falha");
		
		String volta_index = "falha.jsp";
        response.setHeader("Location", volta_index);
        
	}
	connection.close();
}catch (Exception e){
    out.println(e.toString());
}
%>
</body>
</html>