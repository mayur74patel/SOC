<%-- 
    Document   : login
    Created on : Apr 6, 2019, 10:23:44 PM
    Author     : Mitul
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
        <title>Add Recipe Blog </title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">    
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body class="grey lighten-1 "  style="background-image:url('images/home1.jpg');background-repeat:repeat">
        
        <%
            
          Service1 service= new Service1();
          IService1 client= service.getBasicHttpBindingIService1();
          MyUser stu =new MyUser();
          String cstr=request.getParameter("tologin");
          String susername=request.getParameter("username");
          String spassword=request.getParameter("password");
          if(cstr != null && !cstr.isEmpty())
        {
            stu=client.login(susername,spassword);
            if(stu.getId()!= null && stu.getId() !=0 )//not NULL
            {
                String temp=request.getParameter("username");
                 session.setAttribute("uname", temp);
                response.sendRedirect("index.jsp");
            }
            else
            {
                response.sendRedirect("loginerror.jsp");
            }
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
            +"<form class='col s12' action='login.jsp' method='post'>"
            +" <div class='row' style='font-size:40px;font-family:cursive;color:pink;'style='color:white;font-size:20px;'>"
            +" Login"        
            +" </div>"        
            +" <div class='row'>"
             +  " <div class='input-field col s12'>"
                   +"<input placeholder='Username'  type='text' name='username' class='validate'style='color:white;font-size:20px;'required>"
                    +"<label for='blogger_name'style='color:white;font-size:20px;'>username</label>"
               +" </div>"
             +"</div>"
           
            +" <div class='row'>"
         +"<div class='input-field col s12' name='blog_subject'>"
            +"<input type='password' placeholder='password' style='color:white;font-size:20px;' id='textarea2' class='materialize-textarea' data-length='2000' name='password'required>"
            +"<label for='blogsubject'style='color:white;font-size:20px;'>password</label>"
          +"</div>"
            + "</div>"
                 
             + "<input type='hidden' name='tologin' value='1'>"
             
            + "  <button class='btn green' type='submit' name='action' >Submit "
            + " <i class='material-icons right'></i> "
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
