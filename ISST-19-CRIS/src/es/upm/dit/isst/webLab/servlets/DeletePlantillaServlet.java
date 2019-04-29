package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.webLab.dao.PlantillaDAO;
import es.upm.dit.isst.webLab.dao.PlantillaDAOImplementation;
import es.upm.dit.isst.webLab.model.Plantilla;


@WebServlet("/DeletePlantillaServlet")
public class DeletePlantillaServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter( "id" );
		PlantillaDAO pdao = PlantillaDAOImplementation.getInstance();
		
		Plantilla plantilla = pdao.read( Integer.parseInt( id ) );
		pdao.delete( plantilla );
		String email = plantilla.getEmpresa().getEmail();
		resp.sendRedirect( req.getContextPath() + "/EmpresaServlet?email=" + email );
	}

}
