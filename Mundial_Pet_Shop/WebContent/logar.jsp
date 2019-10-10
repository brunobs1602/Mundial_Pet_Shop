<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    
    import="java.sql.*"
    %>

    <%@ page language="java" import="modelo.Usuario" %>
    <%@ page language="java" import="dao.UsuarioDao" %>
    <%@ page language="java" import="banco.ConexaoMysql"%>
    
    <%
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");

            String emaile = null;
            String senhae = null;

        

        %>