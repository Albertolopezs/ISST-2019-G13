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

import es.upm.dit.isst.webLab.dao.EmpresaDAOImplementation;
import es.upm.dit.isst.webLab.model.Empresa;


@WebServlet("/EmpresaServlet")
public class EmpresaServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter( "email" );
		Empresa empresa = EmpresaDAOImplementation.getInstance().read( email );
		byte[] foto = empresa.getPhoto();
		String sfoto;
		if (foto != null) {
			sfoto = Base64.getEncoder().encodeToString( foto );
			req.getSession().setAttribute( "foto" , sfoto );
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
		req.getSession().setAttribute( "empresa" , empresa );
		req.getSession().setAttribute( "email" , email );
		getServletContext().getRequestDispatcher( "/EmpresaProfileView.jsp" ).forward( req, resp );
	}
}
