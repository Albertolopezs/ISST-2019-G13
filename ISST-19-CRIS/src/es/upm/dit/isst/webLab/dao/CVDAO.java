package es.upm.dit.isst.webLab.dao;

import java.util.Collection;

import es.upm.dit.isst.webLab.model.CV;
import es.upm.dit.isst.webLab.model.Usuario;



public interface CVDAO {
	public void create(CV cv );

	public CV read(int id);

	public void update(CV cv);

	public void delete(CV cv);

	public Collection<CV> readAll();	
}
