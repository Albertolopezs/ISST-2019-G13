package es.upm.dit.isst.webLab.dao;

import java.util.Collection;

import javax.ws.rs.core.NewCookie;

import org.hibernate.Session;

import es.upm.dit.isst.webLab.model.CV;
import es.upm.dit.isst.webLab.model.Usuario;

public class CVDAOImplementation implements CVDAO{
	private static  CVDAOImplementation instance = null;
	private CVDAOImplementation() {
		
	}
	public static CVDAOImplementation getInstance() {
		if(instance == null) {
			instance = new CVDAOImplementation();
		}
		return instance;
	}

	@Override
	public void create(CV cv) {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		session.save( cv );
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public CV read(int id) {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		CV cv = session.load( CV.class, id );
		session.getTransaction().commit();
		session.close();
		return cv;
	}

	@Override
	public void update(CV cv) {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		session.saveOrUpdate( cv );
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public void delete(CV cv) {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		session.delete( cv );
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public Collection<CV> readAll() {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		Collection<CV> cvs = session.createQuery( "from CV" ).list();
		session.getTransaction().commit();
		session.close();
		return cvs;
	}

}
