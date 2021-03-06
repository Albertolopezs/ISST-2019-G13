package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.webLab.dao.EmpresaDAO;
import es.upm.dit.isst.webLab.dao.EmpresaDAOImplementation;


@WebServlet("/AllCompanyDisplayServlet")
public class AllCompanyDisplayServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EmpresaDAO edao = EmpresaDAOImplementation.getInstance();
		req.setAttribute( "company_list", edao.readAll() );
		getServletContext().getRequestDispatcher( "/CompanyListView.jsp" ).forward( req, resp );
	}
}
