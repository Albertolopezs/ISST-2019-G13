package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import es.upm.dit.isst.webLab.dao.UsuarioDAOImplementation;
import es.upm.dit.isst.webLab.model.Usuario;


@WebServlet("/UsuarioServlet")
public class UsuarioServlet extends HttpServlet {

	@SuppressWarnings("deprecation")
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter( "email" );
		Usuario usuario = UsuarioDAOImplementation.getInstance().read( email );
		
		try {
			String foto = usuario.getPhoto();
			req.getSession().setAttribute( "foto" , foto );
			}
		catch(NullPointerException e) {
			System.out.print(e);
		}
		Boolean owner = false;
		Subject currentUser = SecurityUtils.getSubject();
		if (currentUser.isAuthenticated()) {
			if (currentUser.getPrincipal().equals(email)) {
				owner = true;
			} else {
				owner = false;
			}
		}
		req.getSession().setAttribute( "owner" , Boolean.valueOf(owner) );
		req.getSession().setAttribute( "usuario" , usuario );
		getServletContext().getRequestDispatcher( "/UserProfileView.jsp" ).forward( req, resp );

	}
}
