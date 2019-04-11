package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.webLab.dao.UsuarioDAOImplementation;
import es.upm.dit.isst.webLab.model.Usuario;


@WebServlet("/UsuarioServlet")
public class UsuarioServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter( "email" );
		Usuario usuario = UsuarioDAOImplementation.getInstance().read( email );
		byte[] foto = usuario.getPhoto();
		String sfoto;
		if (foto != null) {
			sfoto = Base64.getEncoder().encodeToString( foto );
			req.getSession().setAttribute( "foto" , sfoto );
		}
		req.getSession().setAttribute( "usuario" , usuario );
		getServletContext().getRequestDispatcher( "/UserProfileView.jsp" ).forward( req, resp );
	}
}
