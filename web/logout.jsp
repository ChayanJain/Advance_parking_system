<%-- 
    Document   : logout
    Created on : Apr 21, 2021, 12:26:15 AM
    Author     : C J
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%      
              // HttpSession session = request.getSession();
                session.removeAttribute("user");
                 session.removeAttribute("fname");
                  session.removeAttribute("fname");
               
                session.invalidate();
                response.sendRedirect("login.jsp");
                %>
    </body>
</html>
