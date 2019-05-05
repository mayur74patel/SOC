<%-- 
    Document   : index
    Created on : 17 Mar, 2019, 12:55:17 PM
    Author     : Rp
--%>

<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">    
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Food Recepies</title>
    </head>
    <body style="background-image:url('images/home1.jpg');background-repeat:repeat">
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
       <% if (session.getAttribute("uname") == null) { %>
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
  <% } else {%>   
      
      <ul id='nav-mobile' class='right hide-on-med-and-down'>
         <li> 
          <a class='navbar-brand ' href='logout.jsp'>
          <i class='nav-mobile' style='font-size:30px;color:burlywood;'><b>Logout</b></i> 
          </a>
         </li>
         <%= "<li class='navbar-brand ' style='font-size:25px;color:skyblue;margin-right:19px;'>"%>
         <% String name=(String)session.getAttribute("uname");
         out.print("Welcome("+name+")</br>");   %>
         <%="</li>"
         %>
      </ul>
    </div>
 </nav>
      </br></br></br></br></br></br>
      <ul class="collection with-header center " style="margin: auto;width: 30%;color:white;background-color: rgba(255, 255, 255,.1);border: black;">
          <li class="collection-header" style="background-color: rgba(255, 255, 255,.0);color: cadetblue"><h4>Food Recepies Blog</h4></li>
          <% if (session.getAttribute("uname").equals("admin")) { 
          %>
            <li class="collection-item" style="background-color: rgba(255, 255, 255,.0);border: black;font-size: 20px;"><div style="background-color: rgba(255, 255, 255,.0);">Show All Blogs<a href="allBlog.jsp" class="secondary-content"><i class="material-icons">Show</i></a></div></li>
        <li class="collection-item" style="background-color: rgba(255, 255, 255,.0);border: black;font-size: 20px;"><div style="background-color: rgba(255, 255, 255,.0);">Show All Users<a href="allUser.jsp" class="secondary-content"><i class="material-icons">Show</i></a></div></li>
        <% }  else {%>
    <li class="collection-item" style="background-color: rgba(255, 255, 255,.0);border: black;font-size: 20px;"><div>Add New Recepies<a href="addBlog.jsp" class="secondary-content"><i class="material-icons">Add</i></a></div></li>
        
        <li class="collection-item" style="background-color: rgba(255, 255, 255,.0);border: black;font-size: 20px;"><div>Show all Recepies(User)<a href="showBlog.jsp" class="secondary-content"><i class="material-icons">Show</i></a></div></li>
<!--         <li class="collection-item" style="background-color: rgba(255, 255, 255,.0);border: black;font-size: 20px;"><div>Show All Recepies(Admin)<a href="allBlog.jsp" class="secondary-content"><i class="material-icons">send</i></a></div></li>
        <li class="collection-item" style="background-color: rgba(255, 255, 255,.0);border: black;font-size: 20px;"><div>Show All Users<a href="allUser.jsp" class="secondary-content"><i class="material-icons">send</i></a></div></li>    -->
    
<% } %>
<% } %>
      <% if (session.getAttribute("uname") == null) { %>   
      </ul> 
                        <section>		
                            <div class="container">
					<div>
						<div >
                                                    <h6 style="font-family: cursive;font-size: 30px;color: deeppink">New Recipes to Cook Food</h6>
							<h1 style="font-family: cursive;color: deeppink">Delicious Recipes</h1>
							<p style="font-family: cursive;font-size: 30px;color: deeppink">
								Our Website will help in making Delicious Food New Recipes which add By Users and also see added Recepies blog.
							</p>
                                                        <p style="font-family: cursive;font-size: 30px;color: deeppink">
								This projects enables users to learn and cook various types of recipes. This website provides newest and most popular recipe details. 
							</p>
							<a href="showBlog.jsp" class="btn deeppink">Show All Receipes</a>
						</div>
					</div>
				</div>		
                            
			</section>
    <% } %> 
    </body>
</html>