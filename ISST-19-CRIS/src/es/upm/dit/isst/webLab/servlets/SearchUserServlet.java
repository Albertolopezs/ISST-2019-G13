package es.upm.dit.isst.webLab.servlets;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import es.upm.dit.isst.webLab.dao.CVDAO;
import es.upm.dit.isst.webLab.dao.CVDAOImplementation;
import es.upm.dit.isst.webLab.dao.UsuarioDAOImplementation;
import es.upm.dit.isst.webLab.model.CV;
import es.upm.dit.isst.webLab.model.Usuario;

@WebServlet("/SearchUserServlet")
public class SearchUserServlet extends HttpServlet {
	
	public ArrayList<String> get_carreras() throws IOException {

        SearchUserServlet main = new SearchUserServlet();
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

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Subject currentUser = SecurityUtils.getSubject();
		//Se usa para obtener los nombres de las carreras
		ArrayList<String> carreras = get_carreras();
		req.getSession().setAttribute( "carreras" , carreras );
		req.getSession().setAttribute( "searchCompleted" , 0 );
		getServletContext().getRequestDispatcher( "/SearchUsers.jsp" ).forward( req, resp );
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//Ahora con los datos hay que crear un metodo en cv que busque segun parametros
		
		int educ = Integer.valueOf(req.getParameter( "educacion_nivel"));
		String carrera = req.getParameter( "carreras_select");
		int idi = Integer.valueOf(req.getParameter( "idiomas" ));
		int nivel = Integer.valueOf(req.getParameter( "nivel"));
		
		//Buscamos dentro de todos los CVs los que cumplen las condiciones
		CVDAO cdao = CVDAOImplementation.getInstance();
		Collection<CV> CVColl = cdao.readAll();
		for(CV cv : CVColl) {
			System.out.println(cv.getName());
			//Comprobamos el nivel de educación
			String educ_nv_s  = cv.getEducacionNivel();
			if(educ_nv_s != null) {
				try {
					int educ_nv_i = Integer.valueOf(educ_nv_s);
					if(educ_nv_i >=educ) {
						System.out.println("Educacion"+educ_nv_i);
						}
					
				}catch (NumberFormatException e){
				    System.out.println("not a number"); 
				} 

			}
			
			//Comprobamos la carrera
			String carrera_s  = cv.getCarrera();
			if(carrera_s != null) {
				if(carrera_s == carrera) {
					System.out.println("Carrera"+carrera_s);}
			}
			
			//Comprobamos el idioma
			String idioma_s  = cv.getIdiomas();
			if(idioma_s != null) {
				try {
					int idioma_i = Integer.valueOf(idioma_s);
					if(idioma_i ==idi) {
						System.out.println("Idioma"+idioma_i);
						}
					
				}catch (NumberFormatException e){
				    System.out.println("not a number"); 
				} 
				
			}
			
			//Comprobamos el nivel del idioma
			
			String idioma_nv_s  = cv.getNivel();
			if(idioma_nv_s != null) {
				try {
					int idioma_nv_i = Integer.valueOf(idioma_nv_s);
					if(idioma_nv_i >=nivel) {
						System.out.println("Nivel de idioma"+nivel + idioma_nv_i);
						}
					
				}catch (NumberFormatException e){
				    System.out.println("not a number"); 
				} 

			}
        }
		

		
		
	}
}
