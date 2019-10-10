package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import banco.ConexaoMysql;
import modelo.Usuario;

public class UsuarioDao {
	
	private Connection con;
	private ConexaoMysql conexao;
	
	public UsuarioDao() {
		this.conexao = ConexaoMysql.getInstancia();
		this.con = conexao.conecta();
		}
	
	public void insert(Usuario user) {
		String sql = "insert into tb_usuarios "
		 + "(nome, sobreNome, email, senha, confSenha) values (?, ?, ?, ?, ?)";
		try {
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, user.getNome());
		stmt.setString(2, user.getSobreNome());
		stmt.setString(3, user.getEmail());
		stmt.setString(4, user.getSenha());
		stmt.setString(5, user.getConfSenha());
		stmt.execute();
		stmt.close();
		}catch (SQLException e) {
		throw new RuntimeException(e);
		}
		}
}
