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

import es.upm.dit.isst.webLab.dao.UsuarioDAO;
import es.upm.dit.isst.webLab.dao.UsuarioDAOImplementation;
import es.upm.dit.isst.webLab.model.Usuario;


@WebServlet("/EditUserPhotoServlet")
@MultipartConfig
public class EditUserPhotoServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Part filePart = req.getPart( "file" );
		InputStream fileContent = filePart.getInputStream();
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		byte[] buffer = new byte[10240];
		for (int length = 0; (length = fileContent.read(buffer)) > 0;) output.write(buffer, 0, length);
		UsuarioDAO udao = UsuarioDAOImplementation.getInstance();
		String email = req.getParameter( "email" );
		Usuario usuario = udao.read(email);
		byte[] foto = output.toByteArray();
		usuario.setPhoto( foto );
		udao.update( usuario );
		String sfoto = Base64.getEncoder().encodeToString( foto );
		
		req.getSession().setAttribute( "usuario" , usuario );
		req.getSession().setAttribute( "foto" , sfoto );
		getServletContext().getRequestDispatcher( "/UserProfileView.jsp" ).forward( req, resp );

	}
}
