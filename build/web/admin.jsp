<%-- 
    Document   : demoprofile
    Created on : Apr 17, 2021, 1:47:21 PM
    Author     : C J
--%>

<%@page import="javax.mail.Session"%>
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
        <!------ Include the above in your HEAD tag ---------->

    </head>
    <body style="background: -webkit-linear-gradient(left, #5DADE2 ,#FAD7A0);">

        <h1 style="color: white; padding-left:600px; padding-top: 50px; ">Welcome Admin!!</h1> 
        <h6 style="color: white; padding-left:1200px; padding-bottom: 50px;"> <a href="login.jsp" >Logout</a></h6>

        <div class='container'> 
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>username</th>
                        <th>Email</th>
                        <th>More Details</th>
                    </tr>
                </thead>

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
                        ResultSet resultSet = Statement.executeQuery("select * from login");
                        //status = rs.next();
                        while (resultSet.next()) {

                %> 

                <tbody>
                    <tr>

                        <td><%=resultSet.getString("name")%></td>				
                        <td><%=resultSet.getString("username")%> </td>
                        <td><%=resultSet.getString("email")%></td>
                        <td> <a href="viewmore.jsp" >View More</a></td>

                    </tr> 
                    <% }
                        } catch (SQLException e) {
                            e.printStackTrace();

                  }%>

                </tbody>
            </table>


        </div>      



    </body>
</html>
