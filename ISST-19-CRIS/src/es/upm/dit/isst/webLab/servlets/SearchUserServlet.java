package es.upm.dit.isst.webLab.servlets;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
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
import es.upm.dit.isst.webLab.dao.UsuarioDAOImplementation;
import es.upm.dit.isst.webLab.model.CV;
import es.upm.dit.isst.webLab.model.Usuario;

@WebServlet("/SearchUserServlet")
public class SearchUserServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Subject currentUser = SecurityUtils.getSubject();
		//Se usa para obtener los nombres de las carreras
				//Cambiar esto a la dirección de vuestro archivo carreras.txt. Investigaré para poner dirección relativa
				String fileName = "/Users/albertolopez/Desktop/ISST-2019-G13/ISST-19-CRIS/src/carreras.txt";
				ArrayList<String> carreras = new ArrayList<String>();
				BufferedReader br = new BufferedReader(new FileReader(fileName));
				try {
				    StringBuilder sb = new StringBuilder();
				    String line = br.readLine();

				    while (line != null) {
				        carreras.add(line);
				        line = br.readLine();
				    }
				    String everything = sb.toString();
				} finally {
				    br.close();
				}
		req.getSession().setAttribute( "carreras" , carreras );	

		getServletContext().getRequestDispatcher( "/SearchUsers.jsp" ).forward( req, resp );
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//Ahora con los datos hay que crear un metodo en cv que busque segun parametros
		
		String educ = req.getParameter( "educacion_nivel");
		String carrera = req.getParameter( "carreras_select");
		
		String idi = req.getParameter( "idiomas" );
		String nivel = req.getParameter( "nivel");
		

		
		
	}
}
