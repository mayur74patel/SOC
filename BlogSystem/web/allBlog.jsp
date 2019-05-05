<%-- 
    Document   : allBlog
    Created on : 17 Mar, 2019, 6:15:01 PM
    Author     : Rp
--%>
<%@page import="org.datacontract.schemas._2004._07.iblogservice.MyBlog"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.xml.datatype.DatatypeFactory"%>
<%@page import="javax.xml.namespace.QName"%>
<%@page import="javax.xml.bind.JAXBElement"%>
<%@page import="org.datacontract.schemas._2004._07.iblogservice.ArrayOfMyBlog"%>
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
           ArrayOfMyBlog as=client.getAllBlog();
            %>
            <%=    "<nav style='background-color: rgba(255, 255, 255,.90);'>"
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
                    + " <div class='row'>"
                            + " <div class='input-field col s12'>"
                            + "<input type='text' class='center' id='myInput' onkeyup='myFunction()' placeholder='Search for Recipes Blog..' style='color:white;font-size:20px;'>"
                            + "<label for='search' style='color:white;font-size:20px;'></label>"
                            + " </div>"
                            + "</div>"
             + "<table style='margin-left:2px;' id='myTable'>"
            + "  <thead style='width:20px;'>"
               + " <tr style='background-color:#708090'>"
            
         + " <th scope='col'>ID  </th>"
                    +" <th scope='col'></th>"
         + " <th scope='col'>Blogger_name</th>"
         + " <th scope='col'>blog_subject</th>"
         + " <th scope='col'>blog_date</th>"
         + " <th scope='col' class='right-align'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </th>"  
         + " <th scope='col' >blog_details</th>"
         + "<th scope='col'>Update</th>"
       + "  </tr>"
     + "</thead>"
     + "<tbody>"               
            %>
        <%
        for(MyBlog s : as.getMyBlog())
    
    {%>
        <%=
                    "<tr>"
                    + "<td style='color:white;font-size:20px;'>"+ s.getId()+"</td>"
                     + "<td style='color:white;font-size:20px;'> </td>"      
                    + "<td style='color:white;font-size:20px;'>"+ s.getBloggerName().getValue()+"</td>"
                    + "<td style='color:white;font-size:20px;'>"+ s.getBlogSubject().getValue()+"</td>"        
                     +"<td style='color:white;font-size:20px;'>"+s.getBlogDate().getValue()+"</td>"
                        +"<td>"
                        +"</td>"
                   + "<td>"
                    
                    + "<div style='width:800px;height:100px;font-size:25px;color:white;'>"   
                    + "<div class='card-content left-align'>"
                         + s.getBlogDetails().getValue()
                      +"  </div> "   
                     +"  </div> "
                    +"</td>"
                    +"<td>"
                        +"<form  action='update.jsp' method='post' >"    
                            + "<input type='hidden' name='para' value='"+s.getId()+"'>"
                            
                            + "<input type='hidden' name='para1' value='"+s.getBloggerName()+"'>"
                            + "<input type='hidden' name='para2' value='"+s.getBlogSubject()+"'>"
                            + "<input type='hidden' name='para3' value='"+s.getBlogDate()+"'>"
                            + "<input type='hidden' name='para4' value='"+s.getBlogDetails()+"'>"
                            
                            
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

   <script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[6];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>      
    </body>
</html>
