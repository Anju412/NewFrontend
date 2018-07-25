<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html> --%>
<%@include file="Admin.jsp" %>
<%@ page language="java" contentType="text/html" %>
<%-- <%@include file="Header.jsp" %> --%>
<%@ page isELIgnored="false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<title>Category </title>
<body>
<c:if test="${flag}">

<form action="<c:url value="/updateCoupon"/>" method="post">
 <table>
	
		<td>Coupon Name</td>
		<td><input type="text" name="couponName" value="${couponData.couponName}"/></td>
	</tr>
	
	<tr>
		<td>Coupon Value</td>
		<td><input type="text" name="couponValue" value="${couponData.couponValue}"/></td>
</tr>
	<tr>
		<td colspan="2">
			<center>
			<input type="submit" value="SUBMIT"/>
			</center>
		</td>
	</tr>
	
</table>

 </form>
</c:if>
<c:if test="${!flag}">
<div class="container ">
<div class="row">
<div class="col-md-5">

<form action="InsertCoupon" method="post" >


<table m.addAttribute("flag",flag); align="center" cellspacing="3" class="table">
 <tr bgcolor="pink">
	<legend class="text-center header">Manage Coupons</legend>
 </tr> 
 <tr>
		<td>Coupon Name</td>
		<td><input type="text" name="couponName"/></td>
	</tr>
	
	<tr>
		<td>Coupon Value</td>
		<td><input type="text" name="couponValue" /></td>
</tr>
	
	<tr>
		<td colspan="2">
			<center>
			<button type="submit" class="btn btn-primary btn-lg">Save</button>
			</center>
		</td>
	</tr>
	
</table>

</form>
</div>
<div class="col-md-7">

 
  <table class="table table-hover">
    <thead>
      <tr>
      
        <th>Coupon Name</th>
        <th>Coupon Value</th>
        <th>Operation</th>
      </tr>
    </thead>


	
	<c:forEach items="${couponlist}" var="coupon">
	<tr>
	
		<td>${coupon.couponName}</td>
		<td>${coupon.couponValue}</td>
		
		<td>
			<a href="<c:url value='/deleteCoupon/${coupon.couponName}'/>">Delete</a>
			<a href="<c:url value='/editCoupon/${coupon.couponName}'/>">Edit</a>
	</tr>
	</c:forEach>

</table>
</div>
</div>
</div>
</c:if>

</body>
</html>
</html>