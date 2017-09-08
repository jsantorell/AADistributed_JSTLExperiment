<%-- 
    Document   : index
    Created on : Sep 7, 2017, 7:31:59 PM
    Author     : jerem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"
     prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
    prefix="fn" %>


<html>
<head><title>Hello</title></head>
<form method="POST" action="">
<input type="text" name="username" size="25">
<p></p>
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</form>

<c:if test="${fn:length(param.username) > 0}" >
  <%@include file="response.jsp" %>
</c:if>
</body>
</html>


<c:forEach var="book" begin="0" items="${books.rows}">
    <h2>${book.title}</h2>
    &nbsp;<fmt:message key="By"/> <em>${book.firstname}
    ${book.surname}</em>&nbsp;&nbsp;
    (${book.year})<br> &nbsp; <br>
    <h4><fmt:message key="Critics"/></h4>
    <blockquote>${book.description}</blockquote>
    <h4><fmt:message key="ItemPrice"/>:
     <fmt:formatNumber value="${book.price}" type="currency"/>
     </h4>
</c:forEach>
    
    
    