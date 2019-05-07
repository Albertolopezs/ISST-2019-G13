package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.webLab.dao.UsuarioDAO;
import es.upm.dit.isst.webLab.dao.UsuarioDAOImplementation;
import es.upm.dit.isst.webLab.model.CV;
import es.upm.dit.isst.webLab.model.Usuario;


@WebServlet("/EditUserServlet")
public class EditUserServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("ejecuta");
		String nombre = req.getParameter( "nombre" );
		String apell1 = req.getParameter( "apell1" );
		String apell2 = req.getParameter( "apell2" );
		String direccion = req.getParameter( "direccion" );
		String descripcion = req.getParameter( "descripcion" );
		String estudios = req.getParameter( "estudios" );
		boolean buscaTrabajo = Boolean.parseBoolean(req.getParameter( "buscaTrabajo" ));
		@SuppressWarnings("unchecked")
		Collection<CV> CV = (Collection<CV>) req.getAttribute( "CV" );
		String email = req.getParameter( "email" );
		UsuarioDAO udao = UsuarioDAOImplementation.getInstance();
		Usuario usuario = udao.read( email );
		usuario.setName( nombre );
		usuario.setApell1( apell1 );
		usuario.setApell2( apell2 );
		usuario.setDireccion( direccion );
		usuario.setDescription( descripcion );
		usuario.setStudies( estudios );
		usuario.setBuscandoTrabajo( buscaTrabajo );
		usuario.setCurriculums( CV );
		
		udao.update( usuario );
		req.getSession().setAttribute( "usuario" , usuario);
		getServletContext().getRequestDispatcher( "/UserProfileView.jsp" ).forward(req, resp);;
	}
}
