<%-- 
    Document   : profilepage
    Created on : 15 Apr, 2021, 2:55:07 AM
    Author     : hp
--%>

<%@page import="java.util.List"%>
<%@page import="com.bean.LoginBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

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

        <div class="container-fluid">
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
            <div style="padding-left:760px" <button type="button" class="profile-edit-btn" (click)="closeModal()" data-toggle="modal" data-target="#myModal">
                    <i class="fas fa-edit"> Edit Profile</i>
                </button> </div>
          
            <div class="bg">
                <div class="container-fluid"
                     >
                    <div class="row"
                         style=" position: relative;
                         width: 100%;
                        ">
                        <div class="col-sm-4
                             border-right">
                            <img src="images/DSC05608.JPG" class="rounded-circle" alt="Bird" width="350" height="350" >
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
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="Personal Details-tab" data-toggle="tab" href="#Peronal Details" role="tab" aria-controls="home" aria-selected="true">Personal Details</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" id="Active Plan-tab" data-toggle="tab" href="#Active Plan" role="tab" aria-controls="profile" aria-selected="false">Active Plan</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" id="Expired Plan-tab" data-toggle="tab" href="#Expired Plan" role="tab" aria-controls="contact" aria-selected="false">Expired Plan</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="Personal Details" role="tabpanel" aria-labelledby="Personal Details-tab">
                                    <div class="card">
                                        <div class="card-body">Name: ${name} </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-body">Email:${email} </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-body">Contact.no: ${user}</div>
                                    </div>
                                    <div class="card">

                                        <div class="card-body">Gender</div>
                                    </div>
                                </div>
                                <div class="tab-pane fade show active" id="Active Plan" role="tabpanel" aria-labelledby="Active Plan-tab"></div>
                                <div class="tab-pane fade show active" id="Expired Plan" role="tabpanel" aria-labelledby="Expired Plan-tab"></div>
                            </div>  </div>



                    </div>   </div>     </div> 
    </body>
</html>
