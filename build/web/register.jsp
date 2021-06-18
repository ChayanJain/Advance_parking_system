<!DOCTYPE html>
<html lang="en">
    <head>
        <title>signup Example</title>
        <meta charset="utf-8">
        <%@include file="bs.jsp"%>

        <style>
            .bg {


                //background-color: white !important;
                color: black;
                display:flex;
                justify-content:center;	
                margin-top: 150px;
                margin-bottom: 150px;
                padding-bottom: 50px;
                padding-top: 50px;
                border-radius:12px;
                background: rgb(0, 0, 0); /* Fallback color */
                background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
                color: #f1f1f1;	

            }

            .jumb {
                margin-right: 50px;
                margin-left: 50px;

                background-repeat:no-repeat;
            }


            .form-control {
                padding-left: 2.375rem;
            }
            .form-control-icon {
                position: absolute;
                z-index: 2;
                display: block;
                width: 2.375rem;
                height: 2.375rem;
                line-height: 2.375rem;
                text-align: center;
                pointer-events: none;
                color: #aaa;
            }
            .body{
                background-image:url('images/code.jpg'); 
                background-repeat:no-repeat;
                background-size: 1700px 1000px;



            }
            .border {
                display: inline-block;
                width: 450px;
                height: 50px;

            }

            .btn:focus,
            .btn:active{
                box-shadow:none!important;

            }
            .btn:hover{
                box-shadow: 0px 1px 3px rgba(0,0,0,0.2) !important;
                //not working
            }


        </style>


    </head>
    <body class="body ">
        <div class="container ">
            <div class="card col-lg-6 col-md-7 col-sm-8 col-12 mx-auto bg ">
                <div class="">
                    <form action="RegisterServlet"  method="post" class="needs-validation" onsubmit="return-false;" novalidate>
                        <h1 class="text-center pb-5">You Can signup Here</h1>
                        <div class="jumb ">
                            <div >
                                 <label for="usr">Name:</label> 
                                                 <span class="fa fa-user-circle form-control-icon"></span>
                                  <input type="text"class="form-control shadow" id="name" placeholder="Enter Full Name"
                                                 name="name" required>				
                                <div class="invalid-feedback">Please enter valid Name.</div>
                            </div>


                            <div class="form-group">
                                <label for="usr">Email:</label> 
                                <span class="fa fa-envelope form-control-icon"></span>
                                <input type="email"class="form-control shadow" id="name" placeholder="Enter Email"
                                       name="email" required>					
                                <div class="invalid-feedback ">Please enter valid email.</div>
                            </div>


                            <div class="form-group">
                                <label for="usr">Username:</label> 
                                <span class="fa fa-user form-control-icon"></span>
                                <input type="text"class="form-control shadow" id="usr" placeholder="Enter username"
                                       name="username" required>						

                                <div class="invalid-feedback">Please enter valid username.</div>
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label> 
                                <span class="fa fa-lock form-control-icon"></span>
                                <input type="password"class="form-control shadow" id="pwd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Enter password"
                                       name="password" required>

                                <div class="invalid-feedback">Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters .</div>
                            </div>
                            <div class="form-group form-check">
                                <label class="form-check-label"> <input
                                        class="form-check-input" type="checkbox" name="remember" >
                                    Remember Password.

                                </label>
                            </div>
                            <div> <p > <button type="submit" class="btn btn-primary ">Sign Up</button>
                                    <!--    <div class="border border-bottom-0 border-left-0 border-right-0 mt-3">-->
                                    <span style="padding-left:100px">Already have an account?
                                        <a href="login.jsp">Login</a></span>
                                </p>
                            </div>


                        </div>





                    </form></div>


            </div>

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
    </body>
</html>
