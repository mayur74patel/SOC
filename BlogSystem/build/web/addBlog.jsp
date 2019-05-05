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
        <title>Add Recipe Blog </title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">    
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body class="grey lighten-1 " style="background-image:url('images/home1.jpg');background-repeat:repeat">
        
        <%
            
          Service1 service= new Service1();
          IService1 client= service.getBasicHttpBindingIService1();
          MyBlog stu =new MyBlog();
          String cstr=request.getParameter("toAdd");
          String msg="";
          if(cstr != null && !cstr.isEmpty())
        {
          
        String sblogger_name=request.getParameter("blogger_name");
        JAXBElement <String> blogger_name;
        blogger_name= new JAXBElement(new QName("http://schemas.datacontract.org/2004/07/iblogservice","blogger_name"),String.class,sblogger_name);
        stu.setBloggerName(blogger_name);
        
        String sblog_subject=request.getParameter("blog_subject");
        JAXBElement <String> blog_subject;
        blog_subject = new JAXBElement(new QName("http://schemas.datacontract.org/2004/07/iblogservice","blog_subject"),String.class,sblog_subject);
        stu.setBlogSubject(blog_subject);
        
        
        String sblog_details=request.getParameter("blog_details");
        JAXBElement <String> blog_details;
        blog_details = new JAXBElement(new QName("http://schemas.datacontract.org/2004/07/iblogservice","blog_details"),String.class,sblog_details);
        stu.setBlogDetails(blog_details);
    
      
        msg=client.insertBlog(sblogger_name, sblog_subject, sblog_details);
        }
        if(msg != null && !msg.isEmpty())
        {  
        

              session.setAttribute("addResult", msg);
              response.sendRedirect("addResult.jsp");
        
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
          +"<a class='navbar-brand ' href='logout.jsp'>"
              +"<i class='nav-mobile' style='font-size:30px;color:burlywood;'>"+"<b>"+"Logout</b>"+"</i> "
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
            +"<form class='col s12' action='addBlog.jsp' method='post'>"
            +" <div class='row' style='font-size:40px;font-family:cursive;color:pink;'>"
            +" Add New Receipes"        
            +" </div>"        
            +" <div class='row'>"
             +  " <div class='input-field col s12'>"
                   +"<input placeholder='Name Of Recipe Blogger'  type='text' name='blogger_name' class='validate'style='color:white;font-size:20px;'required>"
                    +"<label for='blogger_name'style='color:white;font-size:20px;'>Blogger_name</label>"
               +" </div>"
             +"</div>"
           
            +" <div class='row'>"
         +"<div class='input-field col s12' name='blog_subject'>"
            +"<textarea placeholder='Recipe Subject' id='textarea2' class='materialize-textarea' data-length='2000' name='blog_subject'style='color:white;font-size:20px;'required></textarea>"
            +"<label for='blogsubject'style='color:white;font-size:20px;'>Recipe_subject</label>"
          +"</div>"
            + "</div>"
                    
            +" <div class='row'>"
             +  " <div class='input-field col s12'>"
                   +"<input placeholder='Recipe_details'  type='text' name='blog_details' class='validate' style='color:white;font-size:20px;'required>"
                    +"<label for='blog_details'style='color:white;font-size:20px;'>Recipe details</label>"
               +" </div>"
             +"</div>"
             
          
             + "<input type='hidden' name='toAdd' value='1'>"
             
            + "  <button class='btn waves-effect waves-light' type='submit' name='action' >Submit "
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
