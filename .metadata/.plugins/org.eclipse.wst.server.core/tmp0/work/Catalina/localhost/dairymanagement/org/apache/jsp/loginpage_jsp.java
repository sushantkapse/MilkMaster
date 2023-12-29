/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.65
 * Generated at: 2023-03-10 03:47:07 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class loginpage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

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
  }

  public void _jspDestroy() {
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("  	<head>\n");
      out.write("	    <meta charset=\"utf-8\">\n");
      out.write("	    <title>Login</title>\n");
      out.write("	    <link rel=\"stylesheet\" href=\"project/Dairystyle.css\">\n");
      out.write("	    <link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("	    <link rel=\"stylesheet\" href=\"css/all.css\">\n");
      out.write("	    <link rel=\"stylesheet\" href=\"css/login.css\">\n");
      out.write("	    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>\n");
      out.write("	</head>\n");
      out.write("	<body>\n");
      out.write("		<header class=\"main-head\">\n");
      out.write("      		<nav class=\"main-nav\">\n");
      out.write("	        	<div class=\"main-div clearfix\">\n");
      out.write("	        		<a href=\"index.jsp\"> <img src=\"images/NATURE-ONE-DAIRY-CORPORATE-LOGO-01.png\"  alt=\"logo\" class=\"LOGO\"></a>\n");
      out.write("				</div>\n");
      out.write("			</nav>\n");
      out.write("		</header>\n");
      out.write("    	<div class=\"main-content-one\">\n");
      out.write("			<form action=\"login.jsp\" method=\"post\">\n");
      out.write("	      		<p>LOGIN FORM</p>\n");
      out.write("	        	<div class=\"imgcontainer\">\n");
      out.write("	          		<img src=\"images/login.jpg\" alt=\"Avatar\" class=\"avatar\">\n");
      out.write("	        	</div>\n");
      out.write("				<div class=\"container\">\n");
      out.write("	          		<label for=\"uname\"><b><i class=\"fas fa-user-alt\"></i> Username</b></label>\n");
      out.write("	          		<input type=\"text\" placeholder=\"Enter Username\" name=\"uname\" required>\n");
      out.write("	          		<br>\n");
      out.write("	          		<label for=\"psw\"><b><i class=\"fas fa-key\"></i> Password</b></label>\n");
      out.write("	          		<input type=\"password\" placeholder=\"Enter Password\" name=\"psw\" required>\n");
      out.write("					<button type=\"submit\" name=\"data\" class=\"sub\"opacity=\"0.6\">Login</button>\n");
      out.write("				</div>\n");
      out.write("				<div class=\"container\" style=\"background-color:lightgreen\">\n");
      out.write("	        		<a href=\"index.jsp\">  <button type=\"button\" class=\"cancelbtn\">Cancel</button> </a>\n");
      out.write("				</div>\n");
      out.write("      		</form>\n");
      out.write("		</div>\n");
      out.write("		<div class=\"copyright\">\n");
      out.write("			<p><h4>&copy MyDairy.com ");
      out.print(new java.util.Date().getYear()+1900);
      out.write(" - All Rights Reserved</h4></p>\n");
      out.write("		</div>\n");
      out.write("	</body>\n");
      out.write("</html>\n");
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
}
