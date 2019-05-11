package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import es.upm.dit.isst.webLab.dao.CVDAO;
import es.upm.dit.isst.webLab.dao.CVDAOImplementation;
import es.upm.dit.isst.webLab.dao.EmpresaDAOImplementation;
import es.upm.dit.isst.webLab.model.CV;
import es.upm.dit.isst.webLab.model.Empresa;


@WebServlet("/CVViewServlet")
public class CVViewServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CVDAO cdao = CVDAOImplementation.getInstance();
		String id = req.getParameter( "id" );
		Subject currentUser = SecurityUtils.getSubject();
		String empresa_email = req.getParameter( "empresa_email" );
		
		CV CV = cdao.read( Integer.parseInt( id ) );
		String name = CV.getName();
		String apellidos =CV.getApellidos();
		String email = CV.getEmail();
		String nacimiento = CV.getNacimiento();
		
		String educacion_nivel = CV.getEducacion_nivel();
		String carrera = CV.getCarrera();
		String centro = CV.getCentro();
		String empresa = CV.getEmpresa_cv();
		String inicio_est = CV.getInicio_est();
		String final_est = CV.getFinal_est();
		
		String puesto_name = CV.getPuesto_nombre();
		String descripcion = CV.getDescripcion();
		String ini_job = CV.getInicio_job();
		String fin_job = CV.getFinal_job();
		String actualidad = CV.getActualidad();
		
		String idiomas = CV.getIdiomas();
		String nivel = CV.getNivel();
		
		String skills = CV.getHabilidades();
		String intereses = CV.getIntereses();
		
		Boolean owner = false;
		if (currentUser.isAuthenticated()) {
			if (currentUser.getPrincipal().equals(email)) {
				owner = true;
			} else {
				owner = false;
			}
		}
		
		req.getSession().setAttribute( "empresa_email", empresa_email );
		req.getSession().setAttribute( "owner", owner );
		req.getSession().setAttribute( "name" , name );
		req.getSession().setAttribute( "apellidos" , apellidos );
		req.getSession().setAttribute( "email" , email );
		req.getSession().setAttribute( "nacimiento" , nacimiento );
		req.getSession().setAttribute( "educacion_nivel" , educacion_nivel );
		req.getSession().setAttribute( "carrera" , carrera);
		req.getSession().setAttribute( "centro" , centro );
		req.getSession().setAttribute( "inicio_est" , inicio_est );
		req.getSession().setAttribute( "final_est" , final_est );
		req.getSession().setAttribute( "puesto_name" , puesto_name );
		req.getSession().setAttribute( "empresa" , empresa );
		req.getSession().setAttribute( "descripcion" , descripcion );
		req.getSession().setAttribute( "ini_job" , ini_job);
		req.getSession().setAttribute( "fin_job" , fin_job );
		req.getSession().setAttribute( "actualidad" , actualidad );
		req.getSession().setAttribute( "habilidades" , skills );
		req.getSession().setAttribute( "idiomas" , idiomas );
		req.getSession().setAttribute( "nivel" , nivel );
		req.getSession().setAttribute( "intereses" , intereses );
		req.getSession().setAttribute( "id" , id );

		req.getRequestDispatcher( "/CVView.jsp" ).forward( req, resp );
	}
}
