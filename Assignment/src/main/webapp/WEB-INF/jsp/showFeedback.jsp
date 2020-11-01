<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/showFeedback.css">
<title>Feedback | Show Feedback</title>

</head>
<body>
<div><a href="/">Home</a></br></div>
<div>
<table class="showData">
    <tr>
    <th>S.&nbsp;No.</th>
    <th>User&nbsp;Name</th>
    <th>Email</th>
    <th>Mobile No.</th>
    <th>Feedback</th>
    
    
    
    </tr>
    
    <c:forEach var="bean" items="${requestScope['userFeedbackList']}"  varStatus="loopCounter">
    
    
    
    <tr>
    <td>${loopCounter.count  }</td>
    <td>${bean.name  }</td>
    <td>${bean.email  }</td>
    <td>${bean.mobile  }</td>
    <td>${bean.feedback  }</td>
    
                    
    </tr>
    
    </c:forEach>
    </table>
</div>
</body>
</html>