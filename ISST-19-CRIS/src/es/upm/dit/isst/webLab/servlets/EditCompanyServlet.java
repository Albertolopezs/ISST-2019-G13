package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.webLab.dao.CVDAO;
import es.upm.dit.isst.webLab.dao.CVDAOImplementation;
import es.upm.dit.isst.webLab.dao.EmpresaDAO;
import es.upm.dit.isst.webLab.dao.EmpresaDAOImplementation;
import es.upm.dit.isst.webLab.dao.UsuarioDAO;
import es.upm.dit.isst.webLab.dao.UsuarioDAOImplementation;
import es.upm.dit.isst.webLab.model.CV;
import es.upm.dit.isst.webLab.model.Empresa;
import es.upm.dit.isst.webLab.model.Plantilla;
import es.upm.dit.isst.webLab.model.Usuario;


@WebServlet("/EditCompanyServlet")
public class EditCompanyServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nombre = req.getParameter( "nombre" );
		String NIF = req.getParameter( "NIF" );
		String categoria = req.getParameter( "categoria" );
		String descripcion = req.getParameter( "descripcion" );
		boolean buscaEmpleado = Boolean.parseBoolean(req.getParameter( "buscaEmpleado" ));
		String puesto = req.getParameter( "puesto" );
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
		empresa.setPuesto( puesto );
		empresa.setPlantillas( plantillas );
		
		edao.update( empresa );
		
		req.getSession().setAttribute( "empresa", empresa );
		getServletContext().getRequestDispatcher( "/EmpresaProfileView.jsp" ).forward( req, resp );
	}

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email = req.getParameter( "correo" );
		System.out.println(email);
		EmpresaDAO cdao = EmpresaDAOImplementation.getInstance();
		Empresa empresa = cdao.read( email );
		
		String NIF = empresa.getNIF();
		String name = empresa.getName();
		String category = empresa.getCategory();
		String description = empresa.getDescription();
		
		Boolean buscandoEmpleados = empresa.isBuscandoEmpleados();
		String puesto = empresa.getPuesto();
		
		req.getSession().setAttribute( "name" , name );
		req.getSession().setAttribute( "NIF" , NIF );
		req.getSession().setAttribute( "email" , email );
		req.getSession().setAttribute( "category" , category );
		req.getSession().setAttribute( "description" , description );
		req.getSession().setAttribute( "buscandoEmpleados" , buscandoEmpleados );
		req.getSession().setAttribute( "puestosEnOferta" , puesto );

		req.getRequestDispatcher( "/EditEmpresaProfileView.jsp" ).forward( req, resp );
	}
}
