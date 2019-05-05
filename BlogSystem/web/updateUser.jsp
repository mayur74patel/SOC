<%-- 
    Document   : updateUser
    Created on : Apr 7, 2019, 5:23:35 PM
    Author     : Mitul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.xml.datatype.DatatypeFactory"%>
<%@page import="javax.xml.datatype.XMLGregorianCalendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="javax.xml.namespace.QName"%>
<%@page import="javax.xml.bind.JAXBElement"%>
<%@page import="org.datacontract.schemas._2004._07.iblogservice.MyUser"%>
<%@page import="org.tempuri.IService1"%>
<%@page import="org.tempuri.Service1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">    
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body  style="background-image:url('images/home1.jpg');background-repeat:repeat">
        <%
            Service1 service= new Service1();
            IService1 client= service.getBasicHttpBindingIService1();
            MyUser blog =new MyUser();
            String sid=request.getParameter("para");
            
             
             if(sid != null && !sid.isEmpty())
          {
                 int id=Integer.parseInt(sid);
                  blog=client.getUserById(id);
                 
               
                
          }%>
        <%
       /*&& blog.getBloggerName()!=null && blog.getBlogSubject() != null && blog.getBlogDate()!= null && blog.getBlogDetails() != null*/
            if(blog.getId()!= null && blog.getId() !=0 )//not NULL
            {    %> 
                <%=   "<nav style='background-color: rgba(255, 255, 255,.90);'>"
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
                    + "<br><br>"
                        + "<table class='table table-hover'>"
                        + "<tr>"
                        + "<td style='color:white;font-size:20px;'>"
                        + "Blog Id"
                        + "</td>"
                        + "<td style='color:white;font-size:20px;'>" 
                        + blog.getId()
                        +"</td>"
                        +"</tr>"
                        
                        + "<tr>"
                        + "<td style='color:white;font-size:20px;'>"
                        + "Blog Name"
                        + "</td>"
                        + "<td style='color:white;font-size:20px;'>" 
                        + blog.getUsername().getValue()
                        +"</td>"
                        +"</tr>"
                        
                        
                        
                        +  "<tr>"
                        + "<td style='color:white;font-size:20px;'>"
                        + "Blog is Subject by"
                        + "</td>"
                        + "<td style='color:white;font-size:20px;'>" 
                        + blog.getPassword().getValue()
                        +"</td>"
                        +"</tr>"
                        
                        + "<tr>"
                        + "<td style='color:white;font-size:20px;'>"
                        + "Date of created"
                        + "</td>"
                        + "<td style='color:white;font-size:20px;'>" 
                        +blog.getEmail().getValue()
                        +"</td>"
                        +"</tr>"
                       
                        
                +"</table>"
                
                                
                  +"<form action='deleteUser.jsp' class='center' method=''>"   
                  +"<input type='hidden' name='deleteid1' value='"+blog.getId()+"'>"              
                + "<input type='submit' class='btn red center' value='Delete Record'/></form>"           
                  +"<br><a class='btn green lighten-2' style='margin-left:680px' href='allUser.jsp'>All Users</a><br>"
                  +"<br><a class='btn' style='margin-left:680px' href='index.jsp'>HOME</a>" 
                %>       
           
         <% 
          
              }
          
           

            else//not found
            {%>
            <%=
                "<br><h4>Student Not Found.</h4>"
                 +"<br><a class='btn' href='index.jsp'>HOME</a>"     
            %>
        <%
            }
        
        %>
    </body>
</html>