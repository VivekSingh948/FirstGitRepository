<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- <link rel="stylesheet" href="css/showFeedback.css"> -->
<link rel="stylesheet" href="webjars/bootstrap/3.3.6/css/bootstrap.min.css">
<title>Feedback | Show Feedback</title>

</head>
<body>
<div><a href="/">Home</a></br></div>
<div class="container">
<table class="table table-striped">
<caption>Your Feedback Are:</caption>
<thead>
    <tr>
    <th>S.&nbsp;No.</th>
    <th>User&nbsp;Name</th>
    <th>Email</th>
    <th>Mobile No.</th>
    <th>Feedback</th>
    
    </tr>
    </thead>
    <tbody></tbody>
    <c:forEach var="bean" items="${requestScope['userFeedbackList']}"  varStatus="loopCounter">
    <tr>
    <td>${loopCounter.count  }</td>
    <td>${bean.name  }</td>
    <td>${bean.email  }</td>
    <td>${bean.mobile  }</td>
    <td>${bean.feedback  }</td>
    </tr>
    </c:forEach>
    </tbody>
    </table>
</div>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>