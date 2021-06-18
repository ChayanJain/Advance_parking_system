<%-- 
    Document   : contact
    Created on : Mar 13, 2021, 10:50:16 AM
    Author     : C J
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="bs.jsp"%>
        <style>
.nav-tabs li a {
  color: #777;
}
</style>
    </head>
    <body>
       
       <div class="container">
  <h3 class="text-center">Contact</h3>
  <p class="text-center"><em>We love our fans!</em></p>
  <div class="row test">
    <div class="col-md-4">
      <p>Fan? Drop a note.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Chicago, US</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: mail@mail.com</p>
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
</div>
        <h3 class="text-center">From The Blog</h3>
<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#home">Mike</a></li>
  <li><a data-toggle="tab" href="#menu1">Chandler</a></li>
  <li><a data-toggle="tab" href="#menu2">Peter</a></li>
</ul>

<div class="tab-content">
  <div id="home" class="tab-pane fade in active">
    <h2>Mike Ross, Manager</h2>
    <p>Man, we've been on the road for some time now. Looking forward to lorem ipsum.</p>
  </div>
  <div id="menu1" class="tab-pane fade">
    <h2>Chandler Bing, Guitarist</h2>
    <p>Always a pleasure people! Hope you enjoyed it as much as I did. Could I BE.. any more pleased?</p>
  </div>
  <div id="menu2" class="tab-pane fade">
    <h2>Peter Griffin, Bass player</h2>
    <p>I mean, sometimes I enjoy the show, but other times I enjoy other things.</p>
  </div>
</div>
        <br><br>
        <img src="map.jpg" style="width:100%">
        <footer class="text-center container-fluid bg">
            <h2>I Am In Footer</h2> 
        </footer>
    </body>
</html>
