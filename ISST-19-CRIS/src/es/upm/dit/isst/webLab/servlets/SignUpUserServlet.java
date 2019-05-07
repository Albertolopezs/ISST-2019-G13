package es.upm.dit.isst.webLab.servlets;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.shiro.subject.Subject;
import org.apache.tomcat.util.http.fileupload.ByteArrayOutputStream;

import es.upm.dit.isst.webLab.dao.UsuarioDAO;
import es.upm.dit.isst.webLab.dao.UsuarioDAOImplementation;
import es.upm.dit.isst.webLab.model.Usuario;


@WebServlet("/SignUpUserServlet")
public class SignUpUserServlet extends HttpServlet {
       
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter( "email" ).toLowerCase();
		String password = req.getParameter( "password" );
		String nombre = req.getParameter( "nombre" );
		String apell1 = req.getParameter( "apellido1" );
		String apell2 = req.getParameter( "apellido2" );
		
		UsuarioDAO udao = UsuarioDAOImplementation.getInstance();
		Usuario user = new Usuario();
		user.setEmail( email );
		user.setPassword( new Sha256Hash( password ).toString() );
		user.setName( nombre );
		user.setApell1( apell1 );
		user.setApell2( apell2 );
		
		
		udao.create( user );
		Subject currentUser = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken( email, password );
		currentUser.login( token );
		resp.sendRedirect( req.getContextPath() + "/UsuarioServlet?email=" + email );
	
	}
}
