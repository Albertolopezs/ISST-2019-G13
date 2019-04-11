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
		String email = req.getParameter( "email" );
		
		req.getSession().setAttribute( "educacion" , educacion );
		req.getSession().setAttribute( "idiomas" , idiomas );
		req.getSession().setAttribute( "expLabo" , expLabo );
		req.getSession().setAttribute( "habilidades" , habilidades );
		req.getSession().setAttribute( "intereses" , intereses );
		req.getSession().setAttribute( "titulacion" , titulacion );
		req.getSession().setAttribute( "email", email );
		getServletContext().getRequestDispatcher( "/CreateCV.jsp" ).forward( req, resp );
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter( "name" );
		String educ = req.getParameter( "educ" );
		String idi = req.getParameter( "idi" );
		String expL = req.getParameter( "expL" );
		String skill = req.getParameter( "skill" );
		String interes = req.getParameter( "interes" );
		String titulo = req.getParameter( "titulo" );
		String email = req.getParameter( "email" );
		
		Usuario usuario = UsuarioDAOImplementation.getInstance().read(email);
		
		CVDAO cdao = CVDAOImplementation.getInstance();
		CV CV = new CV();
		CV.setName(name);
		CV.setEducacion(educ);
		CV.setExpLaboral(expL);
		CV.setHabilidades(skill);
		CV.setIdiomas(idi);
		CV.setIntereses(interes);
		CV.setTitulacion(titulo);
		CV.setUsuario(usuario);
		cdao.create(CV);
		
		resp.sendRedirect( req.getContextPath() + "/UsuarioServlet?email=" + email);
		
		
	}

}
