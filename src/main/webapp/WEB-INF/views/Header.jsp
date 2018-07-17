<%-- <%@ page language="java" contentType="text/html"%>
 --%><%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">FashWorld</a>
    </div>
    <ul class="nav navbar-nav">
     <li><a href="<c:url value='/home'/>"> Home</a></li>
    <%--   <security:authorize access="isAnonymous()">
      
       <li><a href="<c:url value='/login1'/>">Login</a></li>
            <li><a href="<c:url value='/register'/>">Register</a></li>
            </security:authorize> --%>
             <li><a href="<c:url value='/Productdisplay'/>">Product Display</a></li>
            <li><a href="<c:url value='/category'/>">Category</a></li>
            <li><a href="<c:url value='/contactus'/>">ContactUs</a></li>
            <li><a href="<c:url value='/aboutus'/>">AboutUs</a></li>
            <li><a href="<c:url value='/Admin'/>">Admin</a></li>
            <security:authorize access="isAuthenticated()">
			<li><a href="logout"><font size="2">LogOut</font></a></li>
			</security:authorize>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <security:authorize access="isAnonymous()">
      <li><a href="<c:url value='/login1'/>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      
      <li><a href="<c:url value='/register'/>"><span class="glyphicon glyphicon-user">Register</span> </a></li>
       </security:authorize>
    </ul>
  </div>
</nav>
  


</body>
</html>
