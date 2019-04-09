package es.upm.dit.isst.webLab.model;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;

@Entity
public class Empresa implements Serializable {
	@Id
	private String email;
	private String password;
	private String name;
	private String NIF;
	private String category;
	private String description;
	
	@Lob
	private byte[] photo;
	@Lob
	private byte[] photoBackground;
	
	private boolean buscandoEmpleados;
	private String[] puestosEnOferta;
	
	@OneToMany(mappedBy = "empresa" , fetch = FetchType.EAGER)
	private Collection<Usuario> empleados;
	
	@OneToMany(mappedBy = "empresa" , fetch = FetchType.EAGER)
	private Collection<Plantilla> plantillas;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNIF() {
		return NIF;
	}

	public void setNIF(String nIF) {
		NIF = nIF;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

	public byte[] getPhotoBackground() {
		return photoBackground;
	}

	public void setPhotoBackground(byte[] photoBackground) {
		this.photoBackground = photoBackground;
	}

	public boolean isBuscandoEmpleados() {
		return buscandoEmpleados;
	}

	public void setBuscandoEmpleados(boolean buscandoEmpleados) {
		this.buscandoEmpleados = buscandoEmpleados;
	}

	public String[] getPuestosEnOferta() {
		return puestosEnOferta;
	}

	public void setPuestosEnOferta(String[] puestosEnOferta) {
		this.puestosEnOferta = puestosEnOferta;
	}

	public Collection<Usuario> getEmpleados() {
		return empleados;
	}

	public void setEmpleados(Collection<Usuario> empleados) {
		this.empleados = empleados;
	}

	public Collection<Plantilla> getPlantillas() {
		return plantillas;
	}

	public void setPlantillas(Collection<Plantilla> plantillas) {
		this.plantillas = plantillas;
	}
	
	
	
	

}
