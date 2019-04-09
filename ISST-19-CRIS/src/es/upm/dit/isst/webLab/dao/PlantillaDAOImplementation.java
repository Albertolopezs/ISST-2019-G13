package es.upm.dit.isst.webLab.dao;

import java.util.Collection;

import org.hibernate.Session;

import es.upm.dit.isst.webLab.model.Plantilla;

public class PlantillaDAOImplementation implements PlantillaDAO {
	private static PlantillaDAOImplementation instance = null;
	private PlantillaDAOImplementation() {
	}
	public static PlantillaDAOImplementation getInstance() {
		if(instance == null) {
			instance = new PlantillaDAOImplementation();
		}
		return instance;
	}
	@Override
	public void create(Plantilla plantilla) {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		session.save( plantilla );
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public Plantilla read(int id) {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		Plantilla plantilla = session.load( Plantilla.class, id );
		session.getTransaction().commit();
		session.close();
		return plantilla;
	}

	@Override
	public void update(Plantilla plantilla) {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		session.saveOrUpdate( plantilla );
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public void delete(Plantilla plantilla) {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		session.delete( plantilla );
		session.getTransaction().commit();
		session.close();
		
	}
	@SuppressWarnings("unchecked")
	@Override
	public Collection<Plantilla> readAll() {
		Session session = SessionFactoryService.get().openSession();
		session.beginTransaction();
		Collection<Plantilla> plantillas = session.createQuery( "from Plantilla" ).list();
		session.getTransaction().commit();
		session.close();
		return plantillas;
	}
	
	

}
