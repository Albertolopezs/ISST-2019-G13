package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import es.upm.dit.isst.webLab.dao.EmpresaDAO;
import es.upm.dit.isst.webLab.dao.EmpresaDAOImplementation;
import es.upm.dit.isst.webLab.model.Empresa;


@WebServlet("/SearchEmpresaServlet")
public class SearchEmpresaServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Subject currentUser = SecurityUtils.getSubject();
		//Se usa para obtener los nombres de las carreras
		req.getSession().setAttribute( "searchCompleted" , 0 );
		getServletContext().getRequestDispatcher( "/SearchEmpresas.jsp" ).forward( req, resp );
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String n_empresa = req.getParameter("nombre_empresa");
		@SuppressWarnings("unchecked")
		Collection<Empresa> aux = (Collection<Empresa>) req.getAttribute( "Empresa_list" );
		
		EmpresaDAO edao = EmpresaDAOImplementation.getInstance();
		Collection<Empresa> EmpresaColl = edao.readAll();
		
		if (n_empresa != null) {
			for (Iterator<Empresa> iterator = EmpresaColl.iterator(); iterator.hasNext();) {
				Empresa empresa = iterator.next(); 
				
				//name = nombre de la empresa de la plantilla
				String name = empresa.getName().toLowerCase();
				if (!name.contains(n_empresa.toLowerCase())) {
					iterator.remove();
					continue;
				}
			}
		} else {
			EmpresaColl = aux;
		}
		
		req.getSession().setAttribute( "Empresa_list", EmpresaColl );
		req.getSession().setAttribute( "searchCompleted", 1 );
		getServletContext().getRequestDispatcher( "/SearchEmpresas.jsp").forward( req,resp );
	}

}