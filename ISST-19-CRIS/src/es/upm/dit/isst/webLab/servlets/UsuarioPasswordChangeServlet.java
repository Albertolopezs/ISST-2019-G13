package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.shiro.subject.Subject;

import es.upm.dit.isst.webLab.dao.EmpresaDAOImplementation;
import es.upm.dit.isst.webLab.dao.UsuarioDAO;
import es.upm.dit.isst.webLab.dao.UsuarioDAOImplementation;
import es.upm.dit.isst.webLab.model.Empresa;
import es.upm.dit.isst.webLab.model.Usuario;

@WebServlet("/UsuarioPasswordChangeServlet")
public class UsuarioPasswordChangeServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Subject currentUser = SecurityUtils.getSubject();
		String email = (String) currentUser.getPrincipal();
		String password = req.getParameter( "password" );
		UsuarioDAO udao = UsuarioDAOImplementation.getInstance();
		Usuario usuario = udao.read( email );
		usuario.setPassword( new Sha256Hash( password ).toString() );
		
		udao.update( usuario );
		
		req.getSession().setAttribute( "usuario", usuario );
		getServletContext().getRequestDispatcher( "/UserProfileView.jsp" ).forward( req, resp );
	}
}
