package view;

import dao.UsuarioDao;
import modelo.Usuario;

public class FormInsert {

	public static void main(String[] args) {
		
		Usuario u = new Usuario();
		UsuarioDao uDao = new UsuarioDao();
		
		u.setNome("Bruno");
		u.setSobreNome("Barreiro");
		u.setEmail("brunobarreiro16@gmail.com");
		u.setSenha("26980100");
		u.setConfSenha("26980100");
		
		uDao.insert(u);
	}

}
