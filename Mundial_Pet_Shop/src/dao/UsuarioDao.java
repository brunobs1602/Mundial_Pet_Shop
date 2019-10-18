package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
	
	public List<Usuario> select(){
		try {
			List<Usuario> listaUsuarios = new ArrayList<Usuario>();
			String sql = "select * from tb_usuarios";
			PreparedStatement stmt = this.con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
			Usuario user = new Usuario();
			user.setEmail(rs.getString("email"));
			user.setSenha(rs.getString("senha"));
			
			listaUsuarios.add(user);
		}
		rs.close();
		stmt.close();
		return listaUsuarios;
	}catch (SQLException e) {
		throw new RuntimeException(e);
		}
	}
}
