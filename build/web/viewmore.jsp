<%-- 
    Document   : viewmore
    Created on : Apr 29, 2021, 12:57:54 AM
    Author     : C J
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>

    <body style="background: -webkit-linear-gradient(left, #5DADE2 ,#FAD7A0);">
        <h1 style="color: white; padding-left:600px; padding-top: 50px; ">Welcome Admin!!</h1>
        <h6 style="color: white; padding-left:1200px; padding-bottom: 50px;"> <a href="login.jsp" >Logout</a></h6>
        <div class='container'>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>Vehical No.</th>
                        <th>Vehical Model</th>
                        <th>Plan </th>
                        <th>Validity</th>
                        <th>Contact</th>
                        <th>More</th>
                    </tr>
                </thead>

                <%
                    try {
                        Class.forName("com.mysql.jdbc.Driver");

                        Connection connection = DriverManager
                                .getConnection("jdbc:mysql://localhost:3306/demo?useSSL=false", "root", "root");

                        Statement Statement = connection
                                .createStatement();

                        //   System.out.println(preparedStatement);
                        ResultSet resultSet = Statement.executeQuery("select * from user  ");
                        //status = rs.next();
                        while (resultSet.next()) {

                %> 
                 <tbody>
                            <tr>

                                <td><%=resultSet.getString("user")%></td> 	
                                <td><%=resultSet.getString("vno")%></td>
                                <td><%=resultSet.getString("model")%></td>
                                <td>Not Activate</td>
                                <td>Nill</td>
                                <td><%=resultSet.getString("mobno")%></td>
                                <td> <a href="admin.jsp" >Back</a></td>
                            </tr>

                    <%} 

                        } catch (SQLException e) {
                            // process sql exception
                            // printSQLException(e);
                            e.printStackTrace();
                        }
                    %>


                        </tbody>
                    </table>
                </div>      



                </body>
                </html>
