<%-- 
    Document   : second
    Created on : Apr 15, 2019, 10:46:40 AM
    Author     : Mitul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>  
<body>  
 
    
<%   
  
String name=(String)session.getAttribute("uname");  
out.print("Hello "+name);  
 if (session.getAttribute("uname").equals(null)) { 
        out.print("Hi "+name);
    }
%>  

</body>  
</html>  