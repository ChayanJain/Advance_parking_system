package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/bs.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"ISO-8859-1\">\n");
      out.write("    <title>LOGIN PAGE</title>\n");
      out.write("       \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("       <meta charset=\"ISO-8859-1\">\n");
      out.write("<title>Insert title here</title>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("\thref=\"https://use.fontawesome.com/releases/v5.7.0/css/all.css\"\n");
      out.write("\tintegrity=\"sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ\"\n");
      out.write("\tcrossorigin=\"anonymous\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\"\n");
      out.write("\thref=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\n");
      out.write("<script\n");
      out.write("\tsrc=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("<script\n");
      out.write("\tsrc=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>\n");
      out.write("        \n");
      out.write("<script\n");
      out.write("\tsrc=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    <style>\n");
      out.write("        .bg {\n");
      out.write("\n");
      out.write("            background: rgb(0, 0, 0); /* Fallback color */\n");
      out.write("            background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */\n");
      out.write("            color: #f1f1f1;\n");
      out.write("            // background-color: white;\n");
      out.write("            color: white;\n");
      out.write("            display:flex;\n");
      out.write("            justify-content:center;\t\n");
      out.write("            margin-top: 150px;\n");
      out.write("            padding-bottom: 50px;\n");
      out.write("            padding-top: 50px;\n");
      out.write("            border-radius:12px;\n");
      out.write("\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .jumb {\n");
      out.write("            margin-right: 50px;\n");
      out.write("            margin-left: 50px;\n");
      out.write("\n");
      out.write("            background-repeat:\"no-repeat\";\n");
      out.write("        }\n");
      out.write("\n");
      out.write("\n");
      out.write("        .form-control {\n");
      out.write("            padding-left: 2.375rem;\n");
      out.write("        }\n");
      out.write("        .form-control-icon {\n");
      out.write("            position: absolute;\n");
      out.write("            z-index: 2;\n");
      out.write("            display: block;\n");
      out.write("            width: 2.375rem;\n");
      out.write("            height: 2.375rem;\n");
      out.write("            line-height: 2.375rem;\n");
      out.write("            text-align: center;\n");
      out.write("            pointer-events: none;\n");
      out.write("            color: #aaa;\n");
      out.write("        }\n");
      out.write("        .body{\n");
      out.write("            background: -webkit-linear-gradient(left, #ff726f, #00c6ff);\n");
      out.write("           // background-image:url('images/bb.jpg'); \n");
      out.write("            background-repeat:no-repeat;\n");
      out.write("            background-size: 1600px 1000px;\n");
      out.write("\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        .border {\n");
      out.write("            display: inline-block;\n");
      out.write("            width: 450px;\n");
      out.write("            height: 50px;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .btn:focus,\n");
      out.write("        .btn:active{\n");
      out.write("            box-shadow:none!important;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        .btn:hover{\n");
      out.write("            box-shadow: 0px 1px 3px rgba(0,0,0,0.2) !important;\n");
      out.write("            //not working\n");
      out.write("        }\n");
      out.write("        .vl {\n");
      out.write("            position: absolute;\n");
      out.write("            left: 50%;\n");
      out.write("            transform: translate(-50%);\n");
      out.write("            border: 1px solid #ddd;\n");
      out.write("            height: 300px;\n");
      out.write("            margin-top: 10px;\n");
      out.write("        }\n");
      out.write("        .fb {\n");
      out.write("            background-color: #3B5998;\n");
      out.write("            color: white;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .twitter {\n");
      out.write("            background-color: #55ACEE;\n");
      out.write("            color: white;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .google {\n");
      out.write("            background-color: #dd4b39;\n");
      out.write("            color: white;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        .btn.social{\n");
      out.write("            margin-top: 100px;\n");
      out.write("        }\n");
      out.write("        .btn {\n");
      out.write("            width: 100%;\n");
      out.write("            padding: 5px;\n");
      out.write("            border: none;\n");
      out.write("            border-radius: 4px;\n");
      out.write("            margin: 10px 0;\n");
      out.write("            opacity: 0.85;\n");
      out.write("            display: inline-block;\n");
      out.write("            font-size: 17px;\n");
      out.write("            line-height: 20px;\n");
      out.write("            text-decoration: none; /* remove underline from anchors */\n");
      out.write("        }\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body class=\"body \">\n");
      out.write("\n");
      out.write("    <div class=\"container \">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"card col-lg-10 col-md-7 col-sm-8 col-12 mx-auto bg \">\n");
      out.write("\n");
      out.write("            <form action=\"LoginServlet\"  method=\"post\" class=\"needs-validation\"  novalidate autocomplete=\"off\">\n");
      out.write("                <h1 class=\"text-center pb-5\">You Can Login Here</h1>\n");
      out.write("                <div class=\"row\">\n");
      out.write("\n");
      out.write("                    <div class=\"vl\">\n");
      out.write("                        <span class=\"vl-innertext\">&nbsp;&nbsp;</span>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("                        <div class=\"social\">\n");
      out.write("                            <div class=\"center\" style=\"margin-top:10px\">\n");
      out.write("                                <br><a href=\"#\" class=\"fb btn\">\n");
      out.write("                                    <h3>   <i class=\"fa fa-facebook fa-fw \"></i> Login with Facebook</h3>\n");
      out.write("                                </a>\n");
      out.write("                                <br>\n");
      out.write("                                <a href=\"#\" class=\"twitter btn\">\n");
      out.write("                                    <h3>   <i class=\"fa fa-twitter fa-fw\"></i>Login with Twitter</h3>\n");
      out.write("                                </a><br>\n");
      out.write("                                <a href=\"#\" class=\"google btn\"><h3><i class=\"fa fa-google fa-fw\">\n");
      out.write("                                        </i> Login with Google+</h3>\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("\n");
      out.write("                     <!-- <p class=\"text-center text-danger\"> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${errorMsg}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p> -->\n");
      out.write("                      <h3 class=\"text-center text-danger\"> ");

    if(null!=request.getAttribute("errorMessage"))
    {
        out.println(request.getAttribute("errorMessage"));
    }

      out.write(" </h3>     \n");
      out.write(" <h3 class=\"text-center text-success\"> ");

    if(null!=request.getAttribute("Message"))
    {
        out.println(request.getAttribute("Message"));
    }

      out.write(" </h3> \n");
      out.write("\n");
      out.write("                        <div class=\"jumb \">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"usr\">Username:</label> \n");
      out.write("                                <span class=\"fa fa-user form-control-icon\"></span>\n");
      out.write("                                <input type=\"text\"class=\"form-control shadow\" id=\"usr\" placeholder=\"Enter username\"\n");
      out.write("                                       name=\"username\" required>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"invalid-feedback\">Please enter valid username.</div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"pwd\">Password:</label> \n");
      out.write("                                <span class=\"fa fa-lock form-control-icon\"></span>\n");
      out.write("                                <input type=\"password\"class=\"form-control shadow\" id=\"pwd\" placeholder=\"Enter password\"\n");
      out.write("                                       name=\"password\" required>\n");
      out.write("\n");
      out.write("                                <div class=\"invalid-feedback\">Enter password is wrong.</div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group form-check\">\n");
      out.write("                                <label class=\"form-check-label\"> <input\n");
      out.write("                                        class=\"form-check-input\" type=\"checkbox\" name=\"rememberme\" >\n");
      out.write("                                    Remember Password\n");
      out.write("\n");
      out.write("                                </label> \n");
      out.write("                                <span style=\"padding-left:10px\"><a href=#>Forgot Password?</a></span>   \n");
      out.write("                            </div>\n");
      out.write("                            <button type=\"submit\" value=\"login\" name=\"button\" class=\"btn btn-primary \">Login</button>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <div class=\"border border-bottom-0 border-left-0 border-right-0 mt-3\">\n");
      out.write("                                <br><p >Don't have an account?\n");
      out.write("                                    <a href=\"register.jsp\">Sign up</a>\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </form></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <script>\n");
      out.write("                    // Disable form submissions if there are invalid fields\n");
      out.write("                  \n");
      out.write("                    (function () {\n");
      out.write("                        'use strict';\n");
      out.write("                        window.addEventListener('load',\n");
      out.write("                                function () {\n");
      out.write("                                    // Get the forms we want to add validation styles to\n");
      out.write("                                    var forms = document\n");
      out.write("                                            .getElementsByClassName('needs-validation');\n");
      out.write("                                    // Loop over them and prevent submission\n");
      out.write("                                    var validation = Array.prototype.filter.call(forms,\n");
      out.write("                                            function (form) {\n");
      out.write("                                                form.addEventListener('submit', function (\n");
      out.write("                                                        event) {\n");
      out.write("                                                    if (form.checkValidity() === false) {\n");
      out.write("                                                        event.preventDefault();\n");
      out.write("                                                        event.stopPropagation();\n");
      out.write("                                                    }\n");
      out.write("                                                    form.classList.add('was-validated');\n");
      out.write("                                                }, false);\n");
      out.write("                                            });\n");
      out.write("                                }, false);\n");
      out.write("                    })();\n");
      out.write("                </script>\n");
      out.write("        </div>\n");
      out.write("</body>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
