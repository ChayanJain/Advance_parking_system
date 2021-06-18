/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import javax.mail.Part;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author C J
 */
@WebServlet(name = "vehicalser", urlPatterns = {"/vehicalser"})

public class vehicalser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        //HttpSession session = request.getSession();
        
        String number = request.getParameter("Number");
        String city = request.getParameter("City");
        String state = request.getParameter("State");
        String vno = request.getParameter("Phone");
        String email = request.getParameter("Email");
        String address = request.getParameter("Address");
        String model = request.getParameter("model");
       // String photo = request.getParameter("RcCard");

       

        try {

           
            HttpSession session = request.getSession();
           // ResultSet rs=null;
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?useSSL=false", "root", "root");
            PreparedStatement preparedstatement = conn.
                    prepareStatement("insert into user(user,mobno,city,state,vno,address,model) values(?,?,?,?,?,?,?)");

            preparedstatement.setString(1, (String) session.getAttribute("user"));
            preparedstatement.setString(2, number);
            preparedstatement.setString(3, city);
            preparedstatement.setString(4, state);
            preparedstatement.setString(5, vno);
            preparedstatement.setString(6, address);
            preparedstatement.setString(7, model);

           

            int i = preparedstatement.executeUpdate();
            if (i != 0) {
                request.setAttribute("Message", "Register Succesful !!");
                RequestDispatcher rd = request.getRequestDispatcher("/profilepage1.jsp");
                rd.forward(request, response);
            } else {
                out.println("SORRY  DATA NOT inserted!");
            }

        } catch (Exception e) {
            out.print(e);
            e.printStackTrace();
        } 

        }

    }
