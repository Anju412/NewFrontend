<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>

<div class="container" style="border:4px solid black">
<table class="table">

<tr><h3><center><b>Product Details<center></h3></tr>


<tr>
	<td rowspan="9">
		<img src="<c:url value="/resources/images/${product.prodId}.jpg"/>" width="300" heigt="300" style="border:5px solid brown">
		</td>
		</tr>
<tr>
	<td><b>Product Id</td>
	<td>${product.prodId}</td>
	</tr>
		
<tr>
	<td><b>Product Name</td>
	<td>${product.prodName}</td>
	</tr>
	<tr>
	<tr>
	<td><b>Product Description</td>
	<td>${product.prodDesc}</td>
	</tr>
	<td><b>Price</td>
	<td>${product.price}</td>
	</tr>
		<tr>
	<td><b>Supplier Id</td>
	<td>${product.suppId}</td>
	</tr>
	<tr>
	<td><b>Category</td>
	<td>${categoryName}</td>
	</tr>
	<form action="<c:url value="/AddToCart/${product.prodId}"/>" method="get">	<tr>
	<td><b>Quantity</td>
	<td>
		<select name="quantity" class="form-control btn-block">
		<option value="1">1</option>
		<option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option>
		</select>
	
	</td>
	</tr>
	<tr>
	<td colspan="8" >
	<center>
	
	<input type="submit"  style="background-color:#4dff4d" value="AddToCart" class="btn btn-info btn-block" /></center>
	</td>
	</tr>
	</form>
</table>
</div>
<%@include file="footer.jsp" %>
</html>