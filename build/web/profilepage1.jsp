
<%@page import="java.util.Map"%>
<%@page import="com.google.zxing.common.BitMatrix"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.google.zxing.client.j2se.MatrixToImageWriter"%>
<%@page import="java.io.File"%>
<%@page import="com.google.zxing.BarcodeFormat"%>
<%@page import="com.google.zxing.MultiFormatWriter"%>
<%@page import="com.google.zxing.qrcode.decoder.ErrorCorrectionLevel"%>
<%@page import="com.google.zxing.EncodeHintType"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>

<html>
    <head>


        <meta charset="ISO-8859-1">
        <title>Profile Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet"
              href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
              integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
              crossorigin="anonymous">
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">-->

        <style>
            .bg{
                background-image: url('images/cybertruck.jpg');
                background-repeat: no-repeat;
                background-size:cover ;
                height: 100vh;
            }
            .carousel-inner img {
                width: 100%;
                height: 300px;
            }
            .profile-edit-btn{
                border: none;
                border-radius: 1.5rem;
                width: 70%;
                padding: 2%;
                text-decoration: none;
                display: inline-block;
                font-weight: 600;
                color: #6c757d;
                cursor: pointer;
            }
            .file {
                position: relative;
                overflow: hidden;
                margin-top: -20%;
                margin-left: 15px;
                width: 70%;
                border: none;
                border-radius: 0;
                font-size: 15px;
                background: #212529b8 !important;
            }
            .file input {
                position: absolute;
                opacity: 0;
                right: 0;
                top: 0;
            }
        </style> 

        <title>Form</title>

    </head>
    <body>
        <%@include file="Navbar.jsp" %>

        <!--<div class="container-fluid">-->
            <div id="demo" class="carousel slide" data-ride="carousel">

                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>

                <!-- The slideshow -->
                <div class="carousel-inner">
                    <div class="carousel-item active ">
                        <img src="images/1212.jpg" alt="Los Angeles"  >
                    </div>
                    <div class="carousel-item">
                        <img src="images/tesla.jpg" alt="Chicago" >
                    </div>
                    <div class="carousel-item">
                        <img src="images/cybertruck.jpg" alt="New York" >
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
<!--            <div style="padding-left:760px" <button type="button" class="profile-edit-btn" (click)="closeModal()" data-toggle="modal" data-target="#myModal">
                    <i class="fas fa-edit"> Edit Profile</i>
                </button> </div>-->

            <div class="bg">
                <div class="container-fluid"
                     >
                    <div class="row"
                         style=" position: relative;
                         width: 100%;
                         ">
                        <div class="col-sm-3
                             border-right" style="padding-top: 20px;">
                            <img src=" images/img_avatar1.png" class="rounded-circle" alt="Bird" width="250" height="250" >
                            <div class="file btn btn-md btn-primary">
                                Change Photo
                                <input type="file" name="file"/>
                            </div>
                            <!--<label class="form-label" for="customFile">Edit Photo</label>-->
                            <!--<span><input type="file" class="form-control" id="customFile" />Edit Photo</span>--> 


                            <!--                <img 
                                                src="DSC05808.JPG"
                                                style="width: 100px"
                                                class="rounded-circle" alt="DSC0 5808"-->
                            <!--                    hr.vertical {
                                                width: 0px;
                                                height: 100%;
                                                /* or height in PX */
                                                }-->

                        </div>
                        <div class="col-sm-8" >

                            <!-- Tabs navs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#home">Personal Details</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu1">Your Vehcile</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu2">Expired Plan</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div id="home" class="container tab-pane active"><br>


                                    <%     try {

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

                                    %> 
                                    <div class="row">
                                        <div class="col-md-3">
                                            <label>Name: </label>
                                        </div>
                                        <div class="col-md-3">
                                            <p><%=resultSet.getString("name")%></p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <label>Email: </label>
                                        </div>
                                        <div class="col-md-3">
                                            <p><%=resultSet.getString("email")%></p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <label>Username: </label>
                                        </div>
                                        <div class="col-md-3">
                                            <p><%=resultSet.getString("username")%></p>
                                        </div>
                                    </div>





                                    <%

                                    } else { %>
                                    <p><br>
                                        You don't have any account yet<br><br><br><br><br>
                                        <a href="login.jsp" <button type="button" class="btn btn-primary" >
                                                   SignUp here
                                                </button>  
                                           </a>
                                        <%}

                                            } catch (SQLException e) {
                                                // process sql exception
                                                // printSQLException(e);
                                                e.printStackTrace();
                                            }
                                        %>


                                        <!--                                        </div>
                                                                            </div>-->

                                </div>
                                <div id="menu1" class="container tab-pane fade">
                                    <%
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

                                    %> 
                                    <br>
                                    <div class="row">
                                        <div class="col-md-6">

                                            <div class="row">
                                                <div class="col-md-4">
                                                    <label>Vehical No: </label>
                                                </div>
                                                <div class="col-md-4">
                                                    <p><%=resultSet.getString("vno")%></p>
                                                </div>
                                            </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <label>Vehical Model: </label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p><%=resultSet.getString("model")%></p>
                                                    </div>
                                                </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <label>City: </label>
                                                </div>
                                                <div class="col-md-4">
                                                    <p><%=resultSet.getString("city")%></p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <label>State: </label>
                                                </div>
                                                <div class="col-md-4">
                                                    <p><%=resultSet.getString("state")%></p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <label>Address: </label>
                                                </div>
                                                <div class="col-md-6">
                                                    <p><%=resultSet.getString("address")%></p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <label>Contact: </label>
                                                </div>
                                                <div class="col-md-4">
                                                    <p><%=resultSet.getString("mobno")%></p>   

                                                </div>
                                            </div>


                                        </div>
                                        <div class="col-md-4">

                                            <!--<img src="images/qr.png" >-->
                                            <br><br><br>  <a href="index.jsp" <button type="button" class="btn btn-success" >

                                                SELECT YOUR  PLAN
                                            </button></a>
                                        </div>
                                    </div>
                                        <% } else {

                                            if (null == request.getAttribute("Message")) { %>
                                        <p><br>
                                            You don't have any vehicle registerd yet<br><br><br><br><br>
                                            <% }
                                             else {%>
                                            <br>
                                        <div class="row">
                                            <div class="col-md-6">

                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <label>Vehical No: </label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p><%=resultSet.getString("vno")%></p>
                                                    </div>
                                                </div>
                                                    <div class="row">
                                                    <div class="col-md-4">
                                                        <label>Vehical Model: </label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p><%=resultSet.getString("model")%></p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <label>City: </label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p><%=resultSet.getString("city")%></p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <label>State: </label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p><%=resultSet.getString("state")%></p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <label>Address: </label>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <p><%=resultSet.getString("address")%></p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <label>Contact: </label>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <p><%=resultSet.getString("mobno")%></p>   

                                                    </div>
                                                </div>


                                            </div>
                                            <div class="col-md-4">

                                                <!--<img src="images/qr.png" >-->
                                                <button type="button" class="btn btn-succes" data-toggle="modal" data-target="#priceModal">

                                                    SELECT YOUR  PLAN
                                                </button>

                                            </div>
                                             </div>

                                            <% } 
                                               }
                                            } catch (SQLException e) {
                                                // process sql exception
                                                // printSQLException(e);
                                                e.printStackTrace();
                                            } %>
                                        
                                        <br><br><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                                            Register Your Vehicle
                                        </button>

                                        <!-- The Modal -->
                                        <div class="modal" id="myModal">
                                            <div class="modal-dialog">
                                                <div class="modal-content">

                                                    <!-- Modal Header -->
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Vehicle Registeration</h4>
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    </div>

                                                    <!-- Modal body -->
                                                    <!--<form onsubmit="return validateForm()">-->
                                                    <div class="modal-body">
                                                        <form action="vehicalser" method="post" class="needs-validation"   novalidate autocomplete="off">
                                                            <div class="form-group">
                                                                <label for="Number">Contact no. :</label>
                                                                <input type="text" class="form-control shadow" placeholder="Enter Number"  id="Number" pattern="[6789]{1}[0-9]{9}" required name="Number">
                                                                <div class="invalid-feedback">Please enter valid Mobile No..</div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="City">City:</label>
                                                                <input type="text" class="form-control shadow" placeholder="Enter City" id="City" name="City" required>
                                                                <div class="invalid-feedback">This is required.</div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="State">State:</label>
                                                                <input type="text" class="form-control shadow" placeholder="Enter State" id="State" name="State" required>
                                                                <div class="invalid-feedback">This is required.</div>
                                                            </div>
                                                             <div class="form-group">
                                                                <label for="Address"> Address</label>
                                                                <input type="text" class="form-control shadow" placeholder="Enter Address" id="Address" required name="Address">
                                                                <div class="invalid-feedback">This  field is required.</div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="Phone">Vehicle No. :</label>
                                                                <input type="text" class="form-control shadow" placeholder="Enter Phone" id="Phone" name="Phone" required pattern="[A-Z]{2}[0-9]{1,2}[A-Z]{2}[0-9]{4}">
                                                                <div class="invalid-feedback">Please enter valid Vehicle Number.</div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="Vehicle_Model"> Vehicle Model</label>
                                                                <input type="text" class="form-control shadow" placeholder="Enter Address" id="Vehicle_Model" required name="model">
                                                                <div class="invalid-feedback">This  field is required.</div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="RcCard"> Regristration Card</label>
                                                                <input type="file" class="form-control shadow" placeholder="Enter Address" id="RcCard" required name="RcCard">
                                                                <div class="invalid-feedback">Please Upload regristration card image.</div>
                                                            </div>

                                                            <button type="submit"  class="btn btn-primary">Submit</button>

                                                          
<!--                                                                          <script>
                                                                             function validateForm() {
                                                                               alert("User Registered Successfully");
                                                                                 return true;
                                                                                                   }
                                                                                   </script>
                                                                               <script>
                                                                                   function validateForm() {
                                                                                     var x = document.forms["Number"]["username"].value;
                                                                                     if (x == null || x == "") {
                                                                                      alert("Number cannot be empty..!!!");
                                                                                          return false;
                                                                               }
                                                                   </script>
                                                        -->
                                                        </form>
                                                        <script>
                                                            // Disable form submissions if there are invalid fields
                                                            (function () {
                                                                'use strict';
                                                                window.addEventListener('load',
                                                                        function () {
                                                                            // Get the forms we want to add validation styles to
                                                                            var forms = document
                                                                                    .getElementsByClassName('needs-validation');
                                                                            // Loop over them and prevent submission
                                                                            var validation = Array.prototype.filter.call(forms,
                                                                                    function (form) {
                                                                                        form.addEventListener('submit', function (
                                                                                                event) {
                                                                                            if (form.checkValidity() === false) {
                                                                                                event.preventDefault();
                                                                                                event.stopPropagation();
                                                                                            }
                                                                                            form.classList.add('was-validated');
                                                                                        }, false);
                                                                                    });
                                                                        }, false);
                                                            })();
                                                        </script>
                                                       
                                                    </div>

                                                    <!-- Modal footer -->
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                                    <div id="menu2" class="container tab-pane fade"><br>
                                        <h3>Expired</h3>
                                    </div>
                                </div>
                            </div>

                    


                           

                               </div> 
                </div> 
                                       
                </div>    </div>                  
               <footer >  
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