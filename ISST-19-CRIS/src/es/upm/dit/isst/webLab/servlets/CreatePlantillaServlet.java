package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.webLab.dao.EmpresaDAOImplementation;
import es.upm.dit.isst.webLab.dao.PlantillaDAO;
import es.upm.dit.isst.webLab.dao.PlantillaDAOImplementation;
import es.upm.dit.isst.webLab.model.Empresa;
import es.upm.dit.isst.webLab.model.Plantilla;


@WebServlet("/CreatePlantillaServlet")
public class CreatePlantillaServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		boolean educacion = Boolean.parseBoolean(req.getParameter( "educacion" ));
		boolean idiomas = Boolean.parseBoolean(req.getParameter( "idiomas" ));
		boolean expLabo = Boolean.parseBoolean(req.getParameter( "expLabo" ));
		boolean habilidades = Boolean.parseBoolean(req.getParameter( "habilidades" ));
		boolean intereses = Boolean.parseBoolean(req.getParameter( "intereses" ));
		boolean titulacion = Boolean.parseBoolean(req.getParameter( "titulacion" ));
		String name = req.getParameter( "nameplantilla" );
		String email = req.getParameter( "email" );
		
		Empresa empresa = EmpresaDAOImplementation.getInstance().read(email);
		PlantillaDAO pdao = PlantillaDAOImplementation.getInstance();
		Plantilla plantilla = new Plantilla();
		plantilla.setName(name);
		plantilla.setEducacion(educacion);
		plantilla.setEmpresa(empresa);
		plantilla.setExpLaboral(expLabo);
		plantilla.setHabilidades(habilidades);
		plantilla.setIdiomas(idiomas);
		plantilla.setIntereses(intereses);
		plantilla.setTitulacion(titulacion);
		
		pdao.create(plantilla);
		
		resp.sendRedirect( req.getContextPath() + "/EmpresaServlet?email=" + email );
	}
}
