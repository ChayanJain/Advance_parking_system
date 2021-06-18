package com.servlet;

import com.bean.LoginBean;
import com.dao.LoginDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import net.javaguides.login.bean.LoginBean;
//import net.javaguides.login.database.LoginDao;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1  ;
    private LoginDao loginDao;
    private Object response;

    @Override
    public void init() {
        loginDao = new LoginDao();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        PrintWriter out;
        out = response.getWriter();
      //  String uname,pass;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
         String name = request.getParameter("name");
        
        LoginBean loginBean = new LoginBean();
        loginBean.setUsername(username);
        loginBean.setPassword(password);

        try {
          
                if (loginDao.validate(loginBean))
                {
                    
                    
                    HttpSession session = request.getSession();
            
                session.setAttribute("user", username);
                 response.sendRedirect("Home2.jsp");
                //response.sendRedirect("home.jsp?username=\"username");
                //out.print("Succes");
            } else 
                    if (username.equals("admin")||password.equals("admin")) {
                
                          response.sendRedirect("admin.jsp");
                        
                              }
                    else{
               
              
                  request.setAttribute("errorMessage", "Invalid username or password");
                RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                
                rd.forward(request, response); 
                
                // out.print("fail");
            }
            
          /*  if(rs.next())
            {
                dbuname= rs.getString("username");
                dbpass= rs.getString("password");
            }*/
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } 
    }}