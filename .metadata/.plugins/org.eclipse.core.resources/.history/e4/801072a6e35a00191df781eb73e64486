package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.webLab.dao.EmpresaDAOImplementation;
import es.upm.dit.isst.webLab.model.Empresa;


@WebServlet("/EmpresaServlet")
public class EmpresaServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter( "email" );
		Empresa empresa = EmpresaDAOImplementation.getInstance().read( email );
		req.getSession().setAttribute( "empresa" , empresa );
		getServletContext().getRequestDispatcher( "/EmpresaProfileView.jsp" ).forward( req, resp );
	}
}
