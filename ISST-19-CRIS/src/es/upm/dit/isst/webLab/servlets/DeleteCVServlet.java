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
import es.upm.dit.isst.webLab.model.Usuario;


@WebServlet("/DeleteCVServlet")
public class DeleteCVServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CVDAO cdao = CVDAOImplementation.getInstance();
		String id = req.getParameter( "id" );
		
		CV CV = cdao.read( Integer.parseInt( id ) );
		cdao.delete( CV );
		String email = CV.getUsuario().getEmail();
		resp.sendRedirect( req.getContextPath() + "/UsuarioServlet?email=" + email );
	}
}
