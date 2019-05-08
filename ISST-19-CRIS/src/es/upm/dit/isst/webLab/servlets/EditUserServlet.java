package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
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
		req.getSession().setAttribute( "email" , email);
		getServletContext().getRequestDispatcher( "/UserProfileView.jsp" ).forward(req, resp);;
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Subject currentUser = SecurityUtils.getSubject();
		String email = String.valueOf(currentUser.getPrincipal());
		CVDAO cdao = CVDAOImplementation.getInstance();
		String id = req.getParameter( "id" );
		UsuarioDAO udao = UsuarioDAOImplementation.getInstance();
		Usuario usuario = udao.read( email );

		String name = usuario.getName();
		
		String apell1 =usuario.getApell1();
		String apell2 = usuario.getApell2();
		String nacimiento = usuario.getTrabajoBuscado();
		
		req.getSession().setAttribute( "name" , name );
		req.getSession().setAttribute( "apell1" , apell1 );
		req.getSession().setAttribute( "apell1" , apell2 );
		req.getSession().setAttribute( "email" , email );
		req.getSession().setAttribute( "nacimiento" , nacimiento );
		req.getSession().setAttribute( "id" , id );

		req.getRequestDispatcher( "/EditUserProfileView.jsp" ).forward( req, resp );
	}
}
