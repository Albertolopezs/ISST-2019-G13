package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.webLab.model.Usuario;


@WebServlet("/CreateCVServlet")
public class CreateCVServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		boolean educacion = Boolean.parseBoolean(req.getParameter( "educacion" ));
		boolean idiomas = Boolean.parseBoolean(req.getParameter( "idiomas" ));
		boolean expLabo = Boolean.parseBoolean(req.getParameter( "expLabo" ));
		boolean habilidades = Boolean.parseBoolean(req.getParameter( "habilidades" ));
		boolean intereses = Boolean.parseBoolean(req.getParameter( "intereses" ));
		boolean titulacion = Boolean.parseBoolean(req.getParameter( "titulacion" ));
		Usuario usuario = (Usuario) req.getAttribute( "usuario" );
		
		
		req.getSession().setAttribute( "educacion" , educacion );
		req.getSession().setAttribute( "idiomas" , idiomas );
		req.getSession().setAttribute( "expLabo" , expLabo );
		req.getSession().setAttribute( "habilidades" , habilidades );
		req.getSession().setAttribute( "intereses" , intereses );
		req.getSession().setAttribute( "titulacion" , titulacion );
		req.getSession().setAttribute( "usuario", usuario );
		getServletContext().getRequestDispatcher( "/CreateCV.jsp" ).forward( req, resp );
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

}