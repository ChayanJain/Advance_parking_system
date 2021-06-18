<!DOCTYPE html>
<html >
    <head>
        <meta charset="ISO-8859-1">
        <title>Home</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <style>
            .bg {
                background-color:black;
                color:white;
                padding-top: 50px;
                padding-bottom: 50px;
                margin-top:20px;

            }

            .bg1{
                background-color: activecaption;
                color: black;
                margin-top:50px;
            }

            .jumbotron{
                background-color: #f4511e !important;
                margin-top:90px;
                padding-bottom:50px;
                color:black;
            }
            .margin{ 

                padding-top:50px; 

            }

            .thumbnail {
                padding: 0 0 15px 0;
                border: 0.5px solid skyblue; 


                border-radius: 0;
                transition: box-shadow 0.5s;

            }
            .thumbnail img {
                width: 100%;
                height: 100%;
                margin-top: 20px;
                margin-bottom: 20px;

            }


            .panel {
                border: 1px solid #f4511e; 
                border-radius:0 !important;
                transition: box-shadow 0.5s;
            }
            .panel:hover {
                box-shadow: 5px 0px 40px rgba(0,0,0, .2);
            }


            .panel-body{
                padding-top:30px;
                padding-bottom:30px;

            }
            .panel-heading {
                color: black !important;
                background-color: skyblue !important;
                padding: 25px;
                border-bottom: 1px solid transparent;
                border-top-left-radius: 0px;
                border-top-right-radius: 0px;
                border-bottom-left-radius: 0px;
                border-bottom-right-radius: 0px;
            }
            .panel-footer {
                background-color: white !important;
            }
            s
            .panel-footer .btn {
                margin: 15px 0;
                background-color: #f4511e;
                color: #fff;
            }
            .panel-footer .btn:hover {
                border: 1px solid #f4511e;
                background-color: #fff !important;
                color: #f4511e;
            }
        </style>

    </head>
    <body>
        <%@ include file="headder.jsp" %>
        <%
            if(session.getAttribute("user")==null ){
                response.sendRedirect("login.jsp");
            }
            
        %>

        <!--  Welcome Block--> 
        <div class="jumbotron text-center " >
            <h1 style="padding-bottom:50px"> ${user} ${fname} ${femail} Welcome To  DemoWebsite</h1>

            <img src="photo.jpg" class="  img-responsive img-border  "style="display:inline; padding-bottom:50px" alt="chayan" width="350" height="350">

            <p >Hello this is basic Website made on bootstrap by Chayan Jain while he is doing the practice </p>
<!--            <a href ="https://qrcode.tec-it.com/en"> click hear </a>
            <p> for generate QRcode</p>-->
        </div>

        <!-- 2nd block  -->
        <div class="container-fluid text-center bg1">      
            <H1 class="margin"><strong>What is this for</strong></H1>
            <p class="margin">Hello this is basic Website made on bootstrap by Chayan Jain while he is doing the practice </p>
            <br>
            <div class="row text-center slideanim">
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="code.jpg" alt="Paris" width="400" height="300">
                        <p><strong>J 1</strong></p>
                        <p>We have vacancy</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="wp4.jpeg" alt="New York" width="400" height="300">
                        <p><strong>J 2</strong></p>
                        <p>We have vacancy</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="wp4.jpeg" alt="San Francisco" width="400" height="300">
                        <p><strong>J 3</strong></p>
                        <p>We have vacancy</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="earth.jpg" alt="Paris" width="300" height="200">
                        <p><strong>J 4</strong></p>
                        <p>We have vacancy</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="wp4.jpeg" alt="New York" width="400" height="300">
                        <p><strong>J 5</strong></p>
                        <p>We have vacancy</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="thumbnail">
                        <img src="code.jpg" alt="San Francisco" width="400" height="300">
                        <p><strong>J 6</strong></p>
                        <p>We have vacancy</p>
                    </div>
                </div>
            </div><br>
            <h2 style="padding-bottom:20px;">View More Jobs <a href="taskboard.jsp">Click Here</a></h2>
        </div>

        <!-- 3rd block  -->

        <div class="container-fluid text-center" style="background-color:#DEB887;">
            <h1 style="padding-top:20px;"><strong>Pricing</strong></h1>
            <h3>Choose a payment plan that works for you</h3>
            <div class="row">
                <div class="col-sm-4 col-xs-12">
                    <div class="panel panel-default text-center">
                        <div class="panel-heading">
                            <h1>Basic</h1>
                        </div>
                        <div class="panel-body">
                            <h4><strong>20</strong> Lorem</h4>
                            <h4><strong>15</strong> Ipsum</h4>
                            <h4><strong>5</strong> Dolor</h4>
                            <h4><strong>2</strong> Sit</h4>
                            <h4><strong>Endless</strong> Amet</h4>
                        </div>
                        <div class="panel-footer">
                            <h1><strong>$19</strong></h1>
                            <h3>Per month</h3>
                            <button class="btn btn-lg">Buy Now</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="panel panel-default text-center">
                        <div class="panel-heading">
                            <h1>Pro</h1>
                        </div>
                        <div class="panel-body">

                            <h4><strong>20</strong> Lorem</h4>
                            <h4><strong>15</strong> Ipsum</h4>
                            <h4><strong>5</strong> Dolor</h4>
                            <h4><strong>2</strong> Sit</h4>
                            <h4><strong>Endless</strong> Amet</h4>

                        </div>
                        <div class="panel-footer">
                            <h1><strong>$19</strong></h1>
                            <h3>Per month</h3>
                            <button class="btn btn-lg">Buy Now</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="panel panel-default text-center">
                        <div class="panel-heading">
                            <h1>Premium</h1>
                        </div>
                        <div class="panel-body">
                            <h4><strong>20</strong> Lorem</h4>
                            <h4><strong>15</strong> Ipsum</h4>
                            <h4><strong>5</strong> Dolor</h4>
                            <h4><strong>2</strong> Sit</h4>
                            <h4><strong>Endless</strong> Amet</h4>
                        </div>
                        <div class="panel-footer">
                            <h1><strong>$19</strong></h1>
                            <h3>Per month</h3>
                            <button class="btn btn-lg">Buy Now</button>
                        </div>
                    </div>
                </div>
            </div>




        </div>

        <footer class="text-center container-fluid bg">
            <h2>I Am In Footer</h2> 
        </footer>
    </body>
</html>