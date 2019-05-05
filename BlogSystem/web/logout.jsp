<%-- 
    Document   : logout
    Created on : Apr 6, 2019, 10:57:31 PM
    Author     : Mitul
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recipes Blog System</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">    
       <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
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
          <a class='navbar-brand ' href='addUser.jsp'>
              <i class='nav-mobile' style='font-size:30px;color:burlywood;'><b>Registration</b></i> 
          </a>
         </li>
         <li> 
          <a class='navbar-brand ' href='login.jsp'>
          <i class='nav-mobile' style='font-size:30px;color:burlywood;'><b>Login</b></i> 
          </a>
         </li>
      </ul>
      </div>
 </nav>
        <%
            String msg=session.getAttribute("uname").toString();
            session.removeAttribute("uname");
            if(msg != null && !msg.isEmpty())
        {%>
            
      <%=  "<h3 style='font-family:cursive;color:skyblue;'>Loged Out Successfully</h3>"%> 
  <%}%>
  <%= "<br/><a class='btn' href='index.jsp'>Home</a>"%>
    </body>
</html>
