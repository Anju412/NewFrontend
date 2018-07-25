<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<title>Supplier </title>
<body>
<br>

<c:if test="${flag}">
<form action="<c:url value="/updateSupplier"/>" method="post" enctype="multipart/form-data">
<table > 
	<tr>
		<td>Supplier Id</td>
		<td><input type="text" name="supId" value="${supplierData.suppId}"readonly/></td>
	<tr>
		<td>Supplier Name</td>
		<td><input type="text" name="supname" value="${supplierData.supName}"/></td>
	</tr>
	
	<tr>
		<td>Supplier Address</td>
		<td><input type="text" name="supaddr" value="${supplierData.supAddr}"/></td>
	</tr>
	
	<td>Supplier Image</td>
		<td><input type="file" name="simage"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center>
			<input type="submit" value="SUBMIT"/>
			</center>
		</td>
	</tr>
</table>

</c:if>
<div  class="container" style="border:2px solid black">
<c:if test="${!flag}">
<form action="InsertSupplier" method="post" enctype="multipart/form-data">

<table m.addAttribute("flag",flag); align="center" cellspacing="3" class="table">
 <tr bgcolor="LemonChiffon">
 	<td colspan="2"><center><h4><b>Manage Suppliers</b></center></td>
 </tr> 
	<tr>
		<td><b>Supplier Name</td>
		<td><input type="text" name="supname"/></td>
	</tr>
	
	<tr>
		<td><b>Supplier Address</td>
		<td><input type="text" name="supaddr"></td>
	</tr>
	
	<td><b>Supplier Image</td>
		<td><input type="file" name="simage"/></td>
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
</div>
<br>
<div class="container" style="border:2px solid black">
 <br>
  <table class="table table-hover">
    <thead>
      <tr bgcolor="LemonChiffon">
        <th><h4><b>Supplier Id</th>
        <th><h4><b>Supplier Name</th>
        <th><h4><b>Supplier Address</th>
        <th><h4><b>Supplier Image</th>
        <th><h4><b>Operation</th>     
      </tr>
    </thead>
</div>
	
	<c:forEach items="${supplierlist}" var="supplier">
	<tr>
		<td>${supplier.suppId}</td>
		<td>${supplier.supName}</td>
		<td>${supplier.supAddr}</td>
		<td><img height="80" width="80" src="/frontend/resources/images/${supplier.suppId}.jpg"></td>
	
		<td>
			<a href="<c:url value='/deleteSupplier/${supplier.suppId}'/>">Delete</a>
			<a href="<c:url value='/editSupplier/${supplier.suppId}'/>">Edit</a>
	</tr>
	</c:forEach>

</table>
</c:if>
</div>
<br>
</body>
<%@include file="footer.jsp" %>

</html>