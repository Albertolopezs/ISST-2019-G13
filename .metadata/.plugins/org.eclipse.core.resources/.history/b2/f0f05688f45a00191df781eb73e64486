package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.crypto.hash.Sha256Hash;

import es.upm.dit.isst.webLab.dao.EmpresaDAOImplementation;
import es.upm.dit.isst.webLab.model.Empresa;

@WebServlet("/EmpresaPasswordChangeServlet")
public class EmpresaPasswordChangeServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter( "email" );
		String password = req.getParameter( "password" );
		EmpresaDAOImplementation edao = EmpresaDAOImplementation.getInstance();
		Empresa empresa = edao.read( email );
		empresa.setPassword( new Sha256Hash( password ).toString() );
		
		edao.update( empresa );
		
		resp.sendRedirect( req.getContextPath() + "/EmpresaProfileView.jsp?empresa=" + empresa );
		
	}

}
