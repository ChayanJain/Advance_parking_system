<!DOCTYPE html>
<html lang="en">
    <title>Home</title>
    <meta charset="UTF-8">
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
           <script>
            // Used to toggle the menu on small screens when clicking on the menu button
            function myFunction() {
                var x = document.getElementById("navDemo");
                if (x.className.indexOf("w3-show") == -1) {
                    x.className += " w3-show";
                } else {
                    x.className = x.className.replace(" w3-show", "");
                }
            }
        </script>
    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
    <style>
        body,h1,h2,h3,h4,h5,h6 {
            font-family: "Lato", sans-serif
        }
        .w3-bar,h1,button {
            font-family: "Montserrat", sans-serif
        }
        .fa-anchor,.fa-coffee {
            font-size:200px
        }
        .s1{
            margin-top: 50px;
            background-color: tomato !important;
           
          
        }
        .s2{
            margin-top: 50px;
            background-color: tomato !important;
        }
    </style>
    <body>
        
  <%@include file="Navbar.jsp" %>
   
      

        <!-- Header -->
        <header class="w3-container  w3-center" style="padding:128px 16px; background-color: tomato; color: white;"  >
            <strong><h1 class="w3-margin w3-jumbo">Advance Parking System</h1></strong>
            <p class="w3-xlarge">A good and better way of Parking</p>
            <button class="w3-button w3-black w3-padding-large w3-large w3-margin-top">Get Started</button>
        </header>

        <!-- Work Row -->
        <div class="container">
            <div class="row px-1 mt-5 w3-margin-top w3-padding-64 w3-theme-l1" id="work"  >

                <div class="col-sm-4">
                    <h2>An Advance Parking Management System</h2>

                    <p>Our Parking system is a unique parking management solution. Suitable for all types of parking areas, it digitizes end-to end parking processes including multi-level parking. It is integrated with visitor management systems and access control hardware. Extremely useful for shared parking spaces, the solution automates day-to-day processes such as pay-and-park, auto-generating parking tickets, levying penalties, and many more.<p>
                    <p>And Why Advance Parking System....some key points is listed side-by on your right.<p>
                </div>


                <div class="col-sm-4">
                    <div class="w3-card " style="background-color: tomato" >
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="images/card4.png" alt="Snow" style="width:250px;">
                        <div class="w3-container">
                            <h3>Easy to Use</h3>
                            <h4>Manage the entire parking area using your hand held device. No training required.</h4>

                        </div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="w3-card " style="background-color:tomato">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <img src="images/card5.png" alt="Lights" style="width:250px;">
                        <div class="w3-container">
                            <h3>Foolproof</h3>
                            <h4>It is based on cloud and mobile technology, and therefore reduces errors.</h4>

                        </div>
                    </div>
                </div>

<!--                <div class="w3-quarter">
                    <div class="w3-card " style="background-color: tomato">
                        <img src="images/card6.png" alt="Mountains" style="width:100%">
                        <div class="w3-container">
                            <h3>Customizable</h3>
                            <h4>Features can be quickly and easily added or tailored to specific needs.</h4>

                        </div>
                    </div>
                </div>-->

            </div> 
        </div>

        
             
        <div class="container-fluid s1 text-center " style="padding-top:50px;padding-bottom:50px; ">
            <div class="container" style="background-color:white; padding:20px;" > 
            <div class="text-center" style=" font-style:oblique ; "  > 
                
                <h1>Top Features of Our Smart Parking System</h1></div>


            <div class="row" style="padding-top:30px; padding-bottom:30px;" > 
                <div class="col-sm-4">
                    <div class="card" style="background-color: tomato; color: white;">
                        <div class="card-header text-center"><h3>Slots Per Vehicle Type</h3></div>
                        <div class="row"  style="padding-top:30px"><div class="col-sm-4" style="padding-left:50px; padding-bottom:30px;" >
                                <img src="images/card1.png" class="rounded-circle" alt="Bird" width="80" height="80" ></div>
                            <div class="col-sm-8 text-center" style="padding-left:40px; padding-right:  40px;">Allocate slots as per two-wheeler and four-wheeler vehicles to utilise all available space.</div>
                        </div></div></div>


                <div class="col-sm-4">
                    <div class="card" style="background-color: tomato; color: white;">                   
                        <div class="card-header text-center "> <h3> Auto-Generated Passes</h3></div>
                        <div class="row"  style="padding-top:30px"><div class="col-sm-4 "  style="padding-left:50px; padding-bottom: 30px;">
                                <img src="images/card2.png" class="rounded-circle" alt="Bird" width="80" height="80" ></div>
                            <div class="col-sm-8 text-center"  style="padding-left:50px; padding-right: 50px;">QR code-based passes are instantly auto-generated for a visitor.</div>
                        </div></div></div>


                <div class="col-sm-4">
                    <div class="card" style="background-color: tomato; color:white ">
                        <div class="card-header text-center"> <h3>On-Spot Or Monthly Pay</h3></div>
                        <div class="row"  style="padding-top:30px; padding-bottom: 30px; ">
                            <div class="col-sm-4"  style="padding-left:50px;" >
                                <img src="images/card3.png" class="rounded-circle" alt="Bird" width="80" height="80" >
                            </div>
                            <div class="col-sm-8 text-center" style="padding-left:30px; padding-right:30px;">Parking passes generated can be on pay-&-park or a monthly pay basis.</div>
                        </div></div></div>


            </div>
        </div>
                 
       
         </div>







      

        <!-- Skills Section -->
     
        <div class="w3-container w3-margin-top w3-white w3-padding-64   ">
            <div class="container" style="background-color: tomato; padding-top: 50px; padding-bottom: 50px ">
            <div class="w3-row-padding" style="color: white;">
                <div class="w3-col m6">
                    <h3>Our Skills.</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod<br>
                        tempor incididunt ut labore et dolore.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod<br>
                        tempor incididunt ut labore et dolore.</p>
                </div>
                <div class="w3-col m6">
                    <p class="w3-wide"><i class="fa fa-camera w3-margin-right"></i>Photography</p>
                    <div class="w3-grey">
                        <div class="w3-container w3-black w3-center" style="width:40%">40%</div>
                    </div>
                    <p class="w3-wide"><i class="fa fa-desktop w3-margin-right"></i>Web Design</p>
                    <div class="w3-grey">
                        <div class="w3-container w3-black w3-center" style="width:95%">95%</div>
                    </div>
                    <p class="w3-wide"><i class="fa fa-photo w3-margin-right"></i>Photoshop</p>
                    <div class="w3-grey">
                        <div class="w3-container w3-black w3-center" style="width:25%">25%</div>
                    </div>
                </div>
            </div>
        </div>
        </div>
       
        
        

        <!-- Footer -->
        <footer style="">  
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

        <script>
            // Used to toggle the menu on small screens when clicking on the menu button
            function myFunction() {
                var x = document.getElementById("navDemo");
                if (x.className.indexOf("w3-show") == -1) {
                    x.className += " w3-show";
                } else {
                    x.className = x.className.replace(" w3-show", "");
                }
            }
        </script>

    </body>
</html>