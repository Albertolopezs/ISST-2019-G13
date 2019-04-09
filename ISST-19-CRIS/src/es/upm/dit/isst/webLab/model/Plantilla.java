package es.upm.dit.isst.webLab.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Plantilla implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@ManyToOne
	private Empresa empresa;
	
	private boolean educacion;
	private boolean idiomas;
	private boolean expLaboral;
	private boolean habilidades;
	private boolean titulacion;
	private boolean intereses;
	
	public Plantilla() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Empresa getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}

	public boolean isEducacion() {
		return educacion;
	}

	public void setEducacion(boolean educacion) {
		this.educacion = educacion;
	}

	public boolean isIdiomas() {
		return idiomas;
	}

	public void setIdiomas(boolean idiomas) {
		this.idiomas = idiomas;
	}

	public boolean isExpLaboral() {
		return expLaboral;
	}

	public void setExpLaboral(boolean expLaboral) {
		this.expLaboral = expLaboral;
	}

	public boolean isHabilidades() {
		return habilidades;
	}

	public void setHabilidades(boolean habilidades) {
		this.habilidades = habilidades;
	}

	public boolean isTitulacion() {
		return titulacion;
	}

	public void setTitulacion(boolean titulacion) {
		this.titulacion = titulacion;
	}

	public boolean isIntereses() {
		return intereses;
	}

	public void setIntereses(boolean intereses) {
		this.intereses = intereses;
	}
	
	
}
