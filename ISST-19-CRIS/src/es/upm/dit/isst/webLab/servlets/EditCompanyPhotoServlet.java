package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.tomcat.util.http.fileupload.ByteArrayOutputStream;

import es.upm.dit.isst.webLab.dao.EmpresaDAO;
import es.upm.dit.isst.webLab.dao.EmpresaDAOImplementation;
import es.upm.dit.isst.webLab.dao.UsuarioDAO;
import es.upm.dit.isst.webLab.dao.UsuarioDAOImplementation;
import es.upm.dit.isst.webLab.model.Empresa;
import es.upm.dit.isst.webLab.model.Usuario;


@WebServlet("/EditCompanyPhotoServlet")
@MultipartConfig
public class EditCompanyPhotoServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter( "email" );
		
		Part filePart = req.getPart( "file" );
		InputStream fileContent = filePart.getInputStream();
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		byte[] buffer = new byte[10240];
		for (int length = 0; (length = fileContent.read(buffer)) > 0;) output.write(buffer, 0, length);
		EmpresaDAO edao = EmpresaDAOImplementation.getInstance();
		Empresa empresa = edao.read(email);
		byte[] foto = output.toByteArray();
		String sfoto = Base64.getEncoder().encodeToString( foto );
		empresa.setPhoto( sfoto );
		edao.update( empresa );
	
		req.getSession().setAttribute( "empresa", empresa );
		getServletContext().getRequestDispatcher( "/EditEmpresaProfileView.jsp" ).forward( req, resp );
	}
}
