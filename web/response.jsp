<%-- 
    Document   : response
    Created on : Aug 29, 2017, 9:28:52 PM
    Author     : jerem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>response | Basic Java Web Home Page</title>
    </head>
    <body>
        
        
        <% 
            //create generic object and get the user name from the controller
            Object message = request.getAttribute("nameMsg");
            //give the name string a default variable to show if the response had data
            String name = "no Data";
            //So long as it is not null .....
            if(message != null){
            //..... make the name string the value of the object and cast it to string.
            name = message.toString();
            }
            //Out put the data in a form that HTML can interpret.
            out.println("<h2>" + name + "</h2>");
        %>
        
    </body>
</html>
