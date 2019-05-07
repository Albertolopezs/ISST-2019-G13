package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.webLab.dao.CVDAO;
import es.upm.dit.isst.webLab.dao.CVDAOImplementation;
import es.upm.dit.isst.webLab.dao.UsuarioDAOImplementation;
import es.upm.dit.isst.webLab.model.CV;
import es.upm.dit.isst.webLab.model.Usuario;
import java.io.*;
import java.util.*;
import java.net.*;



@WebServlet("/CreateCVServlet")
public class CreateCVServlet extends HttpServlet {
	
	

		public ArrayList<String> get_carreras() throws IOException {

	        CreateCVServlet main = new CreateCVServlet();
	        File file = main.getFileFromResources("carreras.txt");

	        ArrayList<String> carreras = printFile(file);
	        return carreras;
	    }

	    // get file from classpath, resources folder
	    private File getFileFromResources(String fileName) {

	        ClassLoader classLoader = getClass().getClassLoader();

	        URL resource = classLoader.getResource(fileName);
	        if (resource == null) {
	            throw new IllegalArgumentException("file is not found!");
	        } else {
	            return new File(resource.getFile());
	        }

	    }

	    private static ArrayList<String> printFile(File file) throws IOException {
			ArrayList<String> carreras = new ArrayList<String>();
	        if (file == null) return carreras;

	        try (FileReader reader = new FileReader(file);
	             BufferedReader br = new BufferedReader(reader)) {

	            String line;
	            while ((line = br.readLine()) != null) {
			        carreras.add(line);
	            }
	            return carreras;
	        }
	    }
	    
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		boolean educacion = Boolean.parseBoolean(req.getParameter( "educacion" ));
		boolean idiomas = Boolean.parseBoolean(req.getParameter( "idiomas" ));
		boolean expLabo = Boolean.parseBoolean(req.getParameter( "expLabo" ));
		boolean habilidades = Boolean.parseBoolean(req.getParameter( "habilidades" ));
		boolean intereses = Boolean.parseBoolean(req.getParameter( "intereses" ));
		//Se usa para obtener los nombres de las carreras
		//Cambiar esto a la dirección de vuestro archivo carreras.txt. Investigaré para poner dirección relativa

		ArrayList<String> carreras = get_carreras();
		
		String email = req.getParameter( "email" );
		req.getSession().setAttribute( "carreras" , carreras );
		req.getSession().setAttribute( "educacion" , educacion );
		req.getSession().setAttribute( "idiomas" , idiomas );
		req.getSession().setAttribute( "expLabo" , expLabo );
		req.getSession().setAttribute( "habilidades" , habilidades );
		req.getSession().setAttribute( "intereses" , intereses );
		req.getSession().setAttribute( "email", email );
		getServletContext().getRequestDispatcher( "/CreateCV.jsp" ).forward( req, resp );
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name_cv = req.getParameter("full_name");
		//Informacion personal
		String nombre = req.getParameter( "nombre");
		String apellidos = req.getParameter( "apellidos");
		String email = req.getParameter( "correo");
		String nacimiento = req.getParameter("nacimiento");
		//Educación
		String educ = req.getParameter( "educacion_nivel");
		String carrera = req.getParameter( "carreras_select");
		String centro = req.getParameter( "centro");
		String inicio_estudios = req.getParameter( "inicio_estudios");
		String final_estudios = req.getParameter( "final_estudios");
		//Experiencia laboral
		String puesto_name = req.getParameter( "puesto_name");
		String empresa = req.getParameter( "empresa");
		String descripcion = req.getParameter( "descripcion");
		String i_trabajo = req.getParameter( "inicio_trabajo");
		String f_trabajo = req.getParameter( "final_trabajo");
		String actualidad = req.getParameter( "actualidad");
		//Idiomas
		String idi = req.getParameter( "idiomas" );
		String nivel = req.getParameter( "nivel");
		//Habilidades
		String skill = req.getParameter( "skill" );
		//Interes
		String interes = req.getParameter( "interes" );
		
		Usuario usuario = UsuarioDAOImplementation.getInstance().read(email);
		
		CVDAO cdao = CVDAOImplementation.getInstance();
		CV CV = new CV();
		CV.setName(name_cv);
		CV.setApellidos(apellidos);
		CV.setEmail(email);
		CV.setNacimiento(nacimiento);
		
		CV.setEducacionNivel(educ);
		CV.setCarrera(carrera);
		CV.setCentro(centro);
		CV.setInicioEst(inicio_estudios);
		CV.setFinalEst(final_estudios);
		
		CV.setPuestoNombre(puesto_name);
		CV.setDescripcion(descripcion);
		CV.setEmpresaCV(empresa);
		CV.setInicioJob(i_trabajo);
		CV.setFinalJob(f_trabajo);
		CV.setActualidad(actualidad);
		
		CV.setIdiomas(idi);
		CV.setNivel(nivel);
		
		CV.setHabilidades(skill);
		CV.setIntereses(interes);
		
		CV.setUsuario(usuario);
		cdao.create(CV);
		
		resp.sendRedirect( req.getContextPath() + "/UsuarioServlet?email=" + email);
		
		
	}

}
