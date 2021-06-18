<%-- 
    Document   : Homepage
    Created on : 18 Apr, 2021, 12:35:49 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        
    </head>
    <body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#">Advance Parking System</a>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
        
      <li class="nav-item">
        <a class="nav-link" href="Home2.jsp">Home</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="profilepage1.jsp">Profile</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="about2.jsp">About</a>
      </li>
      <%
            if(session.getAttribute("user")!=null){
                %>  <li class="nav-item" >  
        <a class="nav-link" href="logout.jsp"> logout ${user}</a>
        </li><%
            }else { %>
              <li class="nav-item">
        <a class="nav-link" href="login.jsp">Login</a>
        </li>
          <% }  
        %>
       
    
      
      
      
     
        
        
     
    </ul>
  </div>
</nav>

    </body>
</html>
