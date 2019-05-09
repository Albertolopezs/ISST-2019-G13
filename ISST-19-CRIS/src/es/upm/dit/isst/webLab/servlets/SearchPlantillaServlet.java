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

import es.upm.dit.isst.webLab.dao.PlantillaDAO;
import es.upm.dit.isst.webLab.dao.PlantillaDAOImplementation;
import es.upm.dit.isst.webLab.model.CV;
import es.upm.dit.isst.webLab.model.Plantilla;


@WebServlet("/SearchPlantillaServlet")
public class SearchPlantillaServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Subject currentUser = SecurityUtils.getSubject();
		//Se usa para obtener los nombres de las carreras
		req.getSession().setAttribute( "searchCompleted" , 0 );
		getServletContext().getRequestDispatcher( "/SearchPlantillas.jsp" ).forward( req, resp );
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String n_empresa = req.getParameter("nombre_empresa");
		@SuppressWarnings("unchecked")
		Collection<Plantilla> aux = (Collection<Plantilla>) req.getAttribute( "Plantilla_list" );
		
		PlantillaDAO pdao = PlantillaDAOImplementation.getInstance();
		Collection<Plantilla> PlantillaColl = pdao.readAll();
		
		if (n_empresa != null) {
			for (Iterator<Plantilla> iterator = PlantillaColl.iterator(); iterator.hasNext();) {
				Plantilla plantilla = iterator.next(); 
				
				//name = nombre de la empresa de la plantilla
				String name = plantilla.getEmpresa().getName().toLowerCase();
				if (!name.contains(n_empresa.toLowerCase())) {
					iterator.remove();
					continue;
				}
			}
		} else {
			PlantillaColl = aux;
		}
		
		req.getSession().setAttribute( "Plantilla_list", PlantillaColl );
		req.getSession().setAttribute( "searchCompleted", 1 );
		getServletContext().getRequestDispatcher( "/SearchPlantillas.jsp").forward( req,resp );
	}

}
