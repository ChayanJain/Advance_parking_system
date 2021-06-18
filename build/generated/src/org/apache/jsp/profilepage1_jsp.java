package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Map;
import com.google.zxing.common.BitMatrix;
import java.util.HashMap;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import java.io.File;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.EncodeHintType;
import java.sql.*;

public final class profilepage1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Navbar.jsp");
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <meta charset=\"ISO-8859-1\">\n");
      out.write("        <title>Profile Page</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\"\n");
      out.write("              href=\"https://use.fontawesome.com/releases/v5.7.0/css/all.css\"\n");
      out.write("              integrity=\"sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ\"\n");
      out.write("              crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\"\n");
      out.write("              href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\n");
      out.write("        <script\n");
      out.write("        src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("        <script\n");
      out.write("        src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>\n");
      out.write("        <script\n");
      out.write("        src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\n");
      out.write("        <!--<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.7.0/css/all.css\" integrity=\"sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ\" crossorigin=\"anonymous\">-->\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            .bg{\n");
      out.write("                background-image: url('images/cybertruck.jpg');\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size:cover ;\n");
      out.write("                height: 100vh;\n");
      out.write("            }\n");
      out.write("            .carousel-inner img {\n");
      out.write("                width: 100%;\n");
      out.write("                height: 300px;\n");
      out.write("            }\n");
      out.write("            .profile-edit-btn{\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 1.5rem;\n");
      out.write("                width: 70%;\n");
      out.write("                padding: 2%;\n");
      out.write("                text-decoration: none;\n");
      out.write("                display: inline-block;\n");
      out.write("                font-weight: 600;\n");
      out.write("                color: #6c757d;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            .file {\n");
      out.write("                position: relative;\n");
      out.write("                overflow: hidden;\n");
      out.write("                margin-top: -20%;\n");
      out.write("                margin-left: 15px;\n");
      out.write("                width: 70%;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 0;\n");
      out.write("                font-size: 15px;\n");
      out.write("                background: #212529b8 !important;\n");
      out.write("            }\n");
      out.write("            .file input {\n");
      out.write("                position: absolute;\n");
      out.write("                opacity: 0;\n");
      out.write("                right: 0;\n");
      out.write("                top: 0;\n");
      out.write("            }\n");
      out.write("        </style> \n");
      out.write("\n");
      out.write("        <title>Form</title>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Bootstrap Example</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("<nav class=\"navbar navbar-expand-md bg-dark navbar-dark\">\n");
      out.write("  <!-- Brand -->\n");
      out.write("  <a class=\"navbar-brand\" href=\"#\">Advance Parking System</a>\n");
      out.write("\n");
      out.write("  <!-- Toggler/collapsibe Button -->\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#collapsibleNavbar\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("\n");
      out.write("  <!-- Navbar links -->\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"collapsibleNavbar\">\n");
      out.write("    <ul class=\"navbar-nav\">\n");
      out.write("        \n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"Home2.jsp\">Home</a>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"profilepage1.jsp\">Profile</a>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"about2.jsp\">About</a>\n");
      out.write("      </li>\n");
      out.write("      ");

            if(session.getAttribute("user")!=null){
                
      out.write("  <li class=\"nav-item\" >  \n");
      out.write("        <a class=\"nav-link\" href=\"logout.jsp\"> logout ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a>\n");
      out.write("        </li>");

            }else { 
      out.write("\n");
      out.write("              <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"login.jsp\">Login</a>\n");
      out.write("        </li>\n");
      out.write("          ");
 }  
        
      out.write("\n");
      out.write("       \n");
      out.write("    \n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("     \n");
      out.write("        \n");
      out.write("        \n");
      out.write("     \n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--<div class=\"container-fluid\">-->\n");
      out.write("            <div id=\"demo\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("\n");
      out.write("                <!-- Indicators -->\n");
      out.write("                <ul class=\"carousel-indicators\">\n");
      out.write("                    <li data-target=\"#demo\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                    <li data-target=\"#demo\" data-slide-to=\"1\"></li>\n");
      out.write("                    <li data-target=\"#demo\" data-slide-to=\"2\"></li>\n");
      out.write("                </ul>\n");
      out.write("\n");
      out.write("                <!-- The slideshow -->\n");
      out.write("                <div class=\"carousel-inner\">\n");
      out.write("                    <div class=\"carousel-item active \">\n");
      out.write("                        <img src=\"images/1212.jpg\" alt=\"Los Angeles\"  >\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"carousel-item\">\n");
      out.write("                        <img src=\"images/tesla.jpg\" alt=\"Chicago\" >\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"carousel-item\">\n");
      out.write("                        <img src=\"images/cybertruck.jpg\" alt=\"New York\" >\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!-- Left and right controls -->\n");
      out.write("                <a class=\"carousel-control-prev\" href=\"#demo\" data-slide=\"prev\">\n");
      out.write("                    <span class=\"carousel-control-prev-icon\"></span>\n");
      out.write("                </a>\n");
      out.write("                <a class=\"carousel-control-next\" href=\"#demo\" data-slide=\"next\">\n");
      out.write("                    <span class=\"carousel-control-next-icon\"></span>\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("<!--            <div style=\"padding-left:760px\" <button type=\"button\" class=\"profile-edit-btn\" (click)=\"closeModal()\" data-toggle=\"modal\" data-target=\"#myModal\">\n");
      out.write("                    <i class=\"fas fa-edit\"> Edit Profile</i>\n");
      out.write("                </button> </div>-->\n");
      out.write("\n");
      out.write("            <div class=\"bg\">\n");
      out.write("                <div class=\"container-fluid\"\n");
      out.write("                     >\n");
      out.write("                    <div class=\"row\"\n");
      out.write("                         style=\" position: relative;\n");
      out.write("                         width: 100%;\n");
      out.write("                         \">\n");
      out.write("                        <div class=\"col-sm-3\n");
      out.write("                             border-right\" style=\"padding-top: 20px;\">\n");
      out.write("                            <img src=\" images/img_avatar1.png\" class=\"rounded-circle\" alt=\"Bird\" width=\"250\" height=\"250\" >\n");
      out.write("                            <div class=\"file btn btn-md btn-primary\">\n");
      out.write("                                Change Photo\n");
      out.write("                                <input type=\"file\" name=\"file\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <!--<label class=\"form-label\" for=\"customFile\">Edit Photo</label>-->\n");
      out.write("                            <!--<span><input type=\"file\" class=\"form-control\" id=\"customFile\" />Edit Photo</span>--> \n");
      out.write("\n");
      out.write("\n");
      out.write("                            <!--                <img \n");
      out.write("                                                src=\"DSC05808.JPG\"\n");
      out.write("                                                style=\"width: 100px\"\n");
      out.write("                                                class=\"rounded-circle\" alt=\"DSC0 5808\"-->\n");
      out.write("                            <!--                    hr.vertical {\n");
      out.write("                                                width: 0px;\n");
      out.write("                                                height: 100%;\n");
      out.write("                                                /* or height in PX */\n");
      out.write("                                                }-->\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-8\" >\n");
      out.write("\n");
      out.write("                            <!-- Tabs navs -->\n");
      out.write("                            <ul class=\"nav nav-tabs\" role=\"tablist\">\n");
      out.write("                                <li class=\"nav-item\">\n");
      out.write("                                    <a class=\"nav-link active\" data-toggle=\"tab\" href=\"#home\">Personal Details</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"nav-item\">\n");
      out.write("                                    <a class=\"nav-link\" data-toggle=\"tab\" href=\"#menu1\">Your Vehcile</a>\n");
      out.write("                                </li>\n");
      out.write("                                <li class=\"nav-item\">\n");
      out.write("                                    <a class=\"nav-link\" data-toggle=\"tab\" href=\"#menu2\">Expired Plan</a>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("\n");
      out.write("                            <!-- Tab panes -->\n");
      out.write("                            <div class=\"tab-content\">\n");
      out.write("                                <div id=\"home\" class=\"container tab-pane active\"><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    ");
     try {

                                            String id = request.getParameter("username");
                                            Class.forName("com.mysql.jdbc.Driver");

                                            Connection connection = DriverManager
                                                    .getConnection("jdbc:mysql://localhost:3306/demo?useSSL=false", "root", "root");

                                            Statement Statement = connection
                                                    .createStatement();
                                              // preparedStatement.setString(1, loginBean.getUsername());
                                            //preparedStatement.setString(2, loginBean.getPassword());

                                            //   System.out.println(preparedStatement);
                                            ResultSet resultSet = Statement.executeQuery("select * from login where username= '" + session.getAttribute("user") + "' ");
                                            //status = rs.next();
                                            if (resultSet.next()) {

                                    
      out.write(" \n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-md-3\">\n");
      out.write("                                            <label>Name: </label>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-md-3\">\n");
      out.write("                                            <p>");
      out.print(resultSet.getString("name"));
      out.write("</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-md-3\">\n");
      out.write("                                            <label>Email: </label>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-md-3\">\n");
      out.write("                                            <p>");
      out.print(resultSet.getString("email"));
      out.write("</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-md-3\">\n");
      out.write("                                            <label>Username: </label>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-md-3\">\n");
      out.write("                                            <p>");
      out.print(resultSet.getString("username"));
      out.write("</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    ");


                                    } else { 
      out.write("\n");
      out.write("                                    <p><br>\n");
      out.write("                                        You don't have any account yet<br><br><br><br><br>\n");
      out.write("                                        <a href=\"login.jsp\" <button type=\"button\" class=\"btn btn-primary\" >\n");
      out.write("                                                   SignUp here\n");
      out.write("                                                </button>  \n");
      out.write("                                           </a>\n");
      out.write("                                        ");
}

                                            } catch (SQLException e) {
                                                // process sql exception
                                                // printSQLException(e);
                                                e.printStackTrace();
                                            }
                                        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                        <!--                                        </div>\n");
      out.write("                                                                            </div>-->\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div id=\"menu1\" class=\"container tab-pane fade\">\n");
      out.write("                                    ");

                                        try {

                                            Class.forName("com.mysql.jdbc.Driver");

                                            Connection connection = DriverManager
                                                    .getConnection("jdbc:mysql://localhost:3306/demo?useSSL=false", "root", "root");

                                            Statement Statement = connection
                                                    .createStatement();

                                            //   System.out.println(preparedStatement);
                                            ResultSet resultSet = Statement.executeQuery("select * from user where user= '" + session.getAttribute("user") + "' ");
                                            //status = rs.next();
                                            if (resultSet.next()) {

                                    
      out.write(" \n");
      out.write("                                    <br>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-md-6\">\n");
      out.write("\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-md-4\">\n");
      out.write("                                                    <label>Vehical No: </label>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"col-md-4\">\n");
      out.write("                                                    <p>");
      out.print(resultSet.getString("vno"));
      out.write("</p>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                                <div class=\"row\">\n");
      out.write("                                                    <div class=\"col-md-4\">\n");
      out.write("                                                        <label>Vehical Model: </label>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"col-md-4\">\n");
      out.write("                                                        <p>");
      out.print(resultSet.getString("model"));
      out.write("</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-md-4\">\n");
      out.write("                                                    <label>City: </label>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"col-md-4\">\n");
      out.write("                                                    <p>");
      out.print(resultSet.getString("city"));
      out.write("</p>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-md-4\">\n");
      out.write("                                                    <label>State: </label>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"col-md-4\">\n");
      out.write("                                                    <p>");
      out.print(resultSet.getString("state"));
      out.write("</p>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-md-4\">\n");
      out.write("                                                    <label>Address: </label>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"col-md-6\">\n");
      out.write("                                                    <p>");
      out.print(resultSet.getString("address"));
      out.write("</p>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-md-4\">\n");
      out.write("                                                    <label>Contact: </label>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"col-md-4\">\n");
      out.write("                                                    <p>");
      out.print(resultSet.getString("mobno"));
      out.write("</p>   \n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-md-4\">\n");
      out.write("\n");
      out.write("                                            <!--<img src=\"images/qr.png\" >-->\n");
      out.write("                                            <br><br><br>  <a href=\"index.jsp\" <button type=\"button\" class=\"btn btn-success\" >\n");
      out.write("\n");
      out.write("                                                SELECT YOUR  PLAN\n");
      out.write("                                            </button></a>\n");
      out.write("                                        </div>\n");
      out.write("                                        ");
} else {

                                            if (null == request.getAttribute("Message")) { 
      out.write("\n");
      out.write("                                        <p><br>\n");
      out.write("                                            You don't have any vehicle registerd yet<br><br><br><br><br>\n");
      out.write("                                            ");
 }
                                             else {
      out.write("\n");
      out.write("                                            <br>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-md-6\">\n");
      out.write("\n");
      out.write("                                                <div class=\"row\">\n");
      out.write("                                                    <div class=\"col-md-4\">\n");
      out.write("                                                        <label>Vehical No: </label>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"col-md-4\">\n");
      out.write("                                                        <p>");
      out.print(resultSet.getString("vno"));
      out.write("</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                    <div class=\"row\">\n");
      out.write("                                                    <div class=\"col-md-4\">\n");
      out.write("                                                        <label>Vehical Model: </label>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"col-md-4\">\n");
      out.write("                                                        <p>");
      out.print(resultSet.getString("model"));
      out.write("</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"row\">\n");
      out.write("                                                    <div class=\"col-md-4\">\n");
      out.write("                                                        <label>City: </label>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"col-md-4\">\n");
      out.write("                                                        <p>");
      out.print(resultSet.getString("city"));
      out.write("</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"row\">\n");
      out.write("                                                    <div class=\"col-md-4\">\n");
      out.write("                                                        <label>State: </label>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"col-md-4\">\n");
      out.write("                                                        <p>");
      out.print(resultSet.getString("state"));
      out.write("</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"row\">\n");
      out.write("                                                    <div class=\"col-md-4\">\n");
      out.write("                                                        <label>Address: </label>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"col-md-6\">\n");
      out.write("                                                        <p>");
      out.print(resultSet.getString("address"));
      out.write("</p>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"row\">\n");
      out.write("                                                    <div class=\"col-md-4\">\n");
      out.write("                                                        <label>Contact: </label>\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"col-md-4\">\n");
      out.write("                                                        <p>");
      out.print(resultSet.getString("mobno"));
      out.write("</p>   \n");
      out.write("\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-md-4\">\n");
      out.write("\n");
      out.write("                                                <!--<img src=\"images/qr.png\" >-->\n");
      out.write("                                                <button type=\"button\" class=\"btn btn-succes\" data-toggle=\"modal\" data-target=\"#priceModal\">\n");
      out.write("\n");
      out.write("                                                    SELECT YOUR  PLAN\n");
      out.write("                                                </button>\n");
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                             </div>\n");
      out.write("\n");
      out.write("                                            ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                      \n");
      out.write("\n");
      out.write("\n");
      out.write("                                        ");


                                                }

                                            } catch (SQLException e) {
                                                // process sql exception
                                                // printSQLException(e);
                                                e.printStackTrace();
                                            }
                                        
      out.write("\n");
      out.write("                                        <br><br><button type=\"button\" class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#myModal\">\n");
      out.write("                                            Register Your Vehicle\n");
      out.write("                                        </button>\n");
      out.write("\n");
      out.write("                                        <!-- The Modal -->\n");
      out.write("                                        <div class=\"modal\" id=\"myModal\">\n");
      out.write("                                            <div class=\"modal-dialog\">\n");
      out.write("                                                <div class=\"modal-content\">\n");
      out.write("\n");
      out.write("                                                    <!-- Modal Header -->\n");
      out.write("                                                    <div class=\"modal-header\">\n");
      out.write("                                                        <h4 class=\"modal-title\">Vehicle Registeration</h4>\n");
      out.write("                                                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                                                    </div>\n");
      out.write("\n");
      out.write("                                                    <!-- Modal body -->\n");
      out.write("                                                    <!--<form onsubmit=\"return validateForm()\">-->\n");
      out.write("                                                    <div class=\"modal-body\">\n");
      out.write("                                                        <form action=\"vehicalser\" method=\"post\" class=\"needs-validation\"   novalidate>\n");
      out.write("                                                            <div class=\"form-group\">\n");
      out.write("                                                                <label for=\"Number\">Contact no. :</label>\n");
      out.write("                                                                <input type=\"text\" class=\"form-control shadow\" placeholder=\"Enter Number\"  id=\"Number\" pattern=\"[6789]{1}[0-9]{9}\" required name=\"Number\">\n");
      out.write("                                                                <div class=\"invalid-feedback\">Please enter valid Mobile No..</div>\n");
      out.write("                                                            </div>\n");
      out.write("                                                            <div class=\"form-group\">\n");
      out.write("                                                                <label for=\"City\">City:</label>\n");
      out.write("                                                                <input type=\"text\" class=\"form-control shadow\" placeholder=\"Enter City\" id=\"City\" name=\"City\" required>\n");
      out.write("                                                                <div class=\"invalid-feedback\">This is required.</div>\n");
      out.write("                                                            </div>\n");
      out.write("                                                            <div class=\"form-group\">\n");
      out.write("                                                                <label for=\"State\">State:</label>\n");
      out.write("                                                                <input type=\"text\" class=\"form-control shadow\" placeholder=\"Enter State\" id=\"State\" name=\"State\" required>\n");
      out.write("                                                                <div class=\"invalid-feedback\">This is required.</div>\n");
      out.write("                                                            </div>\n");
      out.write("                                                             <div class=\"form-group\">\n");
      out.write("                                                                <label for=\"Address\"> Address</label>\n");
      out.write("                                                                <input type=\"text\" class=\"form-control shadow\" placeholder=\"Enter Address\" id=\"Address\" required name=\"Address\">\n");
      out.write("                                                                <div class=\"invalid-feedback\">This  field is required.</div>\n");
      out.write("                                                            </div>\n");
      out.write("                                                            <div class=\"form-group\">\n");
      out.write("                                                                <label for=\"Phone\">Vehicle No. :</label>\n");
      out.write("                                                                <input type=\"text\" class=\"form-control shadow\" placeholder=\"Enter Phone\" id=\"Phone\" name=\"Phone\" required pattern=\"[A-Z]{2}[0-9]{1,2}[A-Z]{2}[0-9]{4}\">\n");
      out.write("                                                                <div class=\"invalid-feedback\">Please enter valid Vehicle Number.</div>\n");
      out.write("                                                            </div>\n");
      out.write("                                                            <div class=\"form-group\">\n");
      out.write("                                                                <label for=\"Vehicle_Model\"> Vehicle Model</label>\n");
      out.write("                                                                <input type=\"text\" class=\"form-control shadow\" placeholder=\"Enter Address\" id=\"Vehicle_Model\" required name=\"model\">\n");
      out.write("                                                                <div class=\"invalid-feedback\">This  field is required.</div>\n");
      out.write("                                                            </div>\n");
      out.write("                                                            <div class=\"form-group\">\n");
      out.write("                                                                <label for=\"RcCard\"> Regristration Card</label>\n");
      out.write("                                                                <input type=\"file\" class=\"form-control shadow\" placeholder=\"Enter Address\" id=\"RcCard\" required name=\"RcCard\">\n");
      out.write("                                                                <div class=\"invalid-feedback\">Please Upload regristration card image.</div>\n");
      out.write("                                                            </div>\n");
      out.write("\n");
      out.write("                                                            <button type=\"submit\"  class=\"btn btn-primary\">Submit</button>\n");
      out.write("\n");
      out.write("                                                          \n");
      out.write("<!--                                                                          <script>\n");
      out.write("                                                                             function validateForm() {\n");
      out.write("                                                                               alert(\"User Registered Successfully\");\n");
      out.write("                                                                                 return true;\n");
      out.write("                                                                                                   }\n");
      out.write("                                                                                   </script>\n");
      out.write("                                                                               <script>\n");
      out.write("                                                                                   function validateForm() {\n");
      out.write("                                                                                     var x = document.forms[\"Number\"][\"username\"].value;\n");
      out.write("                                                                                     if (x == null || x == \"\") {\n");
      out.write("                                                                                      alert(\"Number cannot be empty..!!!\");\n");
      out.write("                                                                                          return false;\n");
      out.write("                                                                               }\n");
      out.write("                                                                   </script>\n");
      out.write("                                                        -->\n");
      out.write("                                                        </form>\n");
      out.write("                                                        <script>\n");
      out.write("                                                            // Disable form submissions if there are invalid fields\n");
      out.write("                                                            (function () {\n");
      out.write("                                                                'use strict';\n");
      out.write("                                                                window.addEventListener('load',\n");
      out.write("                                                                        function () {\n");
      out.write("                                                                            // Get the forms we want to add validation styles to\n");
      out.write("                                                                            var forms = document\n");
      out.write("                                                                                    .getElementsByClassName('needs-validation');\n");
      out.write("                                                                            // Loop over them and prevent submission\n");
      out.write("                                                                            var validation = Array.prototype.filter.call(forms,\n");
      out.write("                                                                                    function (form) {\n");
      out.write("                                                                                        form.addEventListener('submit', function (\n");
      out.write("                                                                                                event) {\n");
      out.write("                                                                                            if (form.checkValidity() === false) {\n");
      out.write("                                                                                                event.preventDefault();\n");
      out.write("                                                                                                event.stopPropagation();\n");
      out.write("                                                                                            }\n");
      out.write("                                                                                            form.classList.add('was-validated');\n");
      out.write("                                                                                        }, false);\n");
      out.write("                                                                                    });\n");
      out.write("                                                                        }, false);\n");
      out.write("                                                            })();\n");
      out.write("                                                        </script>\n");
      out.write("                                                       \n");
      out.write("                                                    </div>\n");
      out.write("\n");
      out.write("                                                    <!-- Modal footer -->\n");
      out.write("                                                    <div class=\"modal-footer\">\n");
      out.write("                                                        <button type=\"button\" class=\"btn btn-danger\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                                                    </div>\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div> \n");
      out.write("                                    <div id=\"menu2\" class=\"container tab-pane fade\"><br>\n");
      out.write("                                        <h3>Expired</h3>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                           \n");
      out.write("\n");
      out.write("                               </div> \n");
      out.write("                </div> \n");
      out.write("                                       \n");
      out.write("                </div>    </div>                  \n");
      out.write("               <footer >  \n");
      out.write("            <div class=\"container-fluid text-center\" style=\"background-color: black; color: white; padding: 10px; font-size: 20px; \">\n");
      out.write("                <i class=\"fa fa-facebook-official w3-hover-opacity\"></i>\n");
      out.write("                <i class=\"fa fa-instagram w3-hover-opacity\"></i>\n");
      out.write("                <i class=\"fa fa-snapchat w3-hover-opacity\"></i>\n");
      out.write("                <i class=\"fa fa-pinterest-p w3-hover-opacity\"></i>\n");
      out.write("                <i class=\"fa fa-twitter w3-hover-opacity\"></i>\n");
      out.write("                <i class=\"fa fa-linkedin w3-hover-opacity\"></i>\n");
      out.write("            \n");
      out.write("            <p>Minor Project By Group A-16</p>\n");
      out.write("             <p class=\"mb-0 text-muted text-small\">&copy; All rights reserved. Template designed by Group A-16 </p>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("       \n");
      out.write("                    </body>\n");
      out.write("                    </html>");
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
