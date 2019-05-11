package es.upm.dit.isst.webLab.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class CV implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	
	@ManyToOne
	private Usuario usuario;
	
	@OneToOne
	private Plantilla plantilla;
	
	@ManyToOne
	private Empresa empresa;
	//Información personal
	private String name;
	private String apellidos;
	private String email;
	private String nacimiento;
	//Educacion
	private String educacion_nivel;
	private String carrera;
	private String centro;
	private String inicio_est;
	private String final_est;
	//Experiencia Laboral
	private String puesto_nombre;
	private String empresa_cv;
	private String descripcion;
	private String inicio_job;
	private String final_job;
	private String actualidad;
	//Idiomas
	private String idiomas;
	private String nivel;
	//Habilidades
	private String habilidades;
	//Intereses
	private String intereses; 
	
	public CV() {
		
	}
	//METODOS GET
	//Info personal
	public String getName() {
		return name;
	}
	public String getApellidos() {
		return apellidos;
	}
	public String getEmail() {
		return email;
	}
	public String getNacimiento() {
		return nacimiento;
	}
	//Educación
	public String getEducacion_nivel() {
		return educacion_nivel;
	}
	public String getCarrera() {
		return carrera;
	}
	public String getCentro() {
		return centro;
	}
	public String getInicio_est() {
		return inicio_est;
	}
	public String getFinal_est() {
		return final_est;
	}
	//Experiencia Laboral
	public String getPuesto_nombre() {
		return puesto_nombre;
	}
	public String getEmpresa_cv() {
		return empresa_cv;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public String getInicio_job() {
		return inicio_job;
	}
	public String getFinal_job() {
		return final_job;
	}
	public String getActualidad() {
		return actualidad;
	}
	//Idiomas
	public String getIdiomas() {
		return idiomas;
	}
	public String getNivel() {
		return nivel;
	}
	//Habilidades
	public String getHabilidades() {
		return habilidades;
	}
	//Intereses
	public String getIntereses() {
		return intereses;
	}
	
	public int getId() {
		return id;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public Plantilla getPlantilla() {
		return plantilla;
	}
	public Empresa getEmpresa() {
		return empresa;
	}
	
	
	//METODOS SET
	//Info personal
	public void setName(String name) {
		this.name = name;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setNacimiento(String nacimiento) {
		this.nacimiento = nacimiento;
	}
	//Experiencia Laboral
	
	public void setPuestoNombre(String puestoNombre) {
		this.puesto_nombre = puestoNombre;
	}
	public void setEmpresaCV(String empresa) {
		this.empresa_cv = empresa;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public void setInicioJob(String inicio_job) {
		this.inicio_job = inicio_job;
	}
	public void setFinalJob(String final_job) {
		this.final_job = final_job;
	}
	public void setActualidad(String actualidad) {
		this.actualidad = actualidad;
	}
	
	//Educacion
	
	public void setEducacionNivel(String educacion_nivel) {
		this.educacion_nivel = educacion_nivel;
	}
	public void setCarrera(String carrera) {
		this.carrera = carrera;
	}

	public void setCentro(String centro) {
		this.centro = centro;
	}
	public void setInicioEst(String inicio_est) {
		this.inicio_est = inicio_est;
	}
	public void setFinalEst(String final_est) {
		this.final_est = final_est;
	}
	//Idiomas
	public void setIdiomas(String idiomas) {
		this.idiomas = idiomas;
	}
	public void setNivel(String nivel) {
		this.nivel = nivel;
	}
	public void setHabilidades(String habilidades) {
		this.habilidades = habilidades;
	}
	public void setIntereses(String intereses) {
		this.intereses = intereses;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public void setPlantilla(Plantilla plantilla) {
		this.plantilla = plantilla;
	}
	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}

		
	
}
