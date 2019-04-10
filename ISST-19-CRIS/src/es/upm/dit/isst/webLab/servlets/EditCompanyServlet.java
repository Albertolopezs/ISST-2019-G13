package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.webLab.dao.EmpresaDAO;
import es.upm.dit.isst.webLab.dao.EmpresaDAOImplementation;
import es.upm.dit.isst.webLab.model.Empresa;
import es.upm.dit.isst.webLab.model.Plantilla;


@WebServlet("/EditCompanyServlet")
public class EditCompanyServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nombre = req.getParameter( "nombre" );
		String NIF = req.getParameter( "NIF" );
		String categoria = req.getParameter( "categoria" );
		String descripcion = req.getParameter( "descripcion" );
		Boolean buscaEmpleado = (Boolean) req.getAttribute( "buscaEmpleado" );
		String[] peo = req.getParameterValues( "peo" );
		@SuppressWarnings("unchecked")
		Collection<Plantilla> plantillas = (Collection<Plantilla>) req.getAttribute( "plt" );
		String email = req.getParameter( "email" );
		
		EmpresaDAO edao = EmpresaDAOImplementation.getInstance();
		Empresa empresa = edao.read( email );
		empresa.setName( nombre );
		empresa.setNIF( NIF );
		empresa.setCategory( categoria );
		empresa.setDescription( descripcion );
		empresa.setBuscandoEmpleados( buscaEmpleado );
		empresa.setPuestosEnOferta( peo );
		empresa.setPlantillas( plantillas );
		
		edao.update( empresa );
		
		resp.sendRedirect( req.getContextPath() + "/EmpresaProfileView.jsp?empresa=" + empresa );
	}
}
