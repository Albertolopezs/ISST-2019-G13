package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CreateAccountSelectionServlet")
public class CreateAccountSelectionServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String papel = req.getParameter( "papel" );
		if ( papel == "2") {
			getServletContext().getRequestDispatcher( "/CreateCompany.jsp" ).forward( req, resp );
		} else {
			getServletContext().getRequestDispatcher( "/CreateUser.jsp" ).forward( req, resp );
		}
	}
}

