package com.dao;
import com.bean.LoginBean;
//import static com.dao.LoginDao.validate;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;



public class LoginDao {

    public boolean validate(LoginBean loginBean) throws ClassNotFoundException {
        boolean status = false;

       Class.forName("com.mysql.jdbc.Driver");
 
        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/demo?useSSL=false", "root", "root");

          
            PreparedStatement preparedStatement = connection
            .prepareStatement("select * from login where username = ? and password = ? ")) {
            preparedStatement.setString(1, loginBean.getUsername());
            preparedStatement.setString(2, loginBean.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();
            if(rs.next()){
                
                String fname=rs.getString(3);
                String femail=rs.getString(4);
                
                  
                 
            }

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return status;
    }
    
     /*public static int validate (LoginBean loginBean) throws ClassNotFoundException {
        validate  val = new validate();

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/demo?useSSL=false", "root", "root");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection
            .prepareStatement("select * from demo.login where username = ? and password = ? ")) {
           // preparedStatement.setString(1, loginBean.getUsername());
            //preparedStatement.setString(2, loginBean.getPassword());

           // System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
             if(rs.next()){  
                val.setUsername(rs.getInt(1));  
                val.setPassword(rs.getString(2));  
               // e.setPassword(rs.getString(3));  
                //e.setEmail(rs.getString(4));  
                //e.setCountry(rs.getString(5));  
            }  
            
           // val = rs.next();
             connection.close();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return val;
    }*/

    public String register(LoginBean loginBean) throws ClassNotFoundException {
      //  boolean status = false;
        String result = "enter sussesfully";
      
        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/demo?useSSL=false", "root", "root");

          
            PreparedStatement preparedStatement = connection
            .prepareStatement("insert into login values (?,?,?,?)")) {
              preparedStatement.setString(1, loginBean.getName());
            preparedStatement.setString(2, loginBean.getEmail());
             preparedStatement.setString(3, loginBean.getUsername());
            preparedStatement.setString(4, loginBean.getPassword());

           // int i= preparedStatement.executeUpdate();
           preparedStatement.executeUpdate();
             
            //if (i!=0)  //Just to ensure data has been inserted into the database
             //return "SUCCESS"; 
//           System.out.println(preparedStatement);
//            ResultSet rs = preparedStatement.executeUpdate();
//            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
           // e,printStackTrace();
            result="sorry some problem occurs";
        }
        
        return result;
        
    
    
    } 
    
   
   /* public String vehicalregister(LoginBean loginBean) throws ClassNotFoundException {
      //  boolean status = false;
        String result = "enter sussesfully";
      
        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/demo?useSSL=false", "root", "root");

          
            PreparedStatement preparedStatement = connection
            .prepareStatement("insert into user values (?,?,?,?,?,?,?)")) {
              preparedStatement.setString(1, loginBean.getUser());
            preparedStatement.setString(2, loginBean.getNumber());
             preparedStatement.setString(3, loginBean.getCity());
            preparedStatement.setString(4, loginBean.getState());
             preparedStatement.setString(5, loginBean.getVno());
            preparedStatement.setString(6, loginBean.getEmail());
             preparedStatement.setString(7, loginBean.getAddress());

           // int i= preparedStatement.executeUpdate();
           preparedStatement.executeUpdate();
             
            //if (i!=0)  //Just to ensure data has been inserted into the database
             //return "SUCCESS"; 
//           System.out.println(preparedStatement);
//            ResultSet rs = preparedStatement.executeUpdate();
//            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
           // e,printStackTrace();
            result="sorry some problem occurs";
        }
        
        return result;
        
    
    
    } */
    
    
    
    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}