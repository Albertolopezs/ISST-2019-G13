package es.upm.dit.isst.webLab.dao;

import java.util.Collection;

import org.hibernate.Session;


import es.upm.dit.isst.webLab.model.Usuario;

public class UsuarioDAOImplementation implements UsuarioDAO{
	
	private static UsuarioDAOImplementation instance = null;
	private  UsuarioDAOImplementation() {
	}
	public static UsuarioDAOImplementation getInstance() {
		if(instance == null) {
			instance = new UsuarioDAOImplementation();
		}
		return instance;
	}

	@Override
	public void create(Usuario usuario) {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		session.save( usuario );
		session.getTransaction().commit();
		session.close();
		
	}

	@Override
	public Usuario read(String email) {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		Usuario usuario = session.get( Usuario.class, email );
		session.getTransaction().commit();
		session.close();
		return usuario;
	}

	@Override
	public void update(Usuario usuario) {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		session.saveOrUpdate( usuario );
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public void delete(Usuario usuario) {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		session.delete( usuario );
		session.getTransaction().commit();
		session.close();
		
	}
	@SuppressWarnings("unchecked")
	@Override
	public Collection<Usuario> readAll() {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		Collection<Usuario> usuarios = session.createQuery( "from Usuario" ).list();
		session.getTransaction().commit();
		session.close();
		return usuarios;
	}
	

}
