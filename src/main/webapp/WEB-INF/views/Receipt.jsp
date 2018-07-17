<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>


<div class="container">

	<table class="table">
	
	<tr>
		<td colspan="2"><center><b>Receipt</b></center></td>
	</tr>
	
	<tr>
		<td colspan="2">Order Id</td>
		<td>ORD00${orderDetail.orderId}</td>
		<td colspan="2">Order Date</td>
		<td>${orderDetail.orderDate}</td>
	</tr>
	
	<tr>
		
		<td>Product Name</td>
		<td>Quantity</td>
		<td>Price</td>
		<td>Total price</td>
	</tr>
	
	<c:if test="${empty cartItems}" var="cartItem">
<tr><td colspan="5"><center>!!! Your Cart is Empty !!!</center></td></tr>
</c:if>

<c:if test="${not  empty cartItems}">
<c:forEach items="${cartItems }" var="cartItem">
<form action="<c:url value="/updateCartItem/${cartItem.cartItemId }"/>" method="get">

<tr>

<td>${cartItem.productName }</td>
<td>${cartItem.quantity }</td>
<td>${cartItem.price }</td>
<td>${cartItem.quantity * cartItem.price }</td>
</tr>
</form>
</c:forEach>
</c:if>

<tr bgcolor="orange">
	<td colspan="3">total Purchased Amount</td>
	<td colspan="2">${totalPurchaseAmount}/--</td>
</tr>

<tr bgcolor="cyan">
	<td colspan="5"><center><h4>!!!!Thanks For Shopping!!!!</h4></center></td>
</tr>

</table>