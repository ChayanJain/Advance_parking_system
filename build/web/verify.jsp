<%-- 
    Document   : verify
    Created on : Apr 27, 2021, 4:02:58 PM
    Author     : C J
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>code verify Page</title>
    </head>
    <body>
      
        <span>We already send a verification  code to your email.</span>
        
        <form action="VerifyCode" method="post">
            <input type="text" name="authcode" >
            <input type="submit" value="verify">
        </form>
        
    </body>
</html>
