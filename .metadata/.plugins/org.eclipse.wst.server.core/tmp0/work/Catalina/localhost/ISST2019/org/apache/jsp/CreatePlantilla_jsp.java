/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.17
 * Generated at: 2019-05-11 12:47:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class CreatePlantilla_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(5);
    _jspx_dependants.put("jar:file:/Users/xiaoluo/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/ISST-19-CRIS/WEB-INF/lib/standard-1.1.2.jar!/META-INF/fn.tld", Long.valueOf(1098703890000L));
    _jspx_dependants.put("jar:file:/Users/xiaoluo/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/ISST-19-CRIS/WEB-INF/lib/shiro-web-1.4.0.jar!/META-INF/shiro.tld", Long.valueOf(1494006348000L));
    _jspx_dependants.put("/WEB-INF/lib/shiro-web-1.4.0.jar", Long.valueOf(1553598958492L));
    _jspx_dependants.put("jar:file:/Users/xiaoluo/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/ISST-19-CRIS/WEB-INF/lib/standard-1.1.2.jar!/META-INF/c.tld", Long.valueOf(1098703890000L));
    _jspx_dependants.put("/WEB-INF/lib/standard-1.1.2.jar", Long.valueOf(1553598963966L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fshiro_005fguest;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fshiro_005fguest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fshiro_005fguest.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("   <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\t<title>Creación Plantilla CV</title>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">\n");
      out.write("<!-- Temas-->\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css\" integrity=\"sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp\" crossorigin=\"anonymous\">\n");
      out.write("</head>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("body {\n");
      out.write("\tbackground-image:\n");
      out.write("\t\turl('https://image.jimcdn.com/app/cms/image/transf/none/path/sc77e1e58a42c514a/image/i9977c7b3a6db203a/version/1516578954/image.jpg');\n");
      out.write("\tbackground-size: cover;\n");
      out.write("\tfont: normal normal 16px quicksand; \n");
      out.write("\tletter-spacing: 1px;\n");
      out.write("\t\n");
      out.write("\ttext-align: center;\n");
      out.write("\ttext-transform: uppercase;\n");
      out.write("    background-position: center;\n");
      out.write("    background-repeat: no-repeat;\n");
      out.write("    overflow-x: hidden;\n");
      out.write("    padding-top: 20px;\n");
      out.write("    z-index: 1;\n");
      out.write("    top: 0;\n");
      out.write("    left: 0;\n");
      out.write("    \n");
      out.write("}\n");
      out.write("\n");
      out.write("h1 {\n");
      out.write("text-align: center;\n");
      out.write("padding: 13vh;\n");
      out.write("  font-weight: normal;\n");
      out.write("  font-size: 30px;\n");
      out.write("  font-family: 'Lobster';\n");
      out.write("  text-transform: uppercase;    \n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("div {\n");
      out.write("\tfont-size: medium;\n");
      out.write("\tfont-family: 'Lobster';\n");
      out.write("\tfont-weight: bold;\n");
      out.write("}\n");
      out.write("input {\n");
      out.write("text-decoration: none;\n");
      out.write("    padding: 8px;\n");
      out.write("    font-weight: 400;\n");
      out.write("    font-size: 15px;\n");
      out.write("    border-radius: 15px;\n");
      out.write("    font-family: 'Lobster';\n");
      out.write("    background-color: transparent;\n");
      out.write("    \n");
      out.write("}\n");
      out.write("select {\n");
      out.write("     background: transparent;\n");
      out.write("     border: none;\n");
      out.write("     font-size: 14px;\n");
      out.write("     height: 30px;\n");
      out.write("     padding: 5px;\n");
      out.write("     width: 100px;\n");
      out.write("     font-family: 'Lobster';\n");
      out.write("     font: normal normal 16px quicksand;\n");
      out.write("  }\n");
      out.write("h5{\n");
      out.write("    text-align: right;\n");
      out.write("    background-color: none;  \n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("<body>\n");
      if (_jspx_meth_shiro_005fguest_005f0(_jspx_page_context))
        return;
      out.write('\n');
      out.write('	');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "NavBar.jsp", out, false);
      out.write("\n");
      out.write("\t<h1>Elige los campos que quiere incluir en Plantilla: </h1>\n");
      out.write("\t<div>\n");
      out.write("\t<form action=\"CreatePlantillaServlet\" method=\"post\">\n");
      out.write("\t<div class=\"form-group\"> <!--Name -->\n");
      out.write("        <label for=\"full_name_plantilla\" class=\"control-label\">Nombre de la plantilla:</label>\n");
      out.write("        <input type=\"text\" class=\"form-control\" id=\"full_name_plantilla\" name=\"nameplantilla\">\n");
      out.write("    </div>\n");
      out.write("   \n");
      out.write("\t\t<input type=\"checkbox\" name=\"educacion\" value=\"TRUE\"> Educación<br>\n");
      out.write("\t\t<input type=\"checkbox\" name=\"idiomas\" value=\"TRUE\"> Idiomas<br>\n");
      out.write("\t\t<input type=\"checkbox\" name=\"expLabo\" value=\"TRUE\"> Experiencia Laboral<br>\n");
      out.write("\t\t<input type=\"checkbox\" name=\"habilidades\" value=\"TRUE\"> Habilidades<br>\n");
      out.write("\t\t<input type=\"checkbox\" name=\"intereses\" value=\"TRUE\"> Intereses<br>\n");
      out.write("\t\t<input type=\"checkbox\" name=\"titulacion\" value=\"TRUE\"> Titulación<br>\n");
      out.write("\t\t<input type=\"hidden\" name=\"email\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${empresa.email}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" />\n");
      out.write("\t\t<p>\n");
      out.write("\t\t<input type=\"submit\" value=\"Guardar\">\n");
      out.write("\t</form></div>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_shiro_005fguest_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  shiro:guest
    org.apache.shiro.web.tags.GuestTag _jspx_th_shiro_005fguest_005f0 = (org.apache.shiro.web.tags.GuestTag) _005fjspx_005ftagPool_005fshiro_005fguest.get(org.apache.shiro.web.tags.GuestTag.class);
    boolean _jspx_th_shiro_005fguest_005f0_reused = false;
    try {
      _jspx_th_shiro_005fguest_005f0.setPageContext(_jspx_page_context);
      _jspx_th_shiro_005fguest_005f0.setParent(null);
      int _jspx_eval_shiro_005fguest_005f0 = _jspx_th_shiro_005fguest_005f0.doStartTag();
      if (_jspx_eval_shiro_005fguest_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          if (true) {
            _jspx_page_context.forward("LoginView.jsp");
            return true;
          }
          int evalDoAfterBody = _jspx_th_shiro_005fguest_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_shiro_005fguest_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fshiro_005fguest.reuse(_jspx_th_shiro_005fguest_005f0);
      _jspx_th_shiro_005fguest_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_shiro_005fguest_005f0, _jsp_getInstanceManager(), _jspx_th_shiro_005fguest_005f0_reused);
    }
    return false;
  }
}
