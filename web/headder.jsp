<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
   
 .navbar {
  margin: 20px;
  background-color: black;
  z-index: 9999;
  border: 0;
  font-size: 15px !important;
  line-height: 1.42857143 !important;
  letter-spacing: 4px;
  border-radius: 0;
}

.navbar li a, .navbar .navbar-brand {
  color: white !important;
  
}

.navbar-nav li a:hover, .navbar-nav li.active a {
  color: #fff !important;
  background-color: red !important;
}

.navbar-default .navbar-toggle {
  border-color: white;
  color: #fff !important;
}
</style>

</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">DemoWebSite</a>
       <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
       </button>
    </div>
     <div class="collapse navbar-collapse" id="myNavbar">
    <form class="navbar-form navbar-right" action="/DemoServlet">
       <div class="input-group">
    <input type="text" class="form-control" placeholder="Search">
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button>
    </div>
  </div>
    </form>
      <ul class="nav navbar-nav navbar-right">
      
        <li ><a href="Home2.jsp">HOME</a></li>
        <li><a href="profilepage1.jsp">PROFILE</a></li>
        <li><a href="about.jsp">ABOUT</a></li>
        <li><a href="contact.jsp">CONTACT</a></li>
         </li>
      <%
            if(session.getAttribute("user")!=null){
                %>  <li class="nav-item" >  
        <a class="nav-link" href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> logout ${user}</a>
        </li><%
            }else { %>
              <li class="nav-item">
        <a class="nav-link" href="login.jsp">Login</a>
        </li>
          <% }  
        %>
          <!--<li>  <a href="logout.jsp"> <span class="glyphicon glyphicon-log-out"></span> logout</a> </li>-->
        
        
      </ul>
     </div> 
    </div>
    </nav>

</body>
</html>