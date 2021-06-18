<!DOCTYPE html>

<head>
    <meta charset="ISO-8859-1">
    <title>LOGIN PAGE</title>
       
    
    
    <%@include file="bs.jsp"%>
    <style>
        .bg {

            background: rgb(0, 0, 0); /* Fallback color */
            background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
            color: #f1f1f1;
            // background-color: white;
            color: white;
            display:flex;
            justify-content:center;	
            margin-top: 150px;
            padding-bottom: 50px;
            padding-top: 50px;
            border-radius:12px;


        }

        .jumb {
            margin-right: 50px;
            margin-left: 50px;

            background-repeat:"no-repeat";
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
            background: -webkit-linear-gradient(left, #ff726f, #00c6ff);
           // background-image:url('images/bb.jpg'); 
            background-repeat:no-repeat;
            background-size: 1600px 1000px;


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
        .vl {
            position: absolute;
            left: 50%;
            transform: translate(-50%);
            border: 1px solid #ddd;
            height: 300px;
            margin-top: 10px;
        }
        .fb {
            background-color: #3B5998;
            color: white;

        }

        .twitter {
            background-color: #55ACEE;
            color: white;

        }

        .google {
            background-color: #dd4b39;
            color: white;

        }
        .btn.social{
            margin-top: 100px;
        }
        .btn {
            width: 100%;
            padding: 5px;
            border: none;
            border-radius: 4px;
            margin: 10px 0;
            opacity: 0.85;
            display: inline-block;
            font-size: 17px;
            line-height: 20px;
            text-decoration: none; /* remove underline from anchors */
        }

    </style>


</head>
<body class="body ">

    <div class="container ">


        <div class="card col-lg-10 col-md-7 col-sm-8 col-12 mx-auto bg ">

            <form action="LoginServlet"  method="post" class="needs-validation"  novalidate autocomplete="off">
                <h1 class="text-center pb-5">You Can Login Here</h1>
                <div class="row">

                    <div class="vl">
                        <span class="vl-innertext">&nbsp;&nbsp;</span>
                    </div>
                    <div class="col-sm-6">
                        <div class="social">
                            <div class="center" style="margin-top:10px">
                                <br><a href="#" class="fb btn">
                                    <h3>   <i class="fa fa-facebook fa-fw "></i> Login with Facebook</h3>
                                </a>
                                <br>
                                <a href="#" class="twitter btn">
                                    <h3>   <i class="fa fa-twitter fa-fw"></i>Login with Twitter</h3>
                                </a><br>
                                <a href="#" class="google btn"><h3><i class="fa fa-google fa-fw">
                                        </i> Login with Google+</h3>
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6">

                     <!-- <p class="text-center text-danger"> ${errorMsg}</p> -->
                      <h3 class="text-center text-danger"> <%
    if(null!=request.getAttribute("errorMessage"))
    {
        out.println(request.getAttribute("errorMessage"));
    }
%> </h3>     
 <h3 class="text-center text-success"> <%
    if(null!=request.getAttribute("Message"))
    {
        out.println(request.getAttribute("Message"));
    }
%> </h3> 

                        <div class="jumb ">
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
                                <input type="password"class="form-control shadow" id="pwd" placeholder="Enter password"
                                       name="password" required>

                                <div class="invalid-feedback">Enter password is wrong.</div>
                            </div>
                            <div class="form-group form-check">
                                <label class="form-check-label"> <input
                                        class="form-check-input" type="checkbox" name="rememberme" >
                                    Remember Password

                                </label> 
                                <span style="padding-left:10px"><a href=#>Forgot Password?</a></span>   
                            </div>
                            <button type="submit" value="login" name="button" class="btn btn-primary ">Login</button>


                            <div class="border border-bottom-0 border-left-0 border-right-0 mt-3">
                                <br><p >Don't have an account?
                                    <a href="register.jsp">Sign up</a>
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

