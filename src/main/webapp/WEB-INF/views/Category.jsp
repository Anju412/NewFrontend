<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<title>Category </title>
<body>
<br>
<c:if test="${flag}">

<form action="<c:url value="/updateCategory"/>" method="post" enctype="multipart/form-data">
 <table>
	<tr>
		<td>Category Id</td>
		<td><input type="text" name="catId" value="${categoryData.categoryId}"readonly/></td>
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catname" value="${categoryData.categoryName}"/></td>
	</tr>
	
	<tr>
		<td>Category Decription</td>
		<td><input type="text" name="catDesc" value="${categoryData.categoryDesc}"/></td>
	</tr>
	<td>Category Image</td>
		<td><input type="file" name="cimage"/></td>
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
<div class="container" style="border:2px solid black">
<c:if test="${!flag}">
<form action="InsertCatgory" method="post" enctype="multipart/form-data">


<table m.addAttribute("flag",flag); align="center" cellspacing="3" class="table">
 <tr bgcolor="LemonChiffon">
 	<td colspan="2"><center><b><h4>Manage Categories</b></center></td>
 </tr> 
 
	<tr>
		<td><b>Category Name</td>
		<td><input type="text" name="catname"/></td>
	</tr>
	
	<tr>
		<td><b>Category Decription</td>
		<td><input type="text" name="catDesc"></td>
	</tr>
	<td><b>Category Image</td>
		<td><input type="file" name="cimage"/></td>
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
<!-- <hr>
 --><div class="container" style="border:2px solid black">
 
  <table class="table table-hover">
    <thead>
      <tr bgcolor="LemonChiffon">
        <th><h4><b>Category Id</th>
        <th><h4><b>Category Name</th>
        <th><h4><b>Category Desc</th>
        <th><h4><b>Category Image</th>
        <th><h4><b>Operation</th>
      </tr>
    </thead>
</div>
	
	<c:forEach items="${categorylist}" var="category">
	<tr>
		<td>${category.categoryId}</td>
		<td>${category.categoryName}</td>
		<td>${category.categoryDesc}</td>
		<td><img height="80" width="80" src="/frontend/resources/images/${category.categoryId}.jpg"></td>
		<td>
			<a href="<c:url value='/deleteCategory/${category.categoryId}'/>">Delete</a>
			<a href="<c:url value='/editCategory/${category.categoryId}'/>">Edit</a>
	</tr>
	</c:forEach>
</table>
</div>
</c:if>
</body>
<br><br>
<%@include file="footer.jsp" %>

</html>
