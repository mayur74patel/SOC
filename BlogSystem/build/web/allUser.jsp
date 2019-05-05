<%-- 
    Document   : allBlog
    Created on : 17 Mar, 2019, 6:15:01 PM
    Author     : Rp
--%>
<%@page import="org.datacontract.schemas._2004._07.iblogservice.MyUser"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.xml.datatype.DatatypeFactory"%>
<%@page import="javax.xml.namespace.QName"%>
<%@page import="javax.xml.bind.JAXBElement"%>
<%@page import="org.datacontract.schemas._2004._07.iblogservice.ArrayOfMyUser"%>
<%@page import="org.tempuri.IService1"%>
<%@page import="org.tempuri.Service1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">    
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <title>All Blogs</title>
    </head>
    <body  style="background-image:url('images/home1.jpg');background-repeat:repeat">
        
        <% Service1 service= new Service1();
           IService1 client= service.getBasicHttpBindingIService1();
           ArrayOfMyUser as=client.getUserAll();
            %>
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
              + "<table style='margin-left:4px;>"
            + "  <thead style='width:20px;'>"
               + " <tr style='background-color:#708090'>"
            
         + " <th scope='col'>ID  </th>"
                    +" <th scope='col'></th>"
         + " <th scope='col'>username</th>"
         + " <th scope='col'>password</th>"
         + " <th scope='col'>email</th>"
         +" <th scope='col'></th>"
         + "<th scope='col'>Update</th>"
       + "  </tr>"
     + "</thead>"
     + "<tbody>"               
            %>
        <%
        for(MyUser s : as.getMyUser())
    
    {%>
        <%=
                    "<tr>"
                    + "<td style='color:white;font-size:20px;'>"+ s.getId()+"</td>"
                     + "<td style='color:white;font-size:20px;'> </td>"      
                    + "<td style='color:white;font-size:20px;'>"+ s.getUsername().getValue()+"</td>"
                    + "<td style='color:white;font-size:20px;'>"+ s.getPassword().getValue()+"</td>"        
                     +"<td style='color:white;font-size:20px;'>"+s.getEmail().getValue()+"</td>"
                        +"<td>"
                        +"</td>"
                   
                    +"<td>"
                        +"<form  action='updateUser.jsp' method='post' >"    
                            + "<input type='hidden' name='para' value='"+s.getId()+"'>"
                            
                            + "<input type='hidden' name='para1' value='"+s.getUsername()+"'>"
                            + "<input type='hidden' name='para2' value='"+s.getPassword()+"'>"
                            + "<input type='hidden' name='para3' value='"+s.getEmail()+"'>"
                            + " <button class='btn waves-effect waves-light' type='submit' >View"
                        + " <i class='material-icons right'></i> "
                       + " </button> "
                       +"</form>"     
                    +"</td>"        
                   + "</tr>"
                    
        %>
    <% }
        %>
       <%= "</tbody>"
         + " </table>"
        %>    

        
    </body>
</html>
