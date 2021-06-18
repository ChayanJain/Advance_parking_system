<%-- 
    Document   : index
    Created on : Apr 25, 2021, 2:03:23 AM
    Author     : C J
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <%@include file="bs.jsp"%>
        <!--<script src="script.js"></script>-->
        
        <style>
            .btn:focus,
        .btn:active{
            box-shadow: black  !important;

        }
        .btn:hover{
            box-shadow: 0px 3px 9px rgba(0,0,0,0.2) !important;
            //not working
        }
        </style>
    </head>
    <body style="background: -webkit-linear-gradient(left, #F0E68C,#00FFFF); height: 900px">
          <%@include file="Navbar.jsp"%>
        <div class="container text-center"style="margin-top:100px;  ">
       <!--ackground: -webkit-linear-gradient(right,#ADD8E6,#FFDEAD);-->
        <h2>Welcome in Parking tax plans</h2>
          <h3>Choose a payment plan that works for you</h3><br><br>
                                            <div class="row">
                                                <div class="col-sm-4 ">
                                                    <div class="card text-center" style="padding:10px; background-color: white; ">
                                                        <div class="card-headder border-bottom" style="background: -webkit-linear-gradient(bottom, #FFE4B5,#B0E0E6);">
                                                            <h1>Basic</h1>
                                                        </div>
                                                        <div class="card-body"style="background: -webkit-linear-gradient(top, #FFE4B5,#B0E0E6); ">
                                                            <h4><strong>50</strong> Scans</h4>
                                                            <h4><strong>30</strong> Parkings</h4>
                                                            <h4><strong>15</strong> Cities</h4>
                                                            <h4><strong>1</strong> Vehicle</h4>
                                                            <br>
                                                        </div>
                                                            <div class="card-footer"style="background: -webkit-linear-gradient(bottom, #FFE4B5,#B0E0E6); ">
                                                            <br><h1><strong>250/-</strong></h1>
                                                            <h3>Per month</h3>
                                                            <button class="btn btn-md"  data-toggle="modal" data-target="#myModal" style="background: -webkit-linear-gradient(right,#ADD8E6,#FFDEAD);">Buy Now</button>
                                                        </div>
                                                            
                                                    </div>
                                                </div>
                                                <div class="col-sm-4 ">
                                                    <div class="card text-center" style="padding:10px;background-color: white;">
                                                        <div class="card-heading border-bottom"style="background: -webkit-linear-gradient(bottom, #FFE4B5,#B0E0E6);">
                                                            <h1>Pro</h1>
                                                        </div>
                                                        <div class="card-body"style="background: -webkit-linear-gradient(top, #FFE4B5,#B0E0E6);">

                                                            <h4><strong>70</strong> Scans</h4>
                                                            <h4><strong>35</strong> Parkings</h4>
                                                            <h4><strong>20</strong> Cities</h4>
                                                            <h4><strong>2</strong> Vehicle</h4>
                                                            <br>
                                                        </div>
                                                        <div class="card-footer"style="background: -webkit-linear-gradient(bottom, #FFE4B5,#B0E0E6);">
                                                            <br><h1><strong>500/-</strong></h1>
                                                            <h3>Three Month's</h3>
                                                            <button class="btn btn-md"  data-toggle="modal" data-target="#myModal" style="background: -webkit-linear-gradient(right,#ADD8E6,#FFDEAD);">Buy Now</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4 ">
                                                    <div class="card text-center"style="padding:10px;background-color: white;">
                                                        <div class="card-heading border-bottom"style="background: -webkit-linear-gradient(bottom, #FFE4B5,#B0E0E6);">
                                                            <h1>Premium</h1>
                                                        </div>
                                                        <div class="card-body"style="background: -webkit-linear-gradient(top, #FFE4B5,#B0E0E6);">
                                                            <h4><strong>100+</strong> Scans</h4>
                                                            <h4><strong>50+</strong> Parkings</h4>
                                                            <h4><strong>30+</strong> Cities</h4>
                                                            <h4><strong>5+</strong> Vehicle</h4>
                                                            <br></div>
                                                        <div class="card-footer"style="background: -webkit-linear-gradient(bottom, #FFE4B5,#B0E0E6);">
                                                            <br>  <h1><strong>1000/-</strong></h1>
                                                            <h3>Six Month's</h3>
                                                            <button class="btn btn-md"  data-toggle="modal" data-target="#myModal" style="background: -webkit-linear-gradient(right,#ADD8E6,#FFDEAD);">Buy Now</button>
                                                        </div>
                                                    </div>

        </div>
        </div>
          
          
           <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">You can payment here</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
            <h2>Scan this QR code to pay</h2>
            <br><img src="images/qr.png" width="250px" height="250px"><br><br>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
          
        </div>
           <footer style="margin-top:100px">  
            <div class="container-fluid text-center" style="background-color: black; color: white; padding: 10px; font-size: 20px; ">
                <i class="fa fa-facebook-official w3-hover-opacity"></i>
                <i class="fa fa-instagram w3-hover-opacity"></i>
                <i class="fa fa-snapchat w3-hover-opacity"></i>
                <i class="fa fa-pinterest-p w3-hover-opacity"></i>
                <i class="fa fa-twitter w3-hover-opacity"></i>
                <i class="fa fa-linkedin w3-hover-opacity"></i>
            
            <p>Minor Project By Group A-16</p>
             <p class="mb-0 text-muted text-small">&copy; All rights reserved. Template designed by Group A-16 </p>
            </div>
        </footer>
    </body>
</html>
