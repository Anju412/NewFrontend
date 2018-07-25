<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<body>
<br>

<%-- <c:if test="${flag}">
<form:form action="<c:url value='/UpdateProduct'/>" modelAttribute="product" method="post">
<table align="center" cellspacing="3">
	<tr bgcolor="pink">
		<center><td colspan="2">Product Manage</td></center>
	</tr>
	<tr>
		<td>Product Name</td>
		<td><form:input path="prodName"/></td>
	</tr>
	<tr>
		<td>Product Description</td>
		<td><form:input path="prodDesc"/></td>
	</tr>
	<tr>
		<td>Price</td>
		<td><form:input path="price"/></td>
	</tr>	 
	
	<tr>
		<td>Stock</td>
		<td><form:input path="stock"/></td>
	</tr>
	
	<tr>
		<td>Category</td>
			<td><form:select path="categoryId">
			<form:option value="0" label="--Select list--"/>
			<form:options items="${categoryList}"/>
			</form:select>
		</td>
	</tr>
	<tr>
		<td>Supplier</td>
		<td><form:select path="suppId">
		<form:option value="0" label="--Select list--"/>
			<form:options items="${supplierlist}"/>
			</form:select></td>
	</tr>
	<tr>
		<td>
			<center><input type="submit" value="Update"/></center>
		</td>
	</tr>
</table>
</form:form>
</c:if> --%>

<div  class="container" style="border:2px solid black">
<c:if test="${!flag}">

<form:form action="/frontend/ProductInsert" modelAttribute="product" method="post" enctype="multipart/form-data">

<table align="center" cellspacing="3" class="table">
	<tr bgcolor="LemonChiffon">
		<td colspan="2"><center><h4><b>Manage Products</b></center></td>
	</tr>
	
	<tr>
		<td><b>Product Name</td>
		<td><form:input path="prodName"/></td>
	</tr>
	
	<tr>
		<td><b>Product Description</td>
		<td><form:input path="prodDesc"/></td>
	</tr>
	
	<tr>
		<td><b>Price</td>
		<td><form:input path="price"/></td>
	</tr>	 
	
	<tr>
		<td><b>Stock</td>
		<td><form:input path="stock"/></td>
	</tr>
	<tr>
		<td><b>Category</td>
			<td><form:select path="categoryId">
			<form:option value="0" label="--Select list--"/>
			<form:options items="${categoryList}"/>
			</form:select>
		</td>
	</tr>
	<tr>
		<td><b>Supplier</td>
		<td><form:select path="suppId">
		<form:option value="0" label="--Select list--"/>
			<form:options items="${supplierlist}"/>
			</form:select></td>
	</tr>
	<tr>
		<td><b>Product Image</td>
		<td><form:input type="file" path="pimage"/></td>
	</tr>
	<tr>
		<td>
			<center><input type="submit" value="Save"/></center>
		</td>
	</tr>
</table>
</form:form>
</c:if>
</div>
<br><br>
<c:if test="${!flag}">
<div class="container" style="border:2px solid black">
 
  <table class="table table-hover">
    <thead>
      <tr bgcolor="LemonChiffon">
        <th><h4><b>Product Id</th>
        <th><h4><b>Product Name</th>
        <th><h4><b>Product Description</th>
        <th><h4><b>Price</th>
        <th><h4><b>Stock</th>
        <th><h4><b>Category</th>
        <th><h4><b>Supplier</th>
        <th><h4><b>Operation</th>
      </tr>
    </thead>
</div>
	
	<c:forEach items="${productList}" var="product">
	
	<tr>
		<td>${product.prodId}</td>
		<td>${product.prodName}</td>
		<td>${product.prodDesc}</td>
		<td>${product.price}</td>
		<td>${product.stock}</td>
		<td>${product.categoryId}</td>
		<td>${product.suppId}</td>
		<td>
			<a href="<c:url value='/deleteProduct/${product.prodId}'/>">Delete</a>
			<a href="<c:url value='/editProduct/${product.prodId}'/>">Edit</a>
</td>
</tr>
</c:forEach>
</table></div></c:if>
<br><br>
<%@include file="footer.jsp" %>

</body>