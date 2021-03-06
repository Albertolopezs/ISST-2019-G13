package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import java.util.Base64;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.webLab.dao.UsuarioDAO;
import es.upm.dit.isst.webLab.dao.UsuarioDAOImplementation;
import es.upm.dit.isst.webLab.model.Usuario;


@WebServlet("/AllUserDisplayServlet")
public class AllUserDisplayServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UsuarioDAO udao = UsuarioDAOImplementation.getInstance();
		Collection<Usuario> usuarios = udao.readAll();
		req.getSession().setAttribute( "user_list", usuarios );
		getServletContext().getRequestDispatcher( "/UserListView.jsp" ).forward( req,resp );
	}
}
