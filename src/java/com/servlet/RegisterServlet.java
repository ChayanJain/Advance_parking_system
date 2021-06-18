/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import com.bean.LoginBean;
import com.dao.LoginDao;
import com.java.SendEmail;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author C J
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {
// private LoginDao loginDao;
//    @Override
//    public void init() {
//        loginDao = new LoginDao();
//    }
    
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      /*  response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
       
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        SendEmail sm= new SendEmail();
        String code=sm.getRandom();
         LoginBean loginBean = new LoginBean();
         loginBean.setName(name);
        loginBean.setEmail(email);
        loginBean.setCode(code);
       // loginBean.setPassword(password);
              boolean test=sm.sendEmail(loginBean);
              
           if(test){
                
                HttpSession session = request.getSession();
                session.setAttribute("authcode", loginBean);
                response.sendRedirect("verify.jsp");
                
//               // HttpSession session = request.getSession();
//                request.setAttribute("name", name);
//               request.setAttribute("email", email);
//                request.setAttribute("Message", "Register Succesful You can login now!!");
//                RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
//                rd.forward(request, response); 
                   // out.print(result);
               // response.sendRedirect("home.jsp");
            } else
                     out.printf("in else block");  
         
        }*/
     }
    
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       PrintWriter out = response.getWriter();
        int registerEmployeeId = 0;
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
       
         LoginBean loginBean = new LoginBean(name, email, username, password);
         LoginDao logindao=new LoginDao();
      
        try {
             
            String result=logindao.register(loginBean);
          
            
            if(result!=null){
                
               
                
               // HttpSession session = request.getSession();
                request.setAttribute("name", name);
               request.setAttribute("email", email);
                request.setAttribute("Message", "Register Succesful You can login now!!");
                RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                rd.forward(request, response); 
                   // out.print(result);
               // response.sendRedirect("home.jsp");
            } 
           
        }catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
            out.printf("in catch block");
        } 
       

    /*    try {
            registerEmployeeId = loginDao.register(loginBean);
            } catch (Exception e) {
            //e.printStackTrace();
            out.print("excepton error");
        }
        if(registerEmployeeId > 0) {
        request.setAttribute("name",loginBean.getName());
          request.setAttribute("email",loginBean.getEmail());
          request.setAttribute("username",loginBean.getUsername());
          request.setAttribute("password", loginBean.getPassword());
          

          RequestDispatcher requestDispatcher = request.getRequestDispatcher("home.jsp");
          requestDispatcher.forward(request, response);
        }
        else{
        out.print("else error");
        } */
// 
//            
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection con = DriverManager.getConnection(
//                    "jdbc:mysql://localhost:3306/demo?useSSL=false", "root", "root");
//
//            PreparedStatement ps = con.prepareStatement(
//                    "insert into login(name,email,username,password) values(?,?,?,?)");
//
//            ps.setString(1, name);
//            ps.setString(2, email);
//            ps.setString(3, username);
//            ps.setString(4, password);
//
//            int i = ps.executeUpdate();
//            if (i > 0) {
//                out.print("You are successfully registered...");
//            }
//            else
//                out.print(" registration FAIleD");
//                
//con.close();
//        } catch (ClassNotFoundException | SQLException e) {
//           // System.out.println(e2);
//           //  printSQLException(e);
//            e.printStackTrace();
//            // out.print(" registration FAIleD");
//        }
//out.close();
       /* LoginBean loginBean = new LoginBean();
        loginBean.setName(name);
        loginBean.setEmail(email);
        loginBean.setUsername(username);
        loginBean.setPassword(password);

        try {
            if (loginDao.register(loginBean)) {

                //response.sendRedirect("home.jsp");
                out.print("Succes register");
            } else {
               //                  request.setAttribute("errorMessage", "Invalid username or password");
                //  RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                //rd.forward(request, response); 

                out.print("fail");
            }

            /*  } catch (ClassNotFoundException e) {
             e.printStackTrace();
             }*/
        }

//    private void printSQLException(java.lang.Exception e) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }

    }

   /* @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>*/

