/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.17
 * Generated at: 2019-05-11 10:27:19 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class CompanyListView_jsp extends org.apache.jasper.runtime.HttpJspBase
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
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

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
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fshiro_005fguest.release();
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
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
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<title>Lista de empresas</title>\n");
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
      out.write("  font-size: 40px;\n");
      out.write("  font-family: 'Lobster';\n");
      out.write("  text-transform: uppercase;    \n");
      out.write("}\n");
      out.write("\n");
      out.write("div {\n");
      out.write("\tfont-size: medium;\n");
      out.write("\tfont-family: Times New Roman;\n");
      out.write("\tfont-weight: bold;\n");
      out.write("}\n");
      out.write("button {\n");
      out.write("border: 2px solid #b5f2f2;  /*borde: estilo y color*/\n");
      out.write("font: normal normal 18px quicksand;  /*fuente*/\n");
      out.write("letter-spacing: 2px; /*separación entre las letras*/\n");
      out.write("text-align: center; /*alineación del texto*/\n");
      out.write("text-transform: uppercase; /*texto se transforma en mayúsculas*/\n");
      out.write("padding: 10px;  /*tamaño del fondo*/\n");
      out.write("border-radius: 30px 0px 30px 0px; /*ángulos de las 4 esquinas del borde/fondo*/\n");
      out.write("}\n");
      out.write(".link {\n");
      out.write("\tmargin: 0;\n");
      out.write("\tborder: 0;\n");
      out.write("\tbackground: none;\n");
      out.write("\toverflow: visible;\n");
      out.write("\tcolor: blue;\n");
      out.write("\tcursor: pointer;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<body>\n");
      if (_jspx_meth_shiro_005fguest_005f0(_jspx_page_context))
        return;
      out.write('\n');
      out.write('	');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "NavBar.jsp", out, false);
      out.write("\n");
      out.write("\t\n");
      out.write("\t<h1>Lista de empresas</h1>\n");
      out.write("\t<div>\n");
      out.write("\t\t\n");
      out.write("\t\t\t<ul>");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
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

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /CompanyListView.jsp(71,7) name = items type = java.lang.Object reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${company_list}", java.lang.Object.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      // /CompanyListView.jsp(71,7) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("company");
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\n");
            out.write("\t\t\t\t<li>\n");
            out.write("\t\t\t\t\t<form action=\"EmpresaServlet\" method=\"get\">\n");
            out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"email\" value=\"");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ company.email }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\" />\n");
            out.write("\t\t\t\t\t\t<input type=\"submit\" value=\"");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ company.name }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(' ');
            out.write('-');
            out.write(' ');
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.email}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\" class=\"link\" />\n");
            out.write("\t\t\t\t\t</form>\n");
            out.write("\t\t\t\t</li>\n");
            out.write("\t\t\t");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }
}
