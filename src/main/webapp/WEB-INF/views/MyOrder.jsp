<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>

<div class="container" style="border:5px solid black">
<table class="table">
<tr>
<td colspan="8"><center><h3><b><font color="brown">Your Order</h3></center>
<tr >
<td><b> SL # </td>
<td><b> Product Name</td>
<td><b> Quantity</td>
<td><b> Price</td>
<td><b> Total Price</td>

</tr>

<c:if test="${empty cartItems}" var="cartItem">
<tr><td colspan="8"><center>!!! Your Cart is Empty !!!</center></td></tr>
</c:if>

<c:if test="${not  empty cartItems}">
<c:forEach items="${cartItems }" var="cartItem">
<form action="<c:url value="/updateCartItem/${cartItem.cartItemId }"/>" method="get">
<tr>
<td></td>
<td>${cartItem.productName }</td>
<td><input type="text" value=" ${cartItem.quantity }"/></td>
<td>${cartItem.price }</td>
<td>${cartItem.quantity * cartItem.price }</td>
<td>

</td>
</tr>

</form>
</c:forEach>
</c:if>
<tr bgcolor="indigo">
<td colspan="6"><font color="white">Total Purchase Amount </td>
<td><font color="white">${totalPurchaseAmount }/--</td>
</tr>

<tr bgcolor="midnightblue">
<td colspan="6" ><a href="<c:url value="/continueShopping"/>" class="btn btn-info" style="background-color:black"><font color="white"><span class="glyphicon glyphicon-arrow-left"><b> Continue Shopping</a></td>
<td colspan="6"><a href="<c:url value="/payment"/>" class="btn btn-info" style="background-color: black"><font color="white"><b>Payment <span class="glyphicon glyphicon-arrow-right"></a></td>
</tr>
</table>
</div>
<br><br>
<%@include file="footer.jsp" %>
</html>