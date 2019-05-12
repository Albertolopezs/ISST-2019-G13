package es.upm.dit.isst.webLab.servlets;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.shiro.subject.Subject;
import org.apache.tomcat.util.http.fileupload.ByteArrayOutputStream;

import es.upm.dit.isst.webLab.dao.EmpresaDAO;
import es.upm.dit.isst.webLab.dao.EmpresaDAOImplementation;
import es.upm.dit.isst.webLab.model.Empresa;


@WebServlet("/SignUpCompanyServlet")
public class SignUpCompanyServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter( "email" ).toLowerCase();
		String password = req.getParameter( "password" );
		String nombre = req.getParameter( "nombre" );
		
		Empresa empresa = new Empresa();
		empresa.setEmail( email );
		empresa.setPassword( new Sha256Hash( password ).toString() );
		empresa.setName( nombre );
		
		SignUpCompanyServlet main = new SignUpCompanyServlet();
        File file = main.getFileFromResources("avatar_defecto.png");
        @SuppressWarnings("resource")
		InputStream fileContent = new FileInputStream(file);
		@SuppressWarnings("resource")
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		byte[] buffer = new byte[10240];
		for (int length = 0; (length = fileContent.read(buffer)) > 0;) output.write(buffer, 0, length);
		byte[] foto = output.toByteArray();
		String sfoto = Base64.getEncoder().encodeToString( foto );
		empresa.setPhoto( sfoto );

		
		EmpresaDAO edao = EmpresaDAOImplementation.getInstance();
		edao.create( empresa );
		Subject currentUser = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken( email, password );
		currentUser.login( token );
		enviarConGmail(email,"¡Bienvenido a eCV-G13!","Muchas gracias por unirte a nosotros, esperamos que encuentres a tu trabajador ideal.");
		resp.sendRedirect( req.getContextPath() + "/EmpresaServlet?email=" + email );
	}
	
	private static void enviarConGmail(String destinatario, String asunto, String cuerpo) {
	    // Esto es lo que va delante de @gmail.com en tu cuenta de correo. Es el remitente también.
	    String remitente = "isstg13.ecv";  //Para la dirección nomcuenta@gmail.com
	    String clave = "ticnaj-paDdaj-8jizpy";
	    Properties props = System.getProperties();
	    props.put("mail.smtp.host", "smtp.gmail.com");  //El servidor SMTP de Google
	    props.put("mail.smtp.user", remitente);
	    props.put("mail.smtp.clave", clave);    //La clave de la cuenta
	    props.put("mail.smtp.auth", "true");    //Usar autenticación mediante usuario y clave
	    props.put("mail.smtp.starttls.enable", "true"); //Para conectar de manera segura al servidor SMTP
	    props.put("mail.smtp.port", "587"); //El puerto SMTP seguro de Google

	    Session session = Session.getDefaultInstance(props);
	    MimeMessage message = new MimeMessage(session);

	    try {
	        message.setFrom(new InternetAddress(remitente));
	        message.addRecipients(Message.RecipientType.TO, destinatario);   //Se podrían añadir varios de la misma manera
	        message.setSubject(asunto);
	        message.setText(cuerpo);
	        Transport transport = session.getTransport("smtp");
	        transport.connect("smtp.gmail.com", remitente, clave);
	        transport.sendMessage(message, message.getAllRecipients());
	        transport.close();
	    }
	    catch (MessagingException me) {
	        me.printStackTrace();   //Si se produce un error
	    }
	}
	
	private File getFileFromResources(String fileName) {

        ClassLoader classLoader = getClass().getClassLoader();

        URL resource = classLoader.getResource(fileName);
        if (resource == null) {
            throw new IllegalArgumentException("file is not found!");
        } else {
            return new File(resource.getFile());
        }

    }
}
