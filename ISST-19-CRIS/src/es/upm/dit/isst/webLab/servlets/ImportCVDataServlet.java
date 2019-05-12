package es.upm.dit.isst.webLab.servlets;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import es.upm.dit.isst.webLab.dao.CVDAO;
import es.upm.dit.isst.webLab.dao.CVDAOImplementation;
import es.upm.dit.isst.webLab.dao.PlantillaDAO;
import es.upm.dit.isst.webLab.dao.PlantillaDAOImplementation;
import es.upm.dit.isst.webLab.dao.UsuarioDAO;
import es.upm.dit.isst.webLab.dao.UsuarioDAOImplementation;
import es.upm.dit.isst.webLab.model.CV;
import es.upm.dit.isst.webLab.model.Empresa;
import es.upm.dit.isst.webLab.model.Plantilla;
import es.upm.dit.isst.webLab.model.Usuario;

@WebServlet("/ImportCVDataServlet")
public class ImportCVDataServlet extends HttpServlet {
 
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
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int PlantillaId = Integer.parseInt(req.getParameter( "id" ));
		int CVId	= Integer.parseInt(req.getParameter( "CV" ));
		
		Subject currentUser = SecurityUtils.getSubject();
		String email = (String) currentUser.getPrincipal();
		UsuarioDAO udao = UsuarioDAOImplementation.getInstance();
		Usuario usuario = udao.read(email);
		CVDAO cdao = CVDAOImplementation.getInstance();
		CV cv = cdao.read(CVId);
		PlantillaDAO pdao = PlantillaDAOImplementation.getInstance();
		Plantilla plantilla = pdao.read(PlantillaId);
		
		Empresa empresa = plantilla.getEmpresa();
		
		boolean educacion = plantilla.isEducacion();
		boolean idiomas = plantilla.isIdiomas();
		boolean expLabo = plantilla.isExpLaboral();
		boolean habilidades = plantilla.isHabilidades();
		boolean intereses = plantilla.isIntereses();
		
		//Se usa para obtener los nombres de las carreras
		//Cambiar esto a la dirección de vuestro archivo carreras.txt. Investigaré para poner dirección relativa

		ArrayList<String> carreras = get_carreras();
		
		req.getSession().setAttribute( "CV" , cv );
		req.getSession().setAttribute( "carreras" , carreras );
		req.getSession().setAttribute( "educacion" , educacion );
		req.getSession().setAttribute( "idiomas" , idiomas );
		req.getSession().setAttribute( "expLabo" , expLabo );
		req.getSession().setAttribute( "habilidades" , habilidades );
		req.getSession().setAttribute( "intereses" , intereses );
		req.getSession().setAttribute( "usuario", usuario );
		req.getSession().setAttribute( "empresa", empresa );
		getServletContext().getRequestDispatcher( "/CreateCV.jsp" ).forward( req, resp );
	}
}
