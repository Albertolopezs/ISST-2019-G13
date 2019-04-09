package es.upm.dit.isst.webLab.model;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Usuario implements Serializable {
	@Id
	private String email;
	private String password;
	private String name;
	private String apell1;
	private String apell2;
	private String direccion;
	@Lob
	private byte[] photo;

	@Lob 
	private byte[] photoBackground;

	private String description;
	private String studies;
	@OneToMany(mappedBy = "usuario" , fetch = FetchType.EAGER)
	private Collection<CV> curriculums;
	
	@ManyToOne
	private Empresa empresa;
	
	private boolean buscandoTrabajo;
	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	private String trabajoBuscado;
	private String enlaceCurriculum;

	public Usuario() {
	}

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

	public String getApell1() {
		return apell1;
	}

	public void setApell1(String apell1) {
		this.apell1 = apell1;
	}

	public String getApell2() {
		return apell2;
	}

	public void setApell2(String apell2) {
		this.apell2 = apell2;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStudies() {
		return studies;
	}

	public void setStudies(String studies) {
		this.studies = studies;
	}

	public Collection<CV> getCurriculums() {
		return curriculums;
	}

	public void setCurriculums(Collection<CV> curriculums) {
		this.curriculums = curriculums;
	}

	public boolean isBuscandoTrabajo() {
		return buscandoTrabajo;
	}

	public void setBuscandoTrabajo(boolean buscandoTrabajo) {
		this.buscandoTrabajo = buscandoTrabajo;
	}

	public String getTrabajoBuscado() {
		return trabajoBuscado;
	}

	public void setTrabajoBuscado(String trabajoBuscado) {
		this.trabajoBuscado = trabajoBuscado;
	}

	public String getEnlaceCurriculum() {
		return enlaceCurriculum;
	}

	public void setEnlaceCurriculum(String enlaceCurriculum) {
		this.enlaceCurriculum = enlaceCurriculum;
	}


}
