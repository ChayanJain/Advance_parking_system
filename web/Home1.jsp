<%-- 
    Document   : Home1
    Created on : 18 Apr, 2021, 12:52:27 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .ody{
                background-color: lightblue;
            }
            
        </style>
        <title>Home Page</title>
    </head>
    <body class="ody">
        <%@include file="headder.jsp" %>
         <%
            if(session.getAttribute("user")==null){
                response.sendRedirect("login.jsp");
            }
            
        %>

       <img src="images/1212.jpg"  alt="PUBG" width="100%" height="100%">
        <div style="padding: 50px; font-style: italic">  <h1>An integrated smart parking system to automate end-to-end parking processes.</h1>
      </div>
      <div  style= "background-color: white"
           class="container-fluid">
          
          <div class="row" >
          <div class="col-sm-4
                 ">
                <img src="images/2525.jpg"   alt="Bird" width="350" height="350" >
                </div>
        <div class="col-sm-8"style="padding-top: 80px;" >
           <h1> An Advance Parking Management System</h1>

Our Parking system is a unique parking management solution. Suitable for all types of parking areas, it digitizes end-to end parking processes including  multi-level parking.

It is integrated with visitor management systems and access control hardware. Extremely useful for shared parking spaces, the solution automates day-to-day processes such as  pay-and-park, auto-generating parking tickets, levying penalties, and many more.
   
        </div> </div></div>
    
       <div class="container-fluid  " style="padding-top:30px;padding-bottom:30px; ">
           <div style="padding-left:300px; font-style:oblique  "  > <h1>Top Features of Our Smart Parking System</h1></div>
      
     
      <div class="row" style="padding-top:30px; padding-bottom:30px;" > 
          <div class="col-sm-4">
          <div class="card">
             <div class="card-header text-center"><h3>Slots Per Vehicle Type</h3></div>
             <div class="row"  style="padding-top:30px"><div class="col-sm-4" style="padding-left:50px; padding-bottom:30px;" >
                      <img src="images/card1.png" class="rounded-circle" alt="Bird" width="80" height="80" ></div>
                <div class="col-sm-8">Allocate slots as per two-wheeler and four-wheeler vehicles to utilise all available space.</div>
              </div></div></div>
           
        
           <div class="col-sm-4">
          <div class="card">                   
             <div class="card-header text-center "> <h3> Auto-Generated Passes</h3></div>
              <div class="row"  style="padding-top:30px"><div class="col-sm-4 "  style="padding-left:50px; padding-bottom: 30px;">
                <img src="images/card2.png" class="rounded-circle" alt="Bird" width="80" height="80" ></div>
                <div class="col-sm-8">QR code-based passes are instantly auto-generated for a visitor.</div>
              </div></div></div>
         
          
            <div class="col-sm-4">
          <div class="card">
             <div class="card-header text-center"> <h3>On-Spot Or Monthly Pay</h3></div>
              <div class="row"  style="padding-top:30px"><div class="col-sm-4"  style="padding-left:50px; padding-bottom: 30px;">
                <img src="images/card3.png" class="rounded-circle" alt="Bird" width="80" height="80" ></div>
                <div class="col-sm-8">Parking passes generated can be on pay-&-park or a monthly pay basis.</div>
              </div></div></div>
          

      </div>
      
      </div>
        <div  style= "background-color: white"
           class="container-fluid">
         <div style="padding-top: 80px; padding-bottom: 30px;  font-style: italic" >
            <div style="padding-left:200px; font-style:oblique  "  >   <h1> Advance Parking Management System - At A Glance</h1></div>

<br>Most parking spaces, including MLCP buildings, are manually managed. This makes managing multi-tenant, multi-level car parking chaotic - a headache for parking lot owners and providers. <br>

<br>Advance parking management system digitizes the end-to-end management of parking spaces and all parking processes related to visitors, vehicles, & payments.<br>

<br>It eliminates manual monitoring and tracking of vehicles.  With Advance  parking management system, you can define and customize areas like paid, visitor, staff, tenants, etc. <br>

<br>Allocation of slots becomes easy. Live countdown of occupied versus unoccupied slots, filled versus unfilled slots, etc. can be displayed on a LED screen and on the phone.<br>
         </div></div>
       <div class="container-fluid" style="padding-top:30px; padding-bottom: 30px">
           <div style="padding-left:300px; font-style:oblique  "  > <h1>Why Advance Parking Management System?</h1></div>
      
            <div class="row" style="padding-top:30px;" > 
          <div class="col-sm-4">
          <div class="card">
             <div class="card-header text-center"><h3>Easy to Use</h3></div>
             <div class="row"  style="padding-top:30px"><div class="col-sm-4" style="padding-left:50px;  padding-bottom: 30px;" >
                      <img src="images/card4.png" class="rounded-circle" alt="Bird" width="80" height="80" ></div>
                <div class="col-sm-8">Manage the entire parking area using your handheld device. No training required.</div>
              </div></div></div>
           
        
           <div class="col-sm-4">
          <div class="card">
             <div class="card-header text-center"> <h3> Foolproof</h3></div>
              <div class="row"  style="padding-top:30px"><div class="col-sm-4 "  style="padding-left:50px;  padding-bottom: 30px;">
                <img src="images/card5.png" class="rounded-circle" alt="Bird" width="80" height="80" ></div>
                <div class="col-sm-8">It is based on cloud and mobile technology, and therefore reduces manual errors.</div>
              </div></div></div>
         
          
            <div class="col-sm-4">
          <div class="card">
             <div class="card-header text-center"> <h3>Customizable</h3></div>
              <div class="row"  style="padding-top:30px"><div class="col-sm-4"  style="padding-left:50px;  padding-bottom: 30px;">
                <img src="images/card6.png" class="rounded-circle" alt="Bird" width="80" height="80" ></div>
                <div class="col-sm-8">Features can be quickly and easily added or tailored to specific needs.</div>
              </div></div></div>
          

      </div>
           
           
           
       </div></body>
</html>
