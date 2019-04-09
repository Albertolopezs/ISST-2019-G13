package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.crypto.hash.Sha256Hash;

import es.upm.dit.isst.webLab.dao.EmpresaDAO;
import es.upm.dit.isst.webLab.dao.EmpresaDAOImplementation;
import es.upm.dit.isst.webLab.model.Empresa;


@WebServlet("/SignUpCompanyServlet")
public class SignUpCompanyServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter( "email" );
		String password = req.getParameter( "password" );
		String nombre = req.getParameter( "nombre" );
		
		Empresa empresa = new Empresa();
		empresa.setEmail( email );
		empresa.setPassword( new Sha256Hash( password ).toString() );
		empresa.setName( nombre );

		
		EmpresaDAO edao = EmpresaDAOImplementation.getInstance();
		edao.create( empresa );
		
		resp.sendRedirect( req.getContextPath() + "/AdminServlet" );
	}
}
