<%-- 
    Document   : index
    Created on : Sep 7, 2017, 7:31:59 PM
    Author     : jerem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<html>
    <head><title>Hello</title></head>

    <!-- Iterating through the Alphabet -->

    <c:set var="alphabet">A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z</c:set>

    <c:forTokens items="${alphabet}" delims="," var="letter">
        <input type="text" value="${letter}" disabled>
    </c:forTokens>
    <p><a href="ExpirementController?action=random"> Click here for random Number </a></p>

    <c:set var="randNum" scope="session" value="${rNumber}" />
        
        <c:choose>

            <c:when test="${status.count %2 == 0 }">
                <p> Divisible by 2 : ${rNumber} </p>

                <br/>
            </c:when>

            <c:when test="${status.count %5 == 0 }">
                <p > Divisible by 5 : ${rNumber} </p>
                <br/>
            </c:when>

            <c:otherwise>
                <p> Neither divisible by 2 nor 5 : ${rNumber} </p><br/>
            </c:otherwise>

        </c:choose>




        <form method="POST" action="AnotherExpirementController">

            Try to Guess A Number Between 1 and 10: 
            <input type="text" value="" name="userInput">
            <input type="hidden" value="${rNumber}" name="randomOutput">
            <input type="submit" name="submit" value="submit">
        </form>
            <p>rando: ${randOut}</p>
           
        <c:if test="${randOut > userGuess}">

            <p>To High</p>

        </c:if>
        <c:if test="${randOut < userGuess}">

            <p>To Low</p>

        </c:if>
        <c:if test="${randOut == userGuess}">

            <p>You guessed Correctly</p>

        </c:if>



