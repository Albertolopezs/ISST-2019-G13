package es.upm.dit.isst.webLab.dao;

import java.util.Collection;

import org.hibernate.Session;

import es.upm.dit.isst.webLab.model.Empresa;

public class EmpresaDAOImplementation implements EmpresaDAO{
	private static EmpresaDAOImplementation instance = null;
	private  EmpresaDAOImplementation() {
	}
	
	public static EmpresaDAOImplementation getInstance() {
		if(instance==null) {
			instance = new EmpresaDAOImplementation();
		}
		return instance;
	}
	@Override
	public void create(Empresa empresa) {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		session.save( empresa );
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public Empresa read(String email) {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		Empresa empresa = session.load( Empresa.class, email );
		session.getTransaction().commit();
		session.close();
		return empresa;
	}

	@Override
	public void update(Empresa empresa) {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		session.saveOrUpdate( empresa );
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public void delete(Empresa empresa) {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		session.delete( empresa );
		session.getTransaction().commit();
		session.close();
	}
	@SuppressWarnings("unchecked")
	@Override
	public Collection<Empresa> readAll() {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		Collection<Empresa> empresas = session.createQuery( "from Empresa" ).list();
		session.getTransaction().commit();
		session.close();
		return empresas;
	}

}
