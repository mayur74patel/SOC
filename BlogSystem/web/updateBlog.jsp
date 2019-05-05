<%-- 
    Document   : updateBlog
    Created on : 18 Mar, 2019, 12:10:58 AM
    Author     : Rp
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.xml.datatype.DatatypeFactory"%>
<%@page import="javax.xml.datatype.XMLGregorianCalendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="javax.xml.namespace.QName"%>
<%@page import="javax.xml.bind.JAXBElement"%>
<%@page import="org.datacontract.schemas._2004._07.iblogservice.MyBlog"%>
<%@page import="org.tempuri.IService1"%>
<%@page import="org.tempuri.Service1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">    
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script>
        function myFunction() {
  var x = document.getElementById("myDIV");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
        </script>
    </head>
    <body  style="background-image:url('images/home1.jpg');background-repeat:repeat">
        <nav style="background-color: rgba(255, 255, 255,.90);">       
      <div >
      <a href='index.jsp' style="margin-left:500px;font-size: 30px;color:burlywood;"><b>Online Food Receipes Blog</b></a>
      <ul id='nav-mobile' class='left hide-on-med-and-down'>
        <li> 
          <a class='navbar-brand ' href='index.jsp'>
          <i class='material-icons' style='font-size: 30px;color:burlywood;'>home</i> 
          </a>
          </li>
      </ul>
      <ul id='nav-mobile' class='right hide-on-med-and-down'>
         <li> 
          <a class='navbar-brand ' href='logout.jsp'>
          <i class='nav-mobile' style='font-size:30px;color:burlywood;'><b>Logout</b></i> 
          </a>
         </li>
      </ul>
      </div>
        </nav>
        <%
          Service1 service= new Service1();
          IService1 client= service.getBasicHttpBindingIService1();
          MyBlog stu =new MyBlog();
          String cstr=request.getParameter("toupdate");
          
          String msg="";
          if(cstr != null && !cstr.isEmpty())
        {
          Integer sid = Integer.parseInt(request.getParameter("id"));
          stu.setId(sid);
          
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
      
        msg=client.updateBlog(sid,sblogger_name,sblog_subject,sblog_details);
        }
          if(msg != null && !msg.isEmpty())
        {  
        
              session.setAttribute("updateResult", msg);
              response.sendRedirect("updateResult.jsp");
        }
        
        %>
        <div class="collection" id="myDIV" style="display:none;" >
          <a href="#!" class="collection-item">Blog Updated Successfully.</a>
        </div>        
        <%
          
          MyBlog blog = new MyBlog();
          String str=request.getParameter("updateid");
          
          if(str != null && !str.isEmpty())
          {
            int id=Integer.parseInt(str);
            blog=client.getBlogById(id);
            
          }%>
        
        <%= 
            
            "<form action='updateBlog.jsp' method=''>" 
            +"<table>"
                        + "<tr>"
                        + "<td style='color:white;font-size:20px;'>"
                        + "Blog Id"
                        + "</td>"
                        + "<td style='color:white;font-size:20px;'>" 
                        + "<input disabled type='number' name='id' style='color:white;font-size:20px;' value='"+ blog.getId()+"'/>"
                        +"<input type='hidden' name='id' value='"+ blog.getId()+"'/>"
                        
                        
                        +"</td>"
                        +"</tr>"
                        
                        + "<tr>"
                        + "<td style='color:white;font-size:20px;'>"
                        + "Tile"
                        + "</td>"
                        + "<td style='color:white;font-size:20px;'>" 
                        + "<input type='text' style='color:white;font-size:20px;' name='blogger_name' value='"+ blog.getBloggerName().getValue()+"' />"
                        +"</td>"
                        +"</tr>"
                        
                        
                       + "<tr>"
                        + "<td style='color:white;font-size:20px;'>"
                        + "Date of Created"
                        + "</td>"
                        + "<td style='color:white;font-size:20px;'>" 
                        + "<input disabled type='text' style='color:white;font-size:20px;' name='blog_date' value='"+ blog.getBlogDate().getValue()+"'/>"
                        +"</td>"
                        +"</tr>"
                        
                        + "<tr>"
                        + "<td style='color:white;font-size:20px;'>"
                        + "Blog By "
                        + "</td>"
                        + "<td style='color:white;font-size:20px;'>" 
                        + "<input  type='text' style='color:white;font-size:20px;' name='blog_subject' value='"+ blog.getBlogSubject().getValue()+"' />"
                        +"</td>"
                        +"</tr>"
                        
                        
                        +"<tr>"
                        + "<td style='color:white;font-size:20px;'>"
                        + "Content"
                        + "</td>"
                        + "<td style='color:white;font-size:20px;'>" 
                       + "<input type='text' style='color:white;font-size:20px;' name='blog_details' value='"+ blog.getBlogDetails().getValue()+"'/>"
                        +"</td>"
                        +"</tr>"
                +"</table>"
                + "<input type='hidden' name='toAdd' value='1'>"
               
                + "<input type='hidden' name='toupdate' value='"+blog.getId()+"'>"
                  +"<input type='hidden' name='update' value='"+blog.getId()+"'>"              
                + "<input onclick='myFunction()' class='btn blue' type='submit' value='Confirm Updation'/></form>"
                + "</br>"
                    +"<a class='btn green lighten-2' href='allBlog.jsp'>All Recepies</a><br>"
                    + "</br>"
                +"<a class='btn' href='index.jsp'>HOME</a>"     
                %>       
        
        
    </body>
</html>
