package es.upm.dit.isst.webLab.servlets;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

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
    File getFileFromResources(String fileName) {

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
	@SuppressWarnings("unchecked")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//Ahora con los datos hay que crear un metodo en cv que busque segun parametros
		int educ = 0;
		String carrera = null;
		int idi = 0;
		int nivel = 0;
		Collection<CV> aux = (Collection<CV>) req.getAttribute( "CV_list" );
		
		CVDAO cdao = CVDAOImplementation.getInstance();
		Collection<CV> CVColl = cdao.readAll();
		
		if (req.getParameter( "educacion_nivel") != null) {
			educ = Integer.parseInt(req.getParameter( "educacion_nivel"));
			carrera = req.getParameter( "carreras_select");
			idi = Integer.parseInt(req.getParameter( "idiomas" ));
			nivel = Integer.parseInt(req.getParameter( "nivel"));
			
			//Buscamos dentro de todos los CVs los que cumplen las condiciones
			for (Iterator<CV> iterator = CVColl.iterator(); iterator.hasNext();) {
				CV cv = iterator.next();
				
				//Comprobamos el nivel de educación
				String educ_nv_s = cv.getEducacion_nivel();
				if (educ_nv_s != null) {
					try {
						int educ_nv_i = Integer.parseInt(educ_nv_s);
						if (educ_nv_i < educ) {
							iterator.remove();
							continue;
						}
					} catch (NumberFormatException e) {
						System.out.println("Not a number");
					}
				} else {
					iterator.remove();
					continue;
				}
				
				
				/*//Comprobamos la carrera
				String carrera_s  = cv.getCarrera();
				if(carrera_s != null) {
					if(carrera_s != carrera) {
						iterator.remove();
						continue;
					}
				} else {
					iterator.remove();
					continue;
				}*/
				
				
				//Comprobamos el idioma
				String idioma_s  = cv.getIdiomas();
				if(idioma_s != null) {
					try {
						int idioma_i = Integer.parseInt(idioma_s);
						if(idioma_i != idi) {
							iterator.remove();
							continue;
						}
					}catch (NumberFormatException e){
					    System.out.println("not a number"); 
					} 
				} else {
					iterator.remove();
					continue;
				}
				
				
				//Comprobamos el nivel del idioma
				String idioma_nv_s  = cv.getNivel();
				if(idioma_nv_s != null) {
					try {
						int idioma_nv_i = Integer.parseInt(idioma_nv_s);
						if(idioma_nv_i < nivel) {
							iterator.remove();
							continue;
						}
					}catch (NumberFormatException e){
					    System.out.println("not a number"); 
					} 
				} else {
					iterator.remove();
					continue;
				}
			}
			
		} else {
			CVColl = aux;
		}	
		
		ArrayList<String> carreras = get_carreras();
		req.getSession().setAttribute( "carreras" , carreras );
		req.getSession().setAttribute( "searchCompleted" , 1 );
		req.getSession().setAttribute( "CV_list", CVColl );
		getServletContext().getRequestDispatcher( "/SearchUsers.jsp" ).forward( req, resp );
		
		
	}
}
