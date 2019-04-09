package es.upm.dit.isst.webLab.dao;

import java.util.Collection;


import es.upm.dit.isst.webLab.model.Empresa;

public interface EmpresaDAO {
	public void create(Empresa empresa);

	public Empresa read(String email);

	public void update(Empresa empresa);

	public void delete(Empresa empresa);

	public Collection<Empresa> readAll();
}
