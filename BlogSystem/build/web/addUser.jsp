<%-- 
    Document   : AddBlog
    Created on : 17 Mar, 2019, 1:07:35 PM
    Author     : Rp
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.xml.datatype.DatatypeFactory"%>
<%@page import="javax.xml.namespace.QName"%>
<%@page import="javax.xml.bind.JAXBElement"%>
<%@page import="org.datacontract.schemas._2004._07.iblogservice.MyBlog"%>
<%@page import="org.datacontract.schemas._2004._07.iblogservice.MyUser"%>
<%@page import="org.tempuri.IService1"%>
<%@page import="org.tempuri.Service1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">    
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body class="grey lighten-1 "  style="background-image:url('images/home1.jpg');background-repeat:repeat">
        
        <%
            
          Service1 service= new Service1();
          IService1 client= service.getBasicHttpBindingIService1();
          MyUser stu =new MyUser();
          String cstr=request.getParameter("Adduser");
          String msg="";
          if(cstr != null && !cstr.isEmpty())
        {
         
        String susername=request.getParameter("username");
        session.setAttribute("uname", susername);
        JAXBElement <String> username;
        username= new JAXBElement(new QName("http://schemas.datacontract.org/2004/07/iblogservice","blogger_name"),String.class,susername);
        stu.setUsername(username);
        
        String spassword=request.getParameter("password");
        JAXBElement <String> password;
        password = new JAXBElement(new QName("http://schemas.datacontract.org/2004/07/iblogservice","blog_subject"),String.class,spassword);
        stu.setPassword(password);
        
        
        String semail=request.getParameter("email");
        JAXBElement <String> email;
        email = new JAXBElement(new QName("http://schemas.datacontract.org/2004/07/iblogservice","blog_details"),String.class,semail);
        stu.setEmail(email);
    
       String temp=request.getParameter("username");
          if(temp == "admin")
          {
               int admin;
               admin= 1;
               msg=client.insertUser(admin,susername, spassword, semail);
          }
          else
          {
               int admin;
                       admin= 0;
               msg=client.insertUser(admin,susername, spassword, semail);
          }
        
        }
        if(msg != null && !msg.isEmpty())
        {  
        

              session.setAttribute("UserResult", msg);
              response.sendRedirect("UserResult.jsp");
        
        %>
        
        
        
        
        <%}else{%>
        
        <%= 
            
  "<nav style='background-color: rgba(255, 255, 255,.90);'>"
   +" <div class='nav-wrapper'>"
   +"   <a href='index.jsp' style='margin-left:500px;font-size: 30px;color:burlywood;'>"+"<b>Online Food Receipes Blog</b>"+"</a>"
    +"  <ul id='nav-mobile' class='left hide-on-med-and-down'>"
    +"    <li> "
          + "<a class='navbar-brand' href='index.jsp'>"
  + "  <i class='material-icons' style='font-size: 30px;color:burlywood;'>home</i> "
 + "</a>"
          +"</li>"
     +" </ul>"
     +"<ul id='nav-mobile' class='right hide-on-med-and-down'>"
         +"<li>" 
          +"<a class='navbar-brand ' href='addUser.jsp'>"
              +"<i class='nav-mobile' style='font-size:30px;color:burlywood;'>"+"<b>"+"Registration</b>"+"</i> "
          +"</a>"
         +"</li>"
         +"<li>" 
          +"<a class='navbar-brand ' href='login.jsp'>"
              +"<i class='nav-mobile' style='font-size:30px;color:burlywood;'>"+"<b>"+"Login</b>"+"</i> "
          +"</a>"
         +"</li>"
      +"</ul>"
    +"</div>"
 +" </nav>"
        
    +    " <div >"
    + "<div >"
     +" <div style='background-color:#778899;height:630px;'>"
       +" <div class='card-content white-text'>"
         + "<div class='row center'>"
            +"<form class='col s12' action='addUser.jsp' method='post'>"
            +" <div class='row' style='font-size:40px;font-family:cursive;color:pink;'>"
            +" Registration"        
            +" </div>"        
            +" <div class='row'>"
             +  " <div class='input-field col s12'>"
                   +"<input placeholder='Username'  type='text' name='username' class='validate' style='color:white;font-size:20px;'required>"
                    +"<label for='username'style='color:white;font-size:20px;'>username</label>"
               +" </div>"
             +"</div>"
           
            +" <div class='row'>"
         +"<div class='input-field col s12'>"
            +"<textarea placeholder='password' id='textarea2' class='materialize-textarea' data-length='2000' name='password'style='color:white;font-size:20px;'required></textarea>"
            +"<label for='password'style='color:white;font-size:20px;'>password</label>"
          +"</div>"
            + "</div>"
                    
            +" <div class='row'>"
             +  " <div class='input-field col s12'>"
                   +"<input placeholder='email'  type='email' name='email' class='validate' style='color:white;font-size:20px;'required>"
                    +"<label for='blog_details'style='color:white;font-size:20px;'>email</label>"
               +" </div>"
             +"</div>"
             
          
             + "<input type='hidden' name='Adduser' value='1'>"
             
            + "  <button class='btn green' type='submit' name='action' >Submit "
            
            + " </button> "
                   
                    
           +" </form>"
                +"&nbsp;"
                     +"<div class='center'>"
                    + "<a href='index.jsp' class='waves-effect waves-light btn blue'>HOME</a>"
                +"</div>"
           + " </div> "
             + " </div> "
          + " </div> "
         + " </div> "
     +" </div>"     

            
             
                %>       
                <%}%>
                
           
    </body>
</html>
