<%-- 
    Document   : profile
    Created on : Apr 16, 2021, 11:53:56 PM
    Author     : C J
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <style>
            body{
                background: -webkit-linear-gradient(left, #FFA07A, #87CEFA);
                //background-color: lightcyan !important;

            }
            .emp-profile{
                padding: 3%;
                margin-top: 90px;
                margin-bottom: 3%;
                border-radius: 0.5rem;
                background: #fff;
                //background-color: lightcyan !important;

            }
            .profile-img{
                text-align: center;
            }
            .profile-img img{
                width: 70%;
                height: 100%;
            }
            .profile-img .file {
                position: relative;
                overflow: hidden;
                margin-top: -20%;
                width: 70%;
                border: none;
                border-radius: 0;
                font-size: 15px;
                background: #212529b8;
            }
            .profile-img .file input {
                position: absolute;
                opacity: 0;
                right: 0;
                top: 0;
            }
            .profile-head h5{
                color: #333;
            }
            .profile-head h6{
                color: #0062cc;
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
            .proile-rating{
                font-size: 12px;
                color: #818182;
                margin-top: 5%;
            }
            .proile-rating span{
                color: #495057;
                font-size: 15px;
                font-weight: 600;
            }
            .profile-head .nav-tabs{
                margin-bottom:5%;
            }
            .profile-head .nav-tabs .nav-link{
                font-weight:600;
                border: none;
            }
            .profile-head .nav-tabs .nav-link.active{
                border: none;
                border-bottom:2px solid #0062cc;

            }
            .profile-work{
                padding: 14%;
                margin-top: -15%;
            }
            .profile-work p{
                font-size: 12px;
                color: #818182;
                font-weight: 600;
                margin-top: 10%;
            }
            .profile-work a{
                text-decoration: none;
                color: #495057;
                font-weight: 600;
                font-size: 14px;
            }
            .profile-work ul{
                list-style: none;
            }
            .profile-tab label{
                font-weight: 600;
            }
            .profile-tab{
                
                margin:auto;
            }
            .profile-tab p{
                font-weight: 600;
                color: #0062cc;
            }
            .modal{
                margin-top: 90px;
            }
            
        </style>
    </head>
    <body>
        <%@ include file="headder.jsp" %>
        <div class="container emp-profile">
            <form >
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="
                                 images/img_avatar1.png" class="img-circle"style="height:250px; width:250px"alt=""/>
                            <div class="file btn btn-lg btn-primary">
                                Change Photo
                                <input type="file" name="file"/>
                            </div>
                        </div>
                        <div class="profile-work">
                            <p>WORK LINK</p>
                            <a href="">Website Link</a><br/>
                            <a href="">Bootsnipp Profile</a><br/>
                            <a href="">Bootply Profile</a>
                            <p>SKILLS</p>
                            <a href="">Web Designer</a><br/>
                            <a href="">Web Developer</a><br/>
                            <a href="">WordPress</a><br/>
                            <a href="">WooCommerce</a><br/>
                            <a href="">PHP, .Net</a><br/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h5>
                                Kshiti Ghelani
                            </h5>
                            <h6>
                                Web Developer and Designer
                            </h6>
                            <p class="proile-rating">RANKINGS : <span>8/10</span></p>

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
                                    <div class="card">
                                        <div class="card-body">
                                                                                                                          



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
<!--                                            <h2>Name: <%=resultSet.getString("name")%></h2><br>
                                            <h2>Email: <%=resultSet.getString("email")%></h2><br>
                                            <h2>Username: <%=resultSet.getString("username")%></h2><br>-->

                                            </tr>
                                            <%

                                                    }

                                                } catch (SQLException e) {
                                                    // process sql exception
                                                    // printSQLException(e);
                                                    e.printStackTrace();
                                                }
                                            %>


                                        </div>
                                    </div>

                                </div>
                                <div id="menu1" class="container tab-pane fade">
                                    <%  if (null == request.getAttribute("Message")) {

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
                                    <table class="table" >
                                        <thead class="thead-light">
                                            <tr>
                                                <td>Vehical No</td>
                                                <td>City</td>
                                                <td>State</td>
                                                <td>Address</td>
                                                <td>Contact</td>
                                            </tr>
                                        </thead>
                                        <tr>
                                            <td><%=resultSet.getString("vno")%></td>
                                            <td><%=resultSet.getString("city")%></td>
                                            <td><%=resultSet.getString("state")%></td>
                                            <td><%=resultSet.getString("address")%></td>
                                            <td><%=resultSet.getString("mobno")%></td>

                                        </tr>
                                    </table>

                                    <%

                                            }

                                        } 
                                            catch (Exception e) {
                                            // process sql exception
                                            // printSQLException(e);
                                            e.printStackTrace();
                                        }

                                    } else { %>
                                    <p><br>
                                        You don't have any vehicle registerd yet<br><br><br><br><br>
                                        <%}
                                        %>
                                        <br><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
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
                                                    <form action="vehicalser" method="post">
                                                        <div class="form-group">
                                                            <label for="Number">Number:</label>
                                                            <input type="text" class="form-control shadow" placeholder="Enter Number" id="Number" name="Number">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="City">City:</label>
                                                            <input type="text" class="form-control" placeholder="Enter City" id="City" name="City">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="State">State:</label>
                                                            <input type="text" class="form-control" placeholder="Enter State" id="State" name="State">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="Phone">Vehical No. :</label>
                                                            <input type="text" class="form-control" placeholder="Enter Phone" id="Phone" name="Phone">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="Address"> Address</label>
                                                            <input type="text" class="form-control" placeholder="Enter Address" id="Address" name="Address">
                                                        </div>
                                                        <div class="form-group form-check">

                                                        </div>
                                                        <button type="submit" class="btn btn-primary">Submit</button>
                                                        <!--                                                        <script>
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
                                                                                                                </script>-->
                                                    </form>
                                                </div>

                                                <!-- Modal footer -->
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
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
                    
                    <div class="col-md-2  ">
                        <!--<button id="contact-modal" (click)="openModal()" data-toggle="modal" data-target="#contact" class="btn btn-primary btn-block follow">EditProfile</button>--> 
                        <button type="button" class="profile-edit-btn" (click)="closeModal()" data-toggle="modal" data-target="#myModal">
                            <i class="fas fa-edit"> Edit Profile</i>
                        </button>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col-md-4">
                        
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>User Id</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Kshiti123</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Kshiti Ghelani</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>kshitighelani@gmail.com</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Phone</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>123 456 7890</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Profession</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Web Developer and Designer</p>
                                            </div>
                                        </div>
                            </div>
                          <div class="tab-pane fade   " id="profile" role="tabpanel" aria-labelledby="profile-tab">  
                            <!--<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Experience</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Hourly Rate</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>10$/hr</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Total Projects</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>230</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>English Level</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Availability</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>6 months</p>
                                            </div>
                                        </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Your Bio</label><br/>
                                        <p>Your detail description</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                        </div>
                    </div>
                </div>
            </form>           

            <div class="modal" id="myModal">
                        <div class="modal-dialog">
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h4 class="modal-title">Edit Profile</h4>
                                        </div>
                                        <div class="col-md-6">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                    </div>


                                </div>

                                <!-- Modal body -->
                                <div class="modal-body">
                                    <div class="form-group">
                                        <p for="msj">In this you can edit your personal details</p>
                                    </div>
                                    <div class="form-group">
                                        <label for="txtFullname">Name</label>
                                        <input type="text" id="txtFullname" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="txtEmail">Email</label>
                                        <input type="text" id="txtEmail" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="txtPhone">Telephone</label>
                                        <input type="text" id="txtPhone" class="form-control">
                                    </div>
                                </div>

                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success" data-dismiss="modal">Save</button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            

            <div class="modal " id="contact" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="contact">Contactarme</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            <button type="button" class="btn btn-primary" (click)="openModal()" data-dismiss="modal">Guardar</button>
                        </div>
                    </div>
                </div>
            </div>  </div>
    </body>
</html>
