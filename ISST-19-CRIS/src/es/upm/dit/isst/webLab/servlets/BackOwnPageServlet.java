package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

@WebServlet("/BackOwnPageServlet")
public class BackOwnPageServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Subject currentUser = SecurityUtils.getSubject();
		if (currentUser.isAuthenticated()) {
			if (currentUser.hasRole("empresa")) {
				resp.sendRedirect( req.getContextPath() + "/EmpresaServlet?email=" + currentUser.getPrincipal());
			} else if(currentUser.hasRole("usuario")){
				resp.sendRedirect( req.getContextPath() + "/UsuarioServlet?email=" + currentUser.getPrincipal());
				
			}
			else {
			}
		}
	}
}

