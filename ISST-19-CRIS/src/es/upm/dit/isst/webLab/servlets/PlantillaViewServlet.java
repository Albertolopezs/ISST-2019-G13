package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.webLab.dao.PlantillaDAO;
import es.upm.dit.isst.webLab.dao.PlantillaDAOImplementation;
import es.upm.dit.isst.webLab.model.Plantilla;


@WebServlet("/PlantillaViewServlet")
public class PlantillaViewServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter( "id" );
		PlantillaDAO pdao = PlantillaDAOImplementation.getInstance();
		
		Plantilla plantilla = pdao.read( Integer.parseInt( id ) );
		boolean educacion = plantilla.isEducacion();
		boolean expLabo = plantilla.isExpLaboral();
		boolean habilidades = plantilla.isHabilidades();
		boolean idiomas = plantilla.isIdiomas();
		boolean interes = plantilla.isIntereses();
		boolean titulo = plantilla.isTitulacion();
		String name = plantilla.getName();
		String email = plantilla.getEmpresa().getEmail();
		
		req.getSession().setAttribute( "name" , name );
		req.getSession().setAttribute( "educacion", educacion );
		req.getSession().setAttribute( "expLabo", expLabo );
		req.getSession().setAttribute( "habilidades", habilidades );
		req.getSession().setAttribute( "idiomas", idiomas );
		req.getSession().setAttribute( "interes", interes );
		req.getSession().setAttribute( "titulo", titulo );
		req.getSession().setAttribute( "email", email );
		req.getSession().setAttribute( "plantilla", plantilla );
		req.getSession().setAttribute( "id", id );
		req.getRequestDispatcher( "/PlantillaView.jsp" ).forward( req, resp );
	}
}
