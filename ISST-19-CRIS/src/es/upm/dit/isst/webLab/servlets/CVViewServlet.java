package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.webLab.dao.CVDAO;
import es.upm.dit.isst.webLab.dao.CVDAOImplementation;
import es.upm.dit.isst.webLab.model.CV;


@WebServlet("/CVViewServlet")
public class CVViewServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CVDAO cdao = CVDAOImplementation.getInstance();
		String id = req.getParameter( "id" );
		
		CV CV = cdao.read( Integer.parseInt( id ) );
		String name = CV.getName();
		String educacion = CV.getEducacion();
		String expLabo = CV.getExpLaboral();
		String habilidades = CV.getHabilidades();
		String idiomas = CV.getIdiomas();
		String titulacion = CV.getTitulacion();
		String intereses = CV.getIntereses();
		String email = CV.getUsuario().getEmail();
		
		req.getSession().setAttribute( "name" , name );
		req.getSession().setAttribute( "educacion" , educacion );
		req.getSession().setAttribute( "expLabo" , expLabo );
		req.getSession().setAttribute( "habilidades" , habilidades );
		req.getSession().setAttribute( "idiomas" , idiomas );
		req.getSession().setAttribute( "titulacion" , titulacion );
		req.getSession().setAttribute( "intereses" , intereses );
		req.getSession().setAttribute( "email" , email );
		req.getSession().setAttribute( "id" , id );
		req.getRequestDispatcher( "/CVView.jsp" ).forward( req, resp );
	}
}
