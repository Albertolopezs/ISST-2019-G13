package es.upm.dit.isst.webLab.dao;

import java.util.Collection;

import es.upm.dit.isst.webLab.model.Plantilla;

public interface PlantillaDAO {
	public void create(Plantilla plantilla);

	public Plantilla read(int id);

	public void update(Plantilla plantilla);

	public void delete(Plantilla plantilla);

	public Collection<Plantilla> readAll();
}
